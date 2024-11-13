
# Imports
from python_datapack.utils.database_helper import *
from python_datapack.constants import *

# Setup misc items
def setup_misc_items(database: dict[str, dict]) -> None:
	""" Setup misc items\n
	Args:
		database (dict[str, dict]): The database to update
	"""
	database["awakened_stardust"] = {"id": CUSTOM_ITEM_VANILLA}
	database["awakened_stardust_bow"] = {"id": "minecraft:bow"}
	database["awakened_stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_bow"] = {"id": "minecraft:bow"}
	database["stardust_sniper"] = {"id": CUSTOM_ITEM_VANILLA}
	database["ultimate_bow"] = {"id": "minecraft:bow"}
	database["ultimate_sniper"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_fragment"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_ingot"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_essence"] = {"id": CUSTOM_ITEM_VANILLA}
	database["stardust_config"] = {"id": CUSTOM_ITEM_VANILLA}
	database["legendarium_ingot"] = {"id": CUSTOM_ITEM_VANILLA}
	database["solarium_ingot"] = {"id": CUSTOM_ITEM_VANILLA}
	database["darkium_ingot"] = {"id": CUSTOM_ITEM_VANILLA}
	database["ultimate_ingot"] = {"id": CUSTOM_ITEM_VANILLA}
	database["ultimate_bullet"] = {"id": CUSTOM_ITEM_VANILLA}
	database["dragon_pearl"] = {"id": "minecraft:ender_pearl"}
	database["life_crystal"] = {"id": "minecraft:golden_apple"}
	database["stardust_apple"] = {"id": "minecraft:golden_apple"}	# TODO: Add effects
	database["quarry_configurator"] = {"id": CUSTOM_ITEM_VANILLA}
	database["travel_staff"] = {"id": CUSTOM_ITEM_VANILLA}
	database["wormhole_potion"] = {"id": CUSTOM_ITEM_VANILLA}
	return

