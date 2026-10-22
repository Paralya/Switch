
# List of the maps that have been generated
generated_maps: list[str] = []
survival_maps: list[str] = []

# Constants
class SharedMemory:
	PRINT_PROGRESS: bool = False        # If True, details about the files generation will be printed
	NB_SPREAD_PLAYERS: int = 24         # Number of times to try to spread the players
	BLOCKS_PER_DIVISION: int = 3200     # Number of blocks per division (for the /clone in calculate_divider())
	DOOR_BLOCKS_PER_SECOND: int = 5000  # Number of door blocks per second (for the /clone in calculate_divider())

