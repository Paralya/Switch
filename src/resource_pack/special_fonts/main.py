
# Imports
from .utils import generate_few_textures, write_black_transition, write_final_file


# Main function
def main() -> None:

	# Generate all the fonts
	generate_few_textures()

	# Link to files
	write_black_transition()

	# Write the final file
	write_final_file()
	pass

