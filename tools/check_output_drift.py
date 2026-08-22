""" Golden-file guard: rebuild the project and fail if the tracked build/ output moved.

Any purely structural refactoring must leave the generated output byte for byte identical.
Run this after moving code around: a non-empty diff means the refactor changed behaviour.
"""
# Imports
import subprocess
import sys
from pathlib import Path

import stouputils as stp

# Constants
ROOT: Path = Path(__file__).resolve().parent.parent
""" Repository root, the working directory every command below runs from. """

OUTPUT_FOLDER: str = "build"
""" Tracked folder holding the generated datapack and resource pack. """

MAX_LISTED_FILES: int = 25
""" How many drifted paths to print before summarizing the rest. """


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

		stp.error(f"{len(drifted)} file(s) drifted in '{OUTPUT_FOLDER}/':")
		for path in drifted[:MAX_LISTED_FILES]:
			stp.error(f"  {path}")
		if len(drifted) > MAX_LISTED_FILES:
			stp.error(f"  ... and {len(drifted) - MAX_LISTED_FILES} more")
		return 1


if __name__ == "__main__":
	sys.exit(OutputDrift.main())

