
# Imports
import stouputils as stp
from stewbeet.core import Context, Mem, official_lib_used, write_load_file, write_tick_file

from .datapack.advancements.main import main as automatic_advancements
from .datapack.cinematic.main import main as cinematic
from .datapack.engine.main import main as engine
from .datapack.maps.main import main as maps
from .datapack.misc_links.note_block_studio import main as note_block_studio
from .datapack.misc_links.random_loot_table import main as random_loot_table
from .datapack.misc_links.starting_pop_ups import main as starting_pop_ups
from .datapack.modes import generate_all_modes
from .datapack.modes.memory_mine.zone_particles import write_zone_particles as memory_mine
from .datapack.music.main import main as music
from .datapack.npc.main import main as npc
from .datapack.player.main import main as player
from .datapack.profiling.main import main as profiling
from .datapack.root.main import main as root
from .datapack.shop.main import main as shop
from .datapack.stats.main import main as stats
from .datapack.survival_maps.main import main as generate_survival_maps
from .datapack.translations.main import main as shared_translations
from .datapack.utils.main import main as utils
from .resource_pack.special_fonts.main import main as special_fonts


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
@stp.handle_error
@stp.measure_time(message="Execution time of 'src.link'")
def beet_default(ctx: Context) -> None:

	# Load the real load function and tick the real tick function
	ns: str = Mem.ctx.project_id
	write_load_file(f"function {ns}:load")
	write_tick_file(f"function {ns}:tick")
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

