""" Report every datapack function written by more than one emitter during the build.

write_function() appends by default, so two emitters targeting the same path merge silently in
call order. That is a legitimate builder pattern in a few places and a landmine everywhere else.
This runs the pipeline in a throwaway output folder and fails on any merge not declared below.
"""
# Imports
import shutil
import sys
import tempfile
from collections import Counter
from fnmatch import fnmatch
from pathlib import Path
from typing import Any, ClassVar

import stewbeet
import stouputils as stp
from beet import Function, run_beet
from stewbeet.core.utils.io import functions as functions_module  # pyright: ignore[reportMissingTypeStubs]
from stewbeet.utils import get_project_config

# Constants
DECLARED_MERGES: tuple[str, ...] = (
	"switch:shop/*",
	"switch:player/username_change/update_shops",
	"switch:engine/pop_ups/schedule",
	"switch:modes/*/give_items",
	"switch:modes/sheepwars/team_and_give",
	"switch:modes/build_battle/preparation/themes_list",
	"switch:load",
	"switch:v*/*",
)
""" Function paths intentionally built by several successive appends, as fnmatch patterns.

The shop family accumulates one block per upgrade, pop_ups/schedule one revoke per mode and
language, and the give_items family is a hand-written body completed by the Kit renderer.
The switch:load and switch:v*/* entries belong to StewBeet's versioned loading scheme.
"""

SKIPPED_PLUGINS: tuple[str, ...] = ("archive", "copy_to_destination", "compute_sha1", "merge_smithed_weld")
""" Pipeline steps dropped for the report run: they only package and ship the output. """


# Classes
class MergedFunctions:

	WRITES: ClassVar[Counter[str]] = Counter()
	""" How many times each function path was written during the build. """

	original = staticmethod(functions_module.write_function)
	""" The unpatched StewBeet write_function, kept so the patch can delegate to it. """

	@staticmethod
	def patched_write_function(path: str, content: str, *args: Any, **kwargs: Any) -> Function | None:
		""" Count the write, then delegate to the real implementation.

		Args:
			path    (str): The function path, ex: "switch:modes/tnt_run/tick"
			content (str): The function body
		Returns:
			Function | None: Whatever StewBeet returned
		"""
		MergedFunctions.WRITES[path.removesuffix(".mcfunction")] += 1
		return MergedFunctions.original(path, content, *args, **kwargs)

	@staticmethod
	def build_into(output: Path) -> None:
		""" Run the project pipeline, writing to a throwaway output folder.

		Args:
			output (Path): Folder receiving the generated packs, never the tracked build/
		"""
		config = get_project_config()
		config.output = str(output)
		config.pipeline = [step for step in config.pipeline
			if not any(skipped in str(step) for skipped in SKIPPED_PLUGINS)]

		# The project cache holds the decoded assets, without it the run re-downloads everything
		with run_beet(config, cache=True):
			pass

	@staticmethod
	def is_declared(path: str) -> bool:
		""" Whether a merged path is a known, intentional builder.

		Args:
			path (str): The function path, ex: "switch:shop/sheepwars"
		Returns:
			bool: True when the path matches one of DECLARED_MERGES

		Examples:
			>>> MergedFunctions.is_declared("switch:shop/sheepwars")
			True
			>>> MergedFunctions.is_declared("switch:modes/tnt_run/tick")
			False
		"""
		return any(fnmatch(path, pattern) for pattern in DECLARED_MERGES)

	@staticmethod
	def main() -> int:
		""" Build, then report every function path written more than once.

		Returns:
			int: Process exit code, 0 when every merge is declared
		"""
		functions_module.write_function = MergedFunctions.patched_write_function
		stewbeet.write_function = MergedFunctions.patched_write_function

		output: Path = Path(tempfile.mkdtemp(prefix="switch_merge_report_"))
		try:
			MergedFunctions.build_into(output)
		finally:
			shutil.rmtree(output, ignore_errors=True)

		merged: dict[str, int] = {path: count for path, count in MergedFunctions.WRITES.items() if count > 1}
		undeclared: dict[str, int] = {path: count for path, count in merged.items() if not MergedFunctions.is_declared(path)}

		stp.info(f"{sum(MergedFunctions.WRITES.values())} writes over {len(MergedFunctions.WRITES)} distinct paths")
		stp.info(f"{len(merged)} merged path(s), {len(merged) - len(undeclared)} declared")

		if not undeclared:
			return 0

		stp.error(f"{len(undeclared)} undeclared merge(s): add merge=True at the call site, or declare the path")
		for path, count in sorted(undeclared.items(), key=lambda item: -item[1]):
			stp.error(f"  {count}x  {path}")
		return 1


if __name__ == "__main__":
	sys.exit(MergedFunctions.main())

