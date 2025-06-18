
# Imports
import stouputils as stp

from .definitions import generate_folders_for_survival_maps
from .utils import (
	generate_door_files,
	generate_load_file,
	generate_map_usage_file,
	generate_regenerate_every_maps_files,
	generate_regenerate_map_file,
	generate_resume_regeneration_file,
	generate_spread_one_player_file,
)


# Main function
@stp.measure_time(stp.progress, "Generated the survival maps")
def main() -> None:

	# Generate the folders for the survival maps
	generate_folders_for_survival_maps()

	# Generate the remaining files
	generate_door_files()
	generate_regenerate_every_maps_files()
	generate_load_file()
	generate_regenerate_map_file()
	generate_resume_regeneration_file()
	generate_spread_one_player_file()

	# For each map, note what modes use it
	generate_map_usage_file()

