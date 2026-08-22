""" Prove that a build/ diff is exactly a set of path renames, and nothing else.

Renaming a generated function also rewrites every function calling it, so a plain content diff
cannot tell a rename apart from a behaviour change. This applies the announced renames to the
committed output, then requires the result to match the freshly built one file for file.

	python tools/check_rename_only.py switch:utils/lag=switch:devtools/lag

Run it before committing, while build/ holds the new output and HEAD still holds the old one.
"""
# Imports
import subprocess
import sys
from pathlib import Path

import stouputils as stp

# Constants
ROOT: Path = Path(__file__).resolve().parent.parent
""" Repository root, the working directory every command below runs from. """

DATAPACK: str = "build/datapack"
""" Generated datapack, the only tree whose function paths this checks. """

FROZEN_PREFIXES: tuple[str, ...] = ("switch:visible/", "switch:tutorial")
""" Paths that must never be renamed: players carry their progress under these advancement ids. """

MAX_LISTED_FILES: int = 20
""" How many offending paths to print before summarizing the rest. """

TEXT_SUFFIXES: tuple[str, ...] = (".mcfunction", ".json", ".mcmeta")
""" Files whose bytes carry function paths, and are therefore rewritten by a rename. """


# Classes
class RenameOnly:

	@staticmethod
	def normalize(content: bytes) -> bytes:
		""" Line endings of a text file, so a checkout convention never reads as a change.

		Args:
			content (bytes): Raw file content
		Returns:
			bytes: The content with LF line endings
		"""
		return content.replace(b"\r\n", b"\n")

	@staticmethod
	def committed_files() -> dict[str, bytes]:
		""" Every datapack file in HEAD, keyed by repository relative path.

		Returns:
			dict[str, bytes]: Path -> file content
		"""
		listing: str = subprocess.run(("git", "ls-tree", "-r", "HEAD", DATAPACK),
			cwd=ROOT, capture_output=True, text=True, check=False).stdout

		# One "<mode> blob <sha>\t<path>" line per file, read in a single cat-file pass
		blobs: list[tuple[str, str]] = []
		for line in listing.splitlines():
			metadata, _, path = line.partition("\t")
			if path.strip():
				blobs.append((metadata.split()[2], path.strip()))

		stream: bytes = subprocess.run(("git", "cat-file", "--batch"), cwd=ROOT, check=False,
			input="\n".join(sha for sha, _ in blobs).encode(), stdout=subprocess.PIPE).stdout

		files: dict[str, bytes] = {}
		offset: int = 0
		for _, path in blobs:
			header_end: int = stream.index(b"\n", offset)
			size: int = int(stream[offset:header_end].split()[2])
			start: int = header_end + 1
			files[path] = RenameOnly.normalize(stream[start:start + size])
			offset = start + size + 1
		return files

	@staticmethod
	def built_files() -> dict[str, bytes]:
		""" Every datapack file currently on disk, keyed by repository relative path.

		Returns:
			dict[str, bytes]: Path -> file content
		"""
		return {path.relative_to(ROOT).as_posix(): RenameOnly.normalize(path.read_bytes())
			for path in sorted((ROOT / DATAPACK).rglob("*")) if path.is_file()}

	@staticmethod
	def parse(arguments: list[str]) -> dict[str, str]:
		""" Read the announced renames from the command line.

		Args:
			arguments (list[str]): Pairs shaped "old=new", ex: "switch:utils/lag=switch:devtools/lag"
		Returns:
			dict[str, str]: Old prefix -> new prefix

		Examples:
			>>> RenameOnly.parse(["switch:a=switch:b"])
			{'switch:a': 'switch:b'}
		"""
		renames: dict[str, str] = {}
		for argument in arguments:
			old, _, new = argument.partition("=")
			renames[old] = new
		return renames

	@staticmethod
	def as_file_path(namespaced: str) -> str:
		""" Datapack file path of a namespaced function path.

		Args:
			namespaced (str): The function path, ex: "switch:utils/lag"
		Returns:
			str: The file path, ex: "build/datapack/data/switch/function/utils/lag"

		Examples:
			>>> RenameOnly.as_file_path("switch:utils/lag")
			'build/datapack/data/switch/function/utils/lag'
		"""
		namespace, _, rest = namespaced.partition(":")
		return f"{DATAPACK}/data/{namespace}/function/{rest}"

	@staticmethod
	def apply(files: dict[str, bytes], renames: dict[str, str]) -> dict[str, bytes]:
		""" Apply the renames to both the paths and the contents of the committed output.

		Args:
			files   (dict[str, bytes]): The committed output
			renames (dict[str, str]):   Old prefix -> new prefix
		Returns:
			dict[str, bytes]: What the output should look like after the renames
		"""
		renamed: dict[str, bytes] = {}
		for path, content in files.items():
			for old, new in renames.items():
				if path.endswith(TEXT_SUFFIXES):
					content = content.replace(old.encode(), new.encode())
				old_path, new_path = RenameOnly.as_file_path(old), RenameOnly.as_file_path(new)
				if path.startswith(old_path):
					path = new_path + path[len(old_path):]
			renamed[path] = content
		return renamed

	@staticmethod
	def report(label: str, paths: list[str]) -> None:
		""" Print a capped list of offending paths.

		Args:
			label (str):       What the paths have in common
			paths (list[str]): The offending paths
		"""
		stp.error(f"{len(paths)} {label}:")
		for path in sorted(paths)[:MAX_LISTED_FILES]:
			stp.error(f"  {path}")
		if len(paths) > MAX_LISTED_FILES:
			stp.error(f"  ... and {len(paths) - MAX_LISTED_FILES} more")

	@staticmethod
	def main() -> int:
		""" Compare the freshly built output with the committed one, modulo the announced renames.

		Returns:
			int: Process exit code, 0 when the diff is exactly the announced renames
		"""
		renames: dict[str, str] = RenameOnly.parse(sys.argv[1:])
		if not renames:
			stp.error('usage: python tools/check_rename_only.py "old:path=new:path" [...]')
			return 1

		frozen: list[str] = [old for old in renames if old.startswith(FROZEN_PREFIXES)]
		if frozen:
			RenameOnly.report("frozen path(s) may never be renamed, players would lose their progress", frozen)
			return 1

		expected: dict[str, bytes] = RenameOnly.apply(RenameOnly.committed_files(), renames)
		actual: dict[str, bytes] = RenameOnly.built_files()

		missing: list[str] = sorted(set(expected) - set(actual))
		added: list[str] = sorted(set(actual) - set(expected))
		changed: list[str] = sorted(path for path in set(expected) & set(actual) if expected[path] != actual[path])

		if not (missing or added or changed):
			stp.info(f"{len(actual)} file(s) match the committed output after applying {len(renames)} rename(s)")
			return 0

		if missing:
			RenameOnly.report("file(s) expected after the renames but absent from the build", missing)
		if added:
			RenameOnly.report("file(s) built but not explained by the renames", added)
		if changed:
			RenameOnly.report("file(s) whose content changed beyond the renames", changed)
		return 1


if __name__ == "__main__":
	sys.exit(RenameOnly.main())

