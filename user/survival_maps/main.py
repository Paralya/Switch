
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from user.survival_maps.definitions import *
from user.survival_maps.utils import *

# Main function
@stp.measure_time(stp.progress, "Generated the survival maps")
def main(config: dict) -> None:

	# Generate the folders for the survival maps
	generate_folders_for_survival_maps(config)

	# Generate the remaining files
	generate_door_files(config)
	generate_regenerate_every_maps_files(config)
	generate_load_file(config)
	generate_regenerate_map_file(config)
	generate_resume_regeneration_file(config)
	generate_spread_one_player_file(config)

	# For each map, note what modes use it
	generate_map_usage_file(config)

