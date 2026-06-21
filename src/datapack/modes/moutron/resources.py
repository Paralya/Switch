
# Imports
from beet import BlockTag
from stewbeet.core import Mem, set_json_encoder

# Stained glass of every colour (used by moutron & panic_chase)
COLORS: tuple[str, ...] = (
	"white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
)


def write_resources() -> None:
	""" Datapack resources owned by the moutron mode. """
	Mem.ctx.data["switch"].block_tags["moutron/glass"] = set_json_encoder(BlockTag({
		"values": [f"{c}_stained_glass" for c in COLORS],
	}))
