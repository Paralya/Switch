
# Imports
import stouputils as stp
from stewbeet.core import Context, official_lib_used, write_load_file, write_tick_file

from ._modes import generate_all_modes
from .advancements.main import main as automatic_advancements
from .cinematic.main import main as cinematic
from .engine.main import main as engine
from .misc_links.memory_mine import main as memory_mine
from .misc_links.note_block_studio import main as note_block_studio
from .misc_links.random_loot_table import main as random_loot_table
from .misc_links.starting_pop_ups import main as starting_pop_ups
from .maps.main import main as maps
from .music.main import main as music
from .npc.main import main as npc
from .player.main import main as player
from .profiling.main import main as profiling
from .root.main import main as root
from .shop.main import main as shop
from .special_fonts.main import main as special_fonts
from .stats.main import main as stats
from .survival_maps.main import main as generate_survival_maps
from .translations.main import main as shared_translations
from .utils.main import main as utils


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

	# Generate all modes related logics
	generate_all_modes()

	# Call all links
	shared_translations()
	root()
	utils()
	maps()
	music()
	npc()
	cinematic()
	stats()
	engine()
	player()
	profiling()
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

