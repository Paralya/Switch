
# Imports
from stewbeet.core import Block, VanillaBlock


# Setup blocks behaviors
def setup_blocks_behaviors() -> None:
	""" Setup custom blocks and ores behaviors """
	Block.from_id("adamantium_block").vanilla_block = VanillaBlock(id="netherite_block")
	Block.from_id("sapphire_block").vanilla_block = VanillaBlock(id="diamond_block")
	Block.from_id("ruby_block").vanilla_block = VanillaBlock(id="diamond_block")
	Block.from_id("topaz_block").vanilla_block = VanillaBlock(id="diamond_block")
	Block.from_id("steel_block").vanilla_block = VanillaBlock(id="iron_block")
	Block.from_id("raw_steel_block").vanilla_block = VanillaBlock(id="raw_iron_block")
	Block.from_id("californium_block").vanilla_block = VanillaBlock(id="iron_block")
	Block.from_id("uranium_block").vanilla_block = VanillaBlock(id="iron_block")

