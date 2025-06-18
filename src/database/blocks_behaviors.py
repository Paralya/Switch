
# Imports
from python_datapack.utils.database_helper import *
from python_datapack.constants import *

# Setup blocks behaviors
def setup_blocks_behaviors(database: dict[str, dict]) -> None:
	""" Setup custom blocks and ores behaviors\n
	Args:
		database (dict[str, dict]): The database to update
	"""
	database["adamantium_block"].update({VANILLA_BLOCK: {"id":"minecraft:netherite_block", "apply_facing": False}})
	database["sapphire_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["ruby_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["topaz_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["steel_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	database["raw_steel_block"].update({VANILLA_BLOCK: {"id":"minecraft:raw_iron_block", "apply_facing": False}})
	database["californium_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	database["uranium_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	return

