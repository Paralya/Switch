
# Imports
from beet import Advancement, LootTable
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the infected mode. """
	switch = Mem.ctx.data["switch"]

	switch.advancements["infected/antidote"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:consume_item",
			"conditions": {"item": {"predicates": {"minecraft:custom_data": "{\"switch\":{\"antidote\":true}}"}}},
		}},
		"requirements": [["requirement"]],
		"rewards": {"function": "switch:modes/infected/advancements/antidote"},
	}))

	switch.advancements["infected/entity_hurt_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:entity_hurt_player",
			"conditions": {"damage": {"source_entity": {"type": "minecraft:player"}}},
		}},
		"requirements": [["requirement"]],
		"rewards": {"function": "switch:modes/infected/advancements/entity_hurt_player/main"},
	}))

	switch.advancements["infected/inventory_changed"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:inventory_changed"}},
		"requirements": [["requirement"]],
		"rewards": {"function": "switch:modes/infected/advancements/inventory_changed"},
	}))

	switch.loot_tables["infected/airdrop"] = set_json_encoder(LootTable({
		"pools": [
			{
				"rolls": {"type": "minecraft:uniform", "min": 4, "max": 6},
				"entries": [
					{"type": "minecraft:item", "name": "minecraft:golden_apple", "weight": 1},
					{"type": "minecraft:item", "name": "minecraft:potion", "weight": 3, "functions": [{"function": "minecraft:set_potion", "id": "minecraft:healing"}]},
					{"type": "minecraft:item", "name": "minecraft:potion", "weight": 1, "functions": [{"function": "minecraft:set_potion", "id": "minecraft:regeneration"}]},
				],
			},
			{
				"rolls": 1,
				"entries": [{"type": "minecraft:loot_table", "value": "switch:i/element_115"}],
			},
		],
	}))
