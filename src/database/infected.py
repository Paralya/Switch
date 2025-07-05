
# ruff: noqa: E501
# Imports
from stewbeet.core import CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL, Mem


# Setup infected items
def setup_infected_items() -> None:
	""" Setup all infected items such as swords, chestplates, etc. """
	ns: str = Mem.ctx.project_id

	# Remaining items
	Mem.definitions["element_115"] = {
		"id": CUSTOM_ITEM_VANILLA,
		"item_name": {"text":"Element 115","color":"light_purple","italic":False},
		"lore": [{"text":"Infected","color":"dark_green","italic":True}],
		"item_model": "switch:stardust_ingot"
	}
	Mem.definitions["zombie_hands"] = {
		"id": CUSTOM_ITEM_VANILLA,
		"tooltip_display": {"hide_tooltip": True},
		OVERRIDE_MODEL: {"credit":"Made with Blockbench","texture_size":[64,64],"textures":{"0":f"{ns}:item/zombie_hands","particle":f"{ns}:item/zombie_hands"},"elements":[{"from":[-16,0,0],"to":[-11,5,16],"faces":{"north":{"uv":[4,0,5.25,1.25],"texture":"#0"},"east":{"uv":[0,0,4,1.25],"texture":"#0"},"south":{"uv":[4,1.25,5.25,2.5],"texture":"#0"},"west":{"uv":[0,1.25,4,2.5],"texture":"#0"},"up":{"uv":[1.25,6.5,0,2.5],"texture":"#0"},"down":{"uv":[2.5,2.5,1.25,6.5],"texture":"#0"}}},{"from":[11,0,0],"to":[16,5,16],"faces":{"north":{"uv":[5,5,6.25,6.25],"texture":"#0"},"east":{"uv":[2.5,2.5,6.5,3.75],"texture":"#0"},"south":{"uv":[5.25,0,6.5,1.25],"texture":"#0"},"west":{"uv":[2.5,3.75,6.5,5],"texture":"#0"},"up":{"uv":[3.75,9,2.5,5],"texture":"#0"},"down":{"uv":[5,5,3.75,9],"texture":"#0"}}}],"display":{"thirdperson_righthand":{"translation":[-6,3.25,0.25],"scale":[0,0,0]},"thirdperson_lefthand":{"scale":[0,0,0]},"firstperson_righthand":{"translation":[0.25,0,-3]},"firstperson_lefthand":{"translation":[-17.5,0,0]},"gui":{"translation":[-0.25,0,0],"scale":[0,0,0]}}},
	}

	# Setup swords and chestplates
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
		Mem.definitions[f"infected_sword_{i}"] = {
			"id": "minecraft:iron_sword", "rarity": "epic", "item_model": sword_model, "item_name": f"{material} Sword",
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
		Mem.definitions[f"infected_armor_{i}"] = {
			"id": "minecraft:leather_chestplate" if i == 0 else CUSTOM_ITEM_VANILLA,
			"max_stack_size": 1,
			"rarity": "epic",
			"equippable": {
				"slot": "chest",
				"asset_id": armor.replace("golden", "gold"),
			},
			"item_model": armor_model, "item_name": f"{material} Chestplate",
			"unbreakable": {}, "attribute_modifiers": armor_attribute
		}

