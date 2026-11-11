
# Imports
from .utils import generate_few_textures, write_final_file


# Main function
def main() -> None:

	# Generate all the fonts
	generate_few_textures()

	# Write the final file
	write_final_file()

