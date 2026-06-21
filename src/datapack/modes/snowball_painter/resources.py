
# Imports
from beet import BlockTag
from stewbeet.core import Mem, set_json_encoder

# Paintable surfaces: quartz bricks + every coloured wool / concrete powder / terracotta (no white).
COLORS: tuple[str, ...] = (
	"orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
)


def write_resources() -> None:
	""" Datapack resources owned by the snowball_painter mode. """
	values: list[str] = ["quartz_bricks"]
	for suffix in ("wool", "concrete_powder", "terracotta"):
		values += [f"{c}_{suffix}" for c in COLORS]
	Mem.ctx.data["switch"].block_tags["snowball_painter"] = set_json_encoder(BlockTag({"values": values}))
