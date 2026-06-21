
# Imports
from typing import Any

from beet import BlockTag, ItemModifier, LootTable, Predicate
from stewbeet.core import Mem, set_json_encoder

from ..common import register_structures


def holding_predicate(flag: str) -> dict[str, Any]:
	""" entity_properties predicate: holding a glassrunner item flagged in custom_data. """
	return {
		"condition": "minecraft:entity_properties",
		"entity": "this",
		"predicate": {"equipment": {"mainhand": {"predicates": {
			"minecraft:custom_data": f"{{\"glassrunner\":{{\"{flag}\":true}}}}",
		}}}},
	}


def bridge_loot(flag: str, name: str, color: str) -> dict[str, Any]:
	""" A snowball 'glass bridge' item loot table. """
	return {"pools": [{"rolls": 1, "bonus_rolls": 0, "entries": [{
		"type": "minecraft:item",
		"name": "minecraft:snowball",
		"functions": [{"function": "minecraft:set_components", "components": {
			"minecraft:custom_data": {"glassrunner": {"glass_bridge": True, flag: True}},
			"minecraft:item_name": f"{{\"text\":\"{name}\",\"color\":\"{color}\",\"italic\":false}}",
		}}],
	}]}]}


def bridge_count_loot(value: str, count: int) -> dict[str, Any]:
	""" A loot table giving N copies of another glass-bridge loot table. """
	return {"pools": [{"rolls": 1, "bonus_rolls": 0, "entries": [{
		"type": "minecraft:loot_table",
		"value": value,
		"functions": [{"function": "minecraft:set_count", "count": count}],
	}]}]}


