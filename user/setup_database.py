
# Here is a useful link if you want to override autogenerated models: https://github.com/PixiGeko/Minecraft-default-assets/tree/latest/assets/minecraft/models/block

# Import database helper and setup constants
from python_datapack.utils.database_helper import *
from python_datapack.utils.ingredients import *
from python_datapack.constants import *

# Configuration to generate everything about the material based on "steel_ingot"
ORES_CONFIGS: dict[str, EquipmentsConfig|None] = {

	# Custom materials from ImagineYourCraft
	"adamantium_fragment":	EquipmentsConfig(DEFAULT_ORE.NETHERITE,	1873,	{"attack_damage": 0.2, "armor": 0.2, "mining_efficiency": 0.2}),
	"sapphire":				EquipmentsConfig(DEFAULT_ORE.DIAMOND,	1752,	{"mining_efficiency": 0.2}),
	"ruby":					EquipmentsConfig(DEFAULT_ORE.DIAMOND,	1647,	{"attack_damage": 0.5, "armor": 0.5, "mining_efficiency": 0.1}),
	"topaz":				EquipmentsConfig(DEFAULT_ORE.DIAMOND,	1281,	{"attack_damage": 1.0, "armor": 1.0}),
	"obsidian_ingot":		EquipmentsConfig(DEFAULT_ORE.DIAMOND,	3902,	{"attack_damage": -0.2, "mining_efficiency": -0.2}),
	"steel_ingot":			EquipmentsConfig(DEFAULT_ORE.IRON,		444,	{"mining_efficiency": 0.1}),
	"minecraft:emerald":	EquipmentsConfig(DEFAULT_ORE.DIAMOND,	736,	{"luck": 0.25}),
}

# Main function should return a database
def main(config: dict) -> dict[str, dict]:
	database: dict[str, dict] = {}

	# Generate ores in database (add every stuff related to steel and stone found in the textures folder to the database)
	generate_everything_about_these_materials(config, database, ORES_CONFIGS)

	# Generate custom disc records
	generate_custom_records(config, database, "auto")

	# Custom blocks and ores behaviors
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

	# Final adjustments, you definitively should keep them!
	add_item_model_component(config, database, black_list = [])
	add_item_name_and_lore_if_missing(config, database)
	add_private_custom_data_for_namespace(config, database)		# Add a custom namespace for easy item detection
	add_smithed_ignore_vanilla_behaviours_convention(database)	# Smithed items convention
	print()

	# Return database
	return database

