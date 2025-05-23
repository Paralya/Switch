
# Imports
import stouputils as stp
from user.special_fonts.utils import *

# Main function
@stp.measure_time(stp.progress, "Generated all the special fonts")
def main(config: dict) -> None:
	SharedMemory.config = config
	build_rp = config["build_resource_pack"]
	for attr in [attr for attr in dir(SharedMemory) if str(attr).endswith("_PATH")]:
		setattr(SharedMemory, attr, f"{build_rp}/{getattr(SharedMemory, attr)}")

	# Generate all the fonts
	generate_few_textures()

	# Link to files
	write_black_transition()

	# Write the final file
	write_final_file()
	pass

