
# Imports
from python_datapack.utils.database_helper import *

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config["database"]

	# Load the real load function and tick the real tick function
	write_to_load_file(config, "function switch:load")
	write_to_tick_file(config, "function switch:tick")

	pass

