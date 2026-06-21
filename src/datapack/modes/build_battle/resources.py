
# Imports
from beet import BlockTag
from beet.contrib.worldgen import Dimension
from stewbeet.core import Mem, set_json_encoder

from ..common import register_structures


def write_resources() -> None:
	""" Datapack resources owned by the build_battle mode. """
	switch = Mem.ctx.data["switch"]

	# Flat-void dimension the build_battle plots live in (Dimension type registered in load_datapack_json)
	switch[Dimension]["build_battle"] = set_json_encoder(Dimension({
		"type": "minecraft:overworld",
		"generator": {
			"type": "minecraft:flat",
			"settings": {
				"biome": "minecraft:the_void",
				"lakes": False,
				"features": False,
				"layers": [],
				"structure_overrides": [],
			},
		},
	}))

	# Blocks players are not allowed to build on / that count as "ground"
	switch.block_tags["build_battle_antiground"] = set_json_encoder(BlockTag({"values": [
		"#minecraft:all_signs", "#shulker_boxes", "chest", "ender_chest", "barrel",
		"calibrated_sculk_sensor", "campfire", "dragon_egg", "furnace", "blast_furnace",
		"player_head", "smoker", "soul_campfire", "sculk_sensor", "sculk_shrieker",
		"spawner", "stonecutter", "respawn_anchor",
	]}))

	# Binary structure placed for the build_battle plot
	register_structures("build_battle")
