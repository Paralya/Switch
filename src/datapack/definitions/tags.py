
# Imports
from beet import BlockTag, ItemTag
from stewbeet.core import Mem, set_json_encoder

# Mining tools (item tag)
TOOLS: list[str] = [
	f"minecraft:{material}_{tool}"
	for material in ("wooden", "stone", "iron", "golden", "diamond", "netherite")
	for tool in ("pickaxe", "axe", "shovel", "hoe")
] + ["minecraft:shears"]

# Coloured concrete jump blocks (+ a couple of extra blocks)
JUMP_COLORS: list[str] = [
	"white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
]
JUMPS: list[str] = [f"{color}_concrete" for color in JUMP_COLORS] + ["dripstone_block", "bricks"]


def write_tags() -> None:
	""" Build the shared/generic block & item tags explicitly under the switch namespace. """
	ns: str = Mem.ctx.project_id
	switch = Mem.ctx.data[ns]

	switch.item_tags["tools"] = set_json_encoder(ItemTag({"values": TOOLS}))
	switch.item_tags["jumps"] = set_json_encoder(ItemTag({"values": JUMPS}))

	switch.block_tags["out_of_map"] = set_json_encoder(BlockTag({"values": ["black_concrete", "white_concrete", "moving_piston"]}))
	switch.block_tags["not_spreadplayers"] = set_json_encoder(BlockTag({"values": [
		"minecraft:barrier",
		"minecraft:powder_snow",
		"minecraft:moving_piston",
		"minecraft:tripwire",
		"minecraft:light",
		"minecraft:structure_void",
		"#minecraft:air",
	]}))

