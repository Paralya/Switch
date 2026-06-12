
# Imports
import stouputils as stp
from .definitions import write_modes_load_file


# Main function
@stp.measure_time(message="Generated modes load file")
def generate_all_modes():
	write_modes_load_file()

