
# Imports
import stouputils as stp
from python_datapack.constants import official_lib_used
from python_datapack.utils.io import write_file, write_load_file, write_tick_file

from user._important.modes import main as write_modes_load_file
from user.advancements.main import main as automatic_advancements
from user.misc_links.memory_mine import main as memory_mine
from user.misc_links.note_block_studio import main as note_block_studio
from user.misc_links.random_loot_table import main as random_loot_table
from user.shop.main import main as shop
from user.special_fonts.main import main as special_fonts
from user.survival_maps.main import main as generate_survival_maps


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
@stp.handle_error
def main(config: dict) -> None:

	# Load the real load function and tick the real tick function
	write_load_file(config, "function switch:load")
	write_tick_file(config, "function switch:tick")
	write_file(f"{config['build_datapack']}/pack.mcmeta", stp.super_json_dump(
		{"filter":{"block":[{"namespace":"minecraft","path":"advancement"},{"namespace":"grappling_hook","path":"advancement/.*first_guide.*"}]}}
	))

	# Generate the important stuff
	write_modes_load_file(config)

	# Call all links
	random_loot_table(config)
	note_block_studio(config)
	memory_mine(config)
	generate_survival_maps(config)
	automatic_advancements(config)
	shop(config)
	special_fonts(config)

	# Force enable dump module from Bookshelf (https://docs.mcbookshelf.dev/en/latest/modules/dump.html)
	official_lib_used("bs.dump")


