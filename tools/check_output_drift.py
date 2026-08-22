""" Golden-file guard: rebuild the project and fail if the tracked build/ output moved.

Any purely structural refactoring must leave the generated output identical. Run this after moving
code around: a real diff means the refactor changed behaviour.

Archives are compared entry by entry rather than byte by byte, because the order in which files
land in the zip follows the order the build creates them. A pure reordering carries no meaning for
the game, so it is reported and tolerated, while a single changed entry still fails.
"""
# Imports
import hashlib
import subprocess
import sys
import zipfile
from io import BytesIO
from pathlib import Path

import stouputils as stp

# Constants
ROOT: Path = Path(__file__).resolve().parent.parent
""" Repository root, the working directory every command below runs from. """

OUTPUT_FOLDER: str = "build"
""" Tracked folder holding the generated datapack and resource pack. """

MAX_LISTED_FILES: int = 25
""" How many drifted paths to print before summarizing the rest. """

DERIVED_FILES: frozenset[str] = frozenset({"build/sha1_hashes.json"})
""" Files computed from the archives, which legitimately move when an archive is reordered. """


# Classes
class OutputDrift:

	@staticmethod
	def run(*args: str) -> subprocess.CompletedProcess[str]:
		""" Run a command from the repository root and capture its output.

		Args:
			*args (str): Command and its arguments, ex: "git", "status"
		Returns:
			subprocess.CompletedProcess[str]: The completed process, never raising on a non-zero code
		"""
		return subprocess.run(args, cwd=ROOT, capture_output=True, text=True, check=False)

	@staticmethod
	def drifted_paths() -> list[str]:
		""" List every tracked or untracked path under the output folder that differs from HEAD.

		Returns:
			list[str]: Porcelain paths, ex: ["build/datapack/data/switch/function/tick.mcfunction"]
		"""
		status: str = OutputDrift.run("git", "status", "--porcelain", "--", OUTPUT_FOLDER).stdout
		return [line[3:].strip().strip('"') for line in status.splitlines() if line.strip()]

	@staticmethod
	def build() -> bool:
		""" Rebuild the project with the StewBeet CLI.

		Returns:
			bool: Whether the build succeeded
		"""
		build: subprocess.CompletedProcess[str] = OutputDrift.run("stewbeet")
		if build.returncode != 0:
			stp.error(f"Build failed with exit code {build.returncode}:\n{build.stdout}\n{build.stderr}")
		return build.returncode == 0

	@staticmethod
	def archive_entries(data: bytes) -> dict[str, str]:
		""" Digest of every entry of a zip, keyed by entry name.

		Args:
			data (bytes): The archive
		Returns:
			dict[str, str]: Entry name -> sha1 of its content
		"""
		with zipfile.ZipFile(BytesIO(data)) as archive:
			return {name: hashlib.sha1(archive.read(name)).hexdigest() for name in archive.namelist()}

	@staticmethod
	def reordered_only(path: str) -> bool:
		""" Whether an archive holds the same entries as in HEAD, in a different order.

		Args:
			path (str): Repository relative path of the archive
		Returns:
			bool: True when nothing but the entry order changed
		"""
		committed: subprocess.CompletedProcess[bytes] = subprocess.run(
			("git", "show", f"HEAD:{path}"), cwd=ROOT, capture_output=True, check=False)
		if committed.returncode != 0:
			return False
		return OutputDrift.archive_entries(committed.stdout) == OutputDrift.archive_entries((ROOT / path).read_bytes())

	@staticmethod
	def real_drift(drifted: list[str]) -> tuple[list[str], list[str]]:
		""" Split drifted paths into meaningful changes and tolerated archive reorderings.

		Args:
			drifted (list[str]): Every path reported by git
		Returns:
			tuple[list[str], list[str]]: The meaningful changes, then the reordered archives
		"""
		meaningful: list[str] = []
		reordered: list[str] = []
		for path in drifted:
			if path.endswith(".zip") and OutputDrift.reordered_only(path):
				reordered.append(path)
			else:
				meaningful.append(path)

		# A hash file only follows its archives: it stands on its own only when nothing was reordered
		if reordered:
			meaningful = [path for path in meaningful if path not in DERIVED_FILES]
		return meaningful, reordered

	@staticmethod
	def main() -> int:
		""" Rebuild, then compare the output folder against HEAD.

		Returns:
			int: Process exit code, 0 when the output is unchanged
		"""
		# A dirty output folder before building makes the comparison meaningless
		if OutputDrift.drifted_paths():
			stp.error(f"'{OUTPUT_FOLDER}/' already differs from HEAD before building, commit or restore it first")
			return 1

		if not OutputDrift.build():
			return 1

		drifted: list[str] = OutputDrift.drifted_paths()
		if not drifted:
			stp.info(f"No drift: '{OUTPUT_FOLDER}/' is identical to HEAD")
			return 0

		meaningful, reordered = OutputDrift.real_drift(drifted)
		for path in reordered:
			stp.warning(f"{path} holds the same entries as HEAD in a different order, content unchanged")

		if not meaningful:
			stp.info(f"No drift: '{OUTPUT_FOLDER}/' carries the same content as HEAD")
			return 0

		stp.error(f"{len(meaningful)} file(s) drifted in '{OUTPUT_FOLDER}/':")
		for path in meaningful[:MAX_LISTED_FILES]:
			stp.error(f"  {path}")
		if len(meaningful) > MAX_LISTED_FILES:
			stp.error(f"  ... and {len(meaningful) - MAX_LISTED_FILES} more")
		return 1


if __name__ == "__main__":
	sys.exit(OutputDrift.main())

