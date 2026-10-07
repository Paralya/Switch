
# Imports
from beet import ItemModifier
from stewbeet.core import Mem, set_json_encoder


def write_item_modifiers() -> None:
	""" Build the shared/generic item modifiers explicitly under the switch namespace. """
	ns: str = Mem.ctx.project_id
	item_modifiers = Mem.ctx.data[ns].item_modifiers

	item_modifiers["unbreakable"] = set_json_encoder(ItemModifier({
		"type": "minecraft:set_components",
		"components": {
			"minecraft:unbreakable": {},
			"minecraft:tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
		},
	}))

	item_modifiers["enchant_protection_2"] = set_json_encoder(ItemModifier({
		"type": "minecraft:set_enchantments",
		"enchantments": {"minecraft:protection": 2},
	}))

	item_modifiers["handheld/enchant_efficiency_5"] = set_json_encoder(ItemModifier({
		"type": "minecraft:set_enchantments",
		"enchantments": {"minecraft:efficiency": 5},
		"condition": {"type": "minecraft:all_of", "terms": [
			{
				"type": "minecraft:inverted",
				"term": {
					"type": "minecraft:entity_properties",
					"entity": "this",
					"predicate": {"equipment": {"mainhand": {"predicates": {
						"minecraft:enchantments": [{"enchantments": "minecraft:efficiency", "levels": 5}],
					}}}},
				},
			},
			{
				"type": "minecraft:entity_properties",
				"entity": "this",
				"predicate": {"equipment": {"mainhand": {"items": f"#{ns}:tools"}}},
			},
		]},
	}))

