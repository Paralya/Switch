
# Imports
from python_datapack.utils.database_helper import *
from user._important.modes import main as write_modes_load_file
from user.misc_links.random_loot_table import main as random_loot_table
from user.misc_links.note_block_studio import main as note_block_studio
from user.misc_links.memory_mine import main as memory_mine
from user.survival_maps.main import main as generate_survival_maps
from user.advancements.main import main as automatic_advancements
from user.shop.main import main as shop

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config["database"]

	# Load the real load function and tick the real tick function
	write_to_load_file(config, "function switch:load")
	write_to_tick_file(config, "function switch:tick")
	write_to_file(f"{config['build_datapack']}/pack.mcmeta", super_json_dump({"filter":{"block":[{"namespace":"minecraft","path":"advancement"}]}}))

	# Generate the important stuff
	write_modes_load_file(config)

	# Call all links
	random_loot_table(config)
	note_block_studio(config)
	memory_mine(config)
	generate_survival_maps(config)
	automatic_advancements(config)

	# Generate the shops
	shop(config)

