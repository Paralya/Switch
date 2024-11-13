
# Imports
from python_datapack.utils.database_helper import *
from python_datapack.constants import *

# Setup infected items
def setup_infected_items(database: dict[str, dict]) -> None:
	""" Setup infected swords and armors\n
	Args:
		database (dict[str, dict]): The database to update
	"""
	SWORDS: list[str] = [
		"minecraft:wooden",	"minecraft:stone",		"minecraft:golden", 
		"minecraft:iron",	"minecraft:diamond",	"switch:emerald", 
		"switch:obsidian",	"switch:topaz",			"switch:ruby", 
		"switch:sapphire",	"switch:adamantium"
	]
	CHESTPLATES: list[str] = ["minecraft:leather", "minecraft:chainmail"] + SWORDS[2:]	# Same as swords but leather and chainmail instead of wooden and stone

	# Swords
	for i, sword in enumerate(SWORDS):
		material: str = sword.split(":")[1].title()
		sword_model: str = f"{sword}_sword"
		sword_attribute: list[dict] = [{
			"type": "attack_damage", "slot": "mainhand", "id": "base_attack_damage",
			"amount": 4.00 + (0.05 * i), "operation": "add_value"
		}]
		database[f"infected_sword_{i}"] = {
			"id": CUSTOM_ITEM_VANILLA, "item_model": sword_model, "item_name": f'"{material} Sword"',
			"unbreakable": {}, "attribute_modifiers": sword_attribute
		}

	# Chestplates
	for i, armor in enumerate(CHESTPLATES):
		material: str = armor.split(":")[1].title()
		armor_model: str = f"{armor}_chestplate"
		armor_attribute: list[dict] = [{
			"type": "armor", "slot": "chest", "id": "switch.armor",
			"amount": 4.00 + (0.05 * i), "operation": "add_value"
		}]
		database[f"infected_armor_{i}"] = {
			"id": CUSTOM_ITEM_VANILLA,
			"equippable": {
				"slot": "chest",
				"model": armor.replace("golden", "gold")
			},
			"item_model": armor_model, "item_name": f'"{material} Chestplate"',
			"unbreakable": {}, "attribute_modifiers": armor_attribute
		}

