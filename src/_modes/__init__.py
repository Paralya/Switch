
# Imports
import stouputils as stp
from .definitions import write_modes_load_file


# Main function
@stp.measure_time(message="Generated modes load file")
def generate_all_modes():
	write_modes_load_file()

	# For each submodules in this directory import and run "write_mode" (dynamically)
	import importlib
	#TODO
	from .pitch_creep.main import write_mode
	write_mode()