def write_resources() -> None:
	""" Datapack resources owned by the glassrunner mode. """
	switch = Mem.ctx.data["switch"]

	# Predicates
	switch.predicates["glassrunner/in_elytra"] = set_json_encoder(Predicate({
		"condition": "minecraft:entity_properties",
		"entity": "this",
		"predicate": {"equipment": {"chest": {"items": ["minecraft:elytra"]}}},
	}))
	switch.predicates["holding_fireball_wand"] = set_json_encoder(Predicate(holding_predicate("fireball_wand")))
	switch.predicates["holding_destroying_crossbow"] = set_json_encoder(Predicate(holding_predicate("destroying_crossbow")))

	# Item modifiers: a crossbow charged with 3 destroying arrows, and a cleared one
	arrow: dict[str, Any] = {"id": "minecraft:arrow", "components": {"minecraft:custom_data": {"glassrunner": {"destroying_arrow": 1}}}}
	switch.item_modifiers["charged"] = set_json_encoder(ItemModifier({
		"function": "minecraft:set_components",
		"components": {"minecraft:charged_projectiles": [dict(arrow), dict(arrow), dict(arrow)]},
	}))
	switch.item_modifiers["not_charged"] = set_json_encoder(ItemModifier({
		"function": "minecraft:set_components",
		"components": {"minecraft:charged_projectiles": []},
	}))

	# Block tags
	switch.block_tags["glassrunner/air"] = set_json_encoder(BlockTag({"values": ["air", "cave_air", "void_air"]}))
	switch.block_tags["glassrunner/glass"] = set_json_encoder(BlockTag({"values": [
		"minecraft:red_stained_glass", "minecraft:pink_stained_glass",
		"minecraft:light_blue_stained_glass", "minecraft:blue_stained_glass",
	]}))
	switch.block_tags["glassrunner/glass_air"] = set_json_encoder(BlockTag({"values": ["#switch:glassrunner/glass", "#switch:glassrunner/air"]}))
	switch.block_tags["glassrunner/tier_1"] = set_json_encoder(BlockTag({"values": ["pink_stained_glass", "light_blue_stained_glass"]}))
	switch.block_tags["glassrunner/tier_1_air"] = set_json_encoder(BlockTag({"values": ["#switch:glassrunner/tier_1", "#switch:glassrunner/air"]}))

	# Custom item loot tables
	switch.loot_tables["glassrunner/bow"] = set_json_encoder(LootTable({"pools": [{"rolls": 1, "bonus_rolls": 0, "entries": [{
		"type": "minecraft:item",
		"name": "minecraft:bow",
		"functions": [{"function": "minecraft:set_components", "components": {
			"minecraft:custom_data": {"ctc": {"id": "glassrunner:bow"}},
			"minecraft:unbreakable": {},
			"minecraft:enchantments": {"minecraft:knockback": 5, "minecraft:punch": 5},
			"minecraft:can_break": {"blocks": [
				"minecraft:glass", "minecraft:red_stained_glass", "minecraft:blue_stained_glass",
				"minecraft:pink_stained_glass", "minecraft:light_blue_stained_glass",
			]},
		}}],
	}]}]}))

	switch.loot_tables["glassrunner/destroying_crossbow"] = set_json_encoder(LootTable({"pools": [{"rolls": 1, "bonus_rolls": 0, "entries": [{
		"type": "minecraft:item",
		"name": "minecraft:jigsaw",
		"functions": [{"function": "minecraft:set_components", "components": {
			"minecraft:custom_data": {"glassrunner": {"destroying_crossbow": True}},
			"minecraft:item_name": "{\"text\":\"Destroying Crossbow\",\"color\":\"dark_red\",\"italic\":false}",
		}}],
	}]}]}))

	switch.loot_tables["glassrunner/fireball_wand"] = set_json_encoder(LootTable({"pools": [{"rolls": 1, "bonus_rolls": 0, "entries": [{
		"type": "minecraft:item",
		"name": "minecraft:warped_fungus_on_a_stick",
		"functions": [{"function": "minecraft:set_components", "components": {
			"minecraft:custom_data": {"ctc": {"id": "glassrunner:fireball_wand"}, "glassrunner": {"fireball_wand": True}},
			"minecraft:item_model": "switch:fireball_wand",
			"minecraft:item_name": "{\"text\":\"Fireball Wand\",\"color\":\"dark_red\",\"italic\":false}",
			"minecraft:lore": [
				"{\"text\":\"Fait spawn une fireball devant vous qui détruit tout sur son passage\",\"color\":\"dark_gray\",\"italic\":false}",
				"[{\"text\":\"Prix : \",\"color\":\"dark_gray\",\"italic\":false},{\"text\":\"15 pièces\",\"color\":\"gold\",\"italic\":false}]",
			],
		}}],
	}]}]}))

	# Glass bridge snowballs (base items + count multipliers)
	switch.loot_tables["glassrunner/snowball_bridge_blue"] = set_json_encoder(LootTable(bridge_loot("glass_bridge_blue", "Snowball Bridge Blue", "blue")))
	switch.loot_tables["glassrunner/snowball_bridge_red"] = set_json_encoder(LootTable(bridge_loot("glass_bridge_red", "Snowball Bridge Red", "red")))
	switch.loot_tables["glassrunner/snowball_bridge_blue_x8"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/snowball_bridge_blue", 8)))
	switch.loot_tables["glassrunner/snowball_bridge_red_x8"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/snowball_bridge_red", 8)))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_blue"] = set_json_encoder(LootTable(bridge_loot("renforced_glass_bridge_blue", "Renforced Snowball Bridge", "blue")))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_red"] = set_json_encoder(LootTable(bridge_loot("renforced_glass_bridge_red", "Renforced Snowball Bridge", "red")))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_blue_x2"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/renforced_snowball_bridge_blue", 2)))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_blue_x5"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/renforced_snowball_bridge_blue", 5)))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_red_x2"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/renforced_snowball_bridge_red", 2)))
	switch.loot_tables["glassrunner/renforced_snowball_bridge_red_x5"] = set_json_encoder(LootTable(bridge_count_loot("switch:glassrunner/renforced_snowball_bridge_red", 5)))

	# Binary structures (center / side platforms placed during the game)
	register_structures("glassrunner")
