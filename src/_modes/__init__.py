
# Imports
import importlib
from pathlib import Path

import stouputils as stp

from .definitions import write_modes_load_file


# Main function
@stp.measure_time(message="Generated modes files")
def generate_all_modes():
	write_modes_load_file()

	# Dynamically import and run "write_mode" for every submodule package in this directory
	# (does not depend on MODES: a mode generates even if commented out in the minigames list)
	package_dir: Path = Path(__file__).parent
	for entry in sorted(package_dir.iterdir()):
		if not entry.is_dir() or entry.name == "__pycache__":
			continue
		if not (entry / "main.py").is_file():
			continue

		module = importlib.import_module(f".{entry.name}.main", package=__package__)
		if hasattr(module, "write_mode"):
			module.write_mode()
