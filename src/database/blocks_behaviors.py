
# Imports
from stewbeet.core import VANILLA_BLOCK, Mem


# Setup blocks behaviors
def setup_blocks_behaviors() -> None:
	""" Setup custom blocks and ores behaviors """
	Mem.definitions["adamantium_block"].update({VANILLA_BLOCK: {"id":"minecraft:netherite_block", "apply_facing": False}})
	Mem.definitions["sapphire_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	Mem.definitions["ruby_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	Mem.definitions["topaz_block"].update({VANILLA_BLOCK: {"id":"minecraft:diamond_block", "apply_facing": False}})
	Mem.definitions["steel_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	Mem.definitions["raw_steel_block"].update({VANILLA_BLOCK: {"id":"minecraft:raw_iron_block", "apply_facing": False}})
	Mem.definitions["californium_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	Mem.definitions["uranium_block"].update({VANILLA_BLOCK: {"id":"minecraft:iron_block", "apply_facing": False}})
	return

