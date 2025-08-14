
# Imports
from stewbeet.core import CUSTOM_BLOCK_VANILLA, CUSTOM_ITEM_VANILLA, NO_SILK_TOUCH_DROP, OVERRIDE_MODEL, VANILLA_BLOCK, VANILLA_BLOCK_FOR_ORES, Mem


# Setup misc items
def setup_misc_items() -> None:
	""" Setup misc items """
	Mem.definitions["letter"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["awakened_stardust_bow"] = {"id": "minecraft:bow"}
	Mem.definitions["awakened_stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["awakened_stardust_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:stone", "apply_facing": False}}
	Mem.definitions["stardust_bow"] = {"id": "minecraft:bow"}
	Mem.definitions["stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["ultimate_bow"] = {"id": "minecraft:bow"}
	Mem.definitions["ultimate_sniper"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["ultimate_elytra"] = {"id": "minecraft:elytra"}
	Mem.definitions["ultimate_bullet"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["ultimate_fragment"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["ultimate_core"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["stardust_fragment"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["stardust_essence"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["stardust_config"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "block/command_block"}}
	Mem.definitions["stardust_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:diamond_block", "apply_facing": False}}
	Mem.definitions["ender_stardust_ore"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "stardust_essence"}
	Mem.definitions["nether_stardust_ore"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "stardust_ingot"}
	Mem.definitions["legendarium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:lime_concrete", "apply_facing": False}}
	Mem.definitions["solarium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:orange_concrete", "apply_facing": False}}
	Mem.definitions["darkium_block"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id": "minecraft:black_concrete", "apply_facing": False}}
	Mem.definitions["dragon_pearl"] = {"id": "minecraft:ender_pearl"}
	Mem.definitions["life_crystal"] = {"id": "minecraft:golden_apple"}
	Mem.definitions["stardust_apple"] = {"id": CUSTOM_ITEM_VANILLA,
		"consumable": {"on_consume_effects": [{
			"type": "minecraft:apply_effects",
			"effects": [
				{"amplifier": 2, "duration": 100, "id": "minecraft:regeneration", "show_icon": True},
				{"amplifier": 1, "duration": 2400, "id": "minecraft:absorption", "show_icon": True}
			]
		}]},
		"food": {"can_always_eat": True, "nutrition": 4, "saturation": 9.6}
	}
	Mem.definitions["dog_excrement"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["quarry_configurator"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["travel_staff"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["wormhole_potion"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["banana"] = {"id": CUSTOM_ITEM_VANILLA, "food":{"can_always_eat":True, "nutrition":5, "saturation":6}}
	Mem.definitions["anti_radiation_glove"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["californium_core"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["californium_waste"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["radioactive_waste"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["radioactive_waste_barrel"] = {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: {"id":"minecraft:emerald_block", "apply_facing": False}}
	Mem.definitions["uranium_shard"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["chargeless_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["fertilizer_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["fireball_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["shield_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["storm_wand"] = {"id": CUSTOM_ITEM_VANILLA, OVERRIDE_MODEL: {"parent": "minecraft:item/handheld"}}
	Mem.definitions["souls_bag"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["souls_bag_half_filled"] = {"id": CUSTOM_ITEM_VANILLA}
	Mem.definitions["souls_bag_filled"] = {"id": CUSTOM_ITEM_VANILLA}
	return

