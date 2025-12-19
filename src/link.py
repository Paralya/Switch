
# Imports
import stouputils as stp
from stewbeet.core import Context, official_lib_used, write_load_file, write_tick_file

from ._important.modes import main as write_modes_load_file
from .advancements.main import main as automatic_advancements
from .misc_links.memory_mine import main as memory_mine
from .misc_links.note_block_studio import main as note_block_studio
from .misc_links.random_loot_table import main as random_loot_table
from .misc_links.starting_pop_ups import main as starting_pop_ups
from .shop.main import main as shop
from .special_fonts.main import main as special_fonts
from .survival_maps.main import main as generate_survival_maps


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
@stp.handle_error
@stp.measure_time(message="Execution time of 'src.link'")
def beet_default(ctx: Context) -> None:

	# Load the real load function and tick the real tick function
	write_load_file("function switch:load")
	write_tick_file("function switch:tick")
	ctx.data.mcmeta.data["filter"] = {"block": [
		{"namespace": "minecraft", "path": "advancement"},
		{"namespace": "grappling_hook", "path": "advancement/.*first_guide.*"}
	]}

	# Generate the important stuff
	write_modes_load_file()

	# Call all links
	starting_pop_ups()
	random_loot_table()
	note_block_studio()
	memory_mine()
	generate_survival_maps()
	automatic_advancements()
	shop()
	special_fonts()

	# Force enable dump module from Bookshelf (https://docs.mcbookshelf.dev/en/latest/modules/dump.html)
	official_lib_used("bs.dump")

