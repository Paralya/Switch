
# Imports
import importlib
import pkgutil
import stouputils as stp

from .definitions import write_modes_load_file, MODES

# Main function
@stp.measure_time(message="Generated modes files")
def generate_all_modes():
	write_modes_load_file()

	# For each submodules in this directory import and run "write_mode" (dynamically)
	# TODO: do not depend on MODES
	for mode in MODES:
		mode_id = mode["id"]
		try:
			module = importlib.import_module(f".{mode_id}.main", package=__package__)
			if hasattr(module, "write_mode"):
				module.write_mode()

		# Skip packages without main.py
		except ModuleNotFoundError:
			pass

