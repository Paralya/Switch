
# Imports
from python_datapack.utils.database_helper import *
from python_datapack.constants import *

# Setup misc items
def setup_misc_items(database: dict[str, dict]) -> None:
	""" Setup misc items\n
	Args:
		database (dict[str, dict]): The database to update
	"""
	database["awakened_stardust_bow"] = {"id": "minecraft:bow"}
	database["awakened_stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["awakened_stardust_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:stone", "apply_facing": False}}
	database["stardust_bow"] = {"id": "minecraft:bow"}
	database["stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["ultimate_bow"] = {"id": "minecraft:bow"}
	database["ultimate_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["ultimate_elytra"] = {"id": "minecraft:elytra"}
	database["stardust_fragment"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_essence"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_config"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "block/command_block"}}
	database["stardust_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:diamond_block", "apply_facing": False}}
	database["ender_stardust_ore"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "stardust_essence"}
	database["nether_stardust_ore"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "stardust_ingot"}
	database["legendarium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:lime_concrete", "apply_facing": False}}
	database["solarium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:orange_concrete", "apply_facing": False}}
	database["darkium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:black_concrete", "apply_facing": False}}
	database["ultimate_bullet"] = {"id": CUSTOM_ITEM_VANILLA}
	database["dragon_pearl"] = {"id": "minecraft:ender_pearl"}
	database["life_crystal"] = {"id": "minecraft:golden_apple"}
	database["stardust_apple"] = {"id": CUSTOM_ITEM_VANILLA,
		"consumable": {"on_consume_effects": [{
			"type": "minecraft:apply_effects",
			"effects": [
				{"amplifier": 2, "duration": 100, "id": "minecraft:regeneration", "show_icon": True},
				{"amplifier": 1, "duration": 2400, "id": "minecraft:absorption", "show_icon": True}
			]
		}]},
		"food": {"can_always_eat": True, "nutrition": 4, "saturation": 9.6}
	}
	database["dog_excrement"] = {"id": CUSTOM_ITEM_VANILLA}
	database["quarry_configurator"] = {"id": CUSTOM_ITEM_VANILLA}
	database["travel_staff"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["wormhole_potion"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["banana"] = {"id": CUSTOM_ITEM_VANILLA, "food":{"can_always_eat":True, "nutrition":5, "saturation":6}}
	database["anti_radiation_glove"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["californium_core"] = {"id": CUSTOM_ITEM_VANILLA}
	database["californium_waste"] = {"id": CUSTOM_ITEM_VANILLA}
	database["radioactive_waste"] = {"id": CUSTOM_ITEM_VANILLA}
	database["radioactive_waste_barrel"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id":"minecraft:emerald_block", "apply_facing": False}}
	database["uranium_shard"] = {"id": CUSTOM_ITEM_VANILLA}
	database["chargeless_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["fertilizer_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["fireball_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["shield_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["storm_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	database["souls_bag"] = {"id": CUSTOM_ITEM_VANILLA}
	database["souls_bag_half_filled"] = {"id": CUSTOM_ITEM_VANILLA}
	database["souls_bag_filled"] = {"id": CUSTOM_ITEM_VANILLA}
	return

