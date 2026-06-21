
# Imports
from beet import Advancement, BlockTag
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the rush_the_point mode. """
	switch = Mem.ctx.data["switch"]

	switch.advancements["rush_the_point/break_obsidian"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:tick",
			"conditions": {"player": [{
				"condition": "minecraft:entity_scores",
				"entity": "this",
				"scores": {"switch.temp.break_obsidian": {"min": 1}},
			}]},
		}},
		"rewards": {"function": "switch:modes/rush_the_point/advancements/break_obsidian"},
	}))

	switch.advancements["rush_the_point/killed_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_killed_entity",
			"conditions": {"entity": {"type": "minecraft:player"}},
		}},
		"rewards": {"function": "switch:modes/rush_the_point/advancements/killed_player"},
	}))

	switch.advancements["rush_the_point/right_click"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:using_item",
			"conditions": {"item": {"predicates": {"minecraft:custom_data": "{switch:{rtp_class:true}}"}}},
		}},
		"rewards": {"function": "switch:modes/rush_the_point/right_click"},
	}))

	switch.block_tags["rush_the_point/can_break"] = set_json_encoder(BlockTag({"values": [
		"smooth_sandstone_stairs", "cut_sandstone", "obsidian", "fire", "tnt",
	]}))
	switch.block_tags["rush_the_point/can_place_on"] = set_json_encoder(BlockTag({"values": [
		"smooth_sandstone_stairs", "blue_stained_glass", "stone_brick_stairs", "smooth_stone_slab",
		"polished_andesite", "red_stained_glass", "cyan_terracotta", "cut_sandstone", "iron_bars",
		"sea_lantern", "yellow_wool", "blue_wool", "red_wool", "fire", "tnt",
	]}))
