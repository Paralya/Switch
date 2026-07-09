
# Imports
from beet import ItemTag
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the spectres_game mode. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].item_tags["spectres_game"] = set_json_encoder(ItemTag({"values": [
		"minecraft:iron_sword",
		"minecraft:iron_helmet",
		"minecraft:iron_chestplate",
		"minecraft:iron_leggings",
		"minecraft:iron_boots",
		"minecraft:diamond_helmet",
		"minecraft:diamond_chestplate",
		"minecraft:diamond_leggings",
		"minecraft:diamond_boots",
	]}))
