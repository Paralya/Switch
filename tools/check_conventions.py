""" Enforce the architectural rules that ruff and pyright cannot express.

Static only: reads the sources, never builds. The build based guards live in
check_output_drift.py and report_merged_functions.py.
"""
# Imports
import ast
import re
import sys
from pathlib import Path

import stouputils as stp

# Constants
SRC: Path = Path(__file__).resolve().parent.parent / "src"
""" Root of the project sources. """

MODES: Path = SRC / "datapack" / "modes"
""" Folder holding one package per minigame. """

MAX_LINES: int = 300
""" A file past this length becomes a package, so that finding things stays a matter of folders. """

LONG_FILE_EXCEPTIONS: tuple[str, ...] = ("datapack/modes/*/main.py", "datapack/modes/catalogue.py")
""" Files allowed to grow past MAX_LINES, as posix glob patterns relative to src/.

Both are single tables read with Ctrl+F: a mode's main.py holds all of that game's logic, and the
catalogue holds every mode declaration. Splitting either would only add folders to search through.
"""

LONG_FILE_DEBT: frozenset[str] = frozenset({
	"datapack/cinematic/main.py",
	"datapack/engine/main.py",
	"datapack/kits/model.py",
	"datapack/maps/main.py",
	"datapack/player/jump_timer.py",
	"datapack/player/layout.py",
	"datapack/player/main.py",
	"datapack/player/practice.py",
	"datapack/player/translations.py",
	"datapack/root/main.py",
	"datapack/shop/utils.py",
	"datapack/stats/main.py",
	"datapack/maps/generation/utils.py",
	"resource_pack/shaders.py",
})
""" Files already past MAX_LINES, to be split into packages.

This ledger may only shrink: a file leaving it must be removed from here, and no file may be
added. It exists so the rule can be enforced today instead of after the whole split is done.
"""

MODEL_FILES: tuple[str, ...] = ("datapack/modes/spec.py",)
""" Files that describe the domain and must stay free of untyped containers. """

UNTYPED_NAMES: frozenset[str] = frozenset({"Any", "JsonDict", "JsonList"})
""" Containers that defeat the type checker, banned from the model files. """

DOWNWARD_IMPORT: re.Pattern[str] = re.compile(r"^\s*from\s+\.+modes\.([a-z0-9_]+)\.", re.MULTILINE)
""" Import of a specific mode from outside the modes package, ex: `from ..modes.spleef.shop import`. """


# Classes
class Conventions:

	@staticmethod
	def python_files() -> list[Path]:
		""" Every source file of the project.

		Returns:
			list[Path]: Paths to each .py file under src/
		"""
		return sorted(path for path in SRC.rglob("*.py") if "__pycache__" not in path.parts)

	@staticmethod
	def relative(path: Path) -> str:
		""" Path of a source file relative to src/, with forward slashes.

		Args:
			path (Path): The file
		Returns:
			str: The relative path, ex: "datapack/modes/tnt_run/main.py"
		"""
		return path.relative_to(SRC).as_posix()

	@staticmethod
	def check_length() -> list[str]:
		""" No file grows past MAX_LINES, outside of the documented exceptions.

		Returns:
			list[str]: One message per offending file
		"""
		problems: list[str] = []
		for path in Conventions.python_files():
			relative: str = Conventions.relative(path)
			if any(Path(relative).match(pattern) for pattern in LONG_FILE_EXCEPTIONS):
				continue
			length: int = len(path.read_text(encoding="utf-8").splitlines())
			if length > MAX_LINES and relative not in LONG_FILE_DEBT:
				problems.append(f"{relative} is {length} lines, split it into a package (limit {MAX_LINES})")
			elif length <= MAX_LINES and relative in LONG_FILE_DEBT:
				problems.append(f"{relative} is now {length} lines, remove it from LONG_FILE_DEBT")
		return problems

	@staticmethod
	def check_model_purity() -> list[str]:
		""" The model files describe data with real types, never with untyped containers.

		Returns:
			list[str]: One message per offending name
		"""
		problems: list[str] = []
		for relative in MODEL_FILES:
			source: str = (SRC / relative).read_text(encoding="utf-8")
			for node in ast.walk(ast.parse(source)):
				if isinstance(node, ast.Name) and node.id in UNTYPED_NAMES:
					problems.append(f"{relative}:{node.lineno} uses '{node.id}', the model must stay fully typed")
		return problems

	@staticmethod
	def check_no_downward_import() -> list[str]:
		""" No subsystem imports a named minigame: it consumes the registry instead.

		Returns:
			list[str]: One message per offending import
		"""
		problems: list[str] = []
		for path in Conventions.python_files():
			if MODES in path.parents:
				continue
			for mode in DOWNWARD_IMPORT.findall(path.read_text(encoding="utf-8")):
				problems.append(
					f"{Conventions.relative(path)} imports mode '{mode}' directly, "
					f"consume the registry so adding a mode stays a one folder change")
		return problems

	@staticmethod
	def main() -> int:
		""" Run every convention check.

		Returns:
			int: Process exit code, 0 when the sources follow the rules
		"""
		problems: list[str] = (
			Conventions.check_length() + Conventions.check_model_purity() + Conventions.check_no_downward_import())
		if not problems:
			stp.info(f"{len(Conventions.python_files())} source file(s) follow the conventions")
			return 0

		stp.error(f"{len(problems)} convention problem(s):")
		for problem in problems:
			stp.error(f"  {problem}")
		return 1


if __name__ == "__main__":
	sys.exit(Conventions.main())

