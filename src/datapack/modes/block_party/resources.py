
# Imports
from beet import BlockTag
from stewbeet.core import Mem, set_json_encoder

# The full block_party palette (order matters): white terracotta + white concrete, then the 15
# remaining coloured concretes.
OTHER_COLORS: tuple[str, ...] = (
	"orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
)
ALL: list[str] = ["minecraft:white_terracotta", "minecraft:white_concrete"] + [f"minecraft:{c}_concrete" for c in OTHER_COLORS]

# Each "not_<x>" tag is the full palette minus one entry.
EXCLUDE: dict[str, str] = {
	"not_white_terracotta": "minecraft:white_terracotta",
	"not_white_concrete": "minecraft:white_concrete",
	**{f"not_{c}": f"minecraft:{c}_concrete" for c in OTHER_COLORS},
}


def write_resources() -> None:
	""" Datapack resources owned by the block_party mode (palette block tags). """
	ns: str = Mem.ctx.project_id
	block_tags = Mem.ctx.data[ns].block_tags
	block_tags["block_party/all"] = set_json_encoder(BlockTag({"values": list(ALL)}))
	for name, excluded in EXCLUDE.items():
		block_tags[f"block_party/{name}"] = set_json_encoder(BlockTag({"values": [b for b in ALL if b != excluded]}))
