
# Imports
from beet import Advancement, LootTable
from stewbeet.core import Mem, set_json_encoder


def ninja_kill(objective: str, bounds: dict) -> dict:
	""" player_killed_entity advancement gated on a temp score range. """
	return {
		"criteria": {"requirement": {
			"trigger": "minecraft:player_killed_entity",
			"conditions": {"entity": [{
				"condition": "minecraft:entity_scores",
				"entity": "this",
				"scores": {objective: bounds},
			}]},
		}},
	}


def write_resources() -> None:
	""" Datapack resources owned by the traitors_game mode. """
	switch = Mem.ctx.data["switch"]

	killed = ninja_kill("switch.temp.role", {"min": 3, "max": 4})
	killed["rewards"] = {"function": "switch:modes/traitors_game/calls/killed_ninja"}
	switch.advancements["traitors_game/killed_ninja"] = set_json_encoder(Advancement(killed))

	revenge = ninja_kill("switch.temp.killed_ninja", {"min": 1})
	revenge["rewards"] = {"function": "switch:modes/traitors_game/calls/ninja_revenge"}
	switch.advancements["traitors_game/ninja_revenge"] = set_json_encoder(Advancement(revenge))

	switch.loot_tables["traitors_game/all_starter"] = set_json_encoder(LootTable({
		"pools": [{"rolls": 1, "entries": [{
			"type": "minecraft:loot_table",
			"value": "switch:i/sapphire_pickaxe",
			"functions": [{"function": "minecraft:set_enchantments", "enchantments": {"minecraft:efficiency": 1}}],
		}]}],
	}))

	switch.loot_tables["traitors_game/bomber_man"] = set_json_encoder(LootTable({
		"pools": [
			{"rolls": 1, "entries": [{"type": "minecraft:item", "name": "minecraft:tnt", "functions": [{"function": "minecraft:set_count", "count": 16}]}]},
			{"rolls": 1, "entries": [{"type": "minecraft:item", "name": "minecraft:flint_and_steel"}]},
		],
	}))

	switch.loot_tables["traitors_game/lootbox"] = set_json_encoder(LootTable({
		"pools": [{
			"rolls": {"type": "minecraft:uniform", "min": 4, "max": 8},
			"entries": [
				{
					"type": "minecraft:item", "weight": 2, "name": "minecraft:golden_apple",
					"functions": [{"function": "minecraft:set_count", "count": {"type": "minecraft:uniform", "min": 1, "max": 2}}],
				},
				{"type": "minecraft:item", "weight": 4, "name": "minecraft:diamond"},
				{
					"type": "minecraft:item", "weight": 4, "name": "minecraft:gold_ingot",
					"functions": [{"function": "minecraft:set_count", "count": {"type": "minecraft:uniform", "min": 1, "max": 4}}],
				},
				{
					"type": "minecraft:item", "name": "minecraft:book",
					"functions": [{"function": "minecraft:enchant_with_levels", "levels": {"type": "minecraft:uniform", "min": 10, "max": 30}}],
				},
			],
		}],
	}))
