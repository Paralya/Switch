
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
	database["adamantium_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "adamantium_fragment"})
	database["deepslate_adamantium_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "adamantium_fragment"})
	database["sapphire_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["sapphire_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "sapphire"})
	database["deepslate_sapphire_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "sapphire"})
	database["ruby_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["ruby_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "ruby"})
	database["deepslate_ruby_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "ruby"})
	database["topaz_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	database["topaz_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "topaz"})
	database["deepslate_topaz_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "topaz"})
	database["steel_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	database["steel_ore"].update({VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "raw_steel"})
	return

