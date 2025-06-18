
# Imports
import stouputils as stp

from .utils import *


# Main function
@stp.measure_time(stp.progress, "Generated all the special fonts")
def main() -> None:

	# Generate all the fonts
	generate_few_textures()

	# Link to files
	write_black_transition()

	# Write the final file
	write_final_file()
	pass

