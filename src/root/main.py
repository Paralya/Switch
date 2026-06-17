
# Imports
import stouputils as stp
from stewbeet import write_function


# Top-level "switch:*" functions that don't belong to a deeper subsystem.
# (load / tick are handled by write_load_file / write_tick_file in src/link.py)
@stp.measure_time(message="Generated root files")
def main() -> None:
	ns: str = "switch"

	# switch:none (no-op target)
	write_function(f"{ns}:none", """
# Function that does nothing
""")

	# switch:cut_clean (turn raw ores into ingots when dropped, keeping custom items intact)
	write_function(f"{ns}:cut_clean", """
tag @s add switch.cut_clean

scoreboard players set #custom switch.data 1
scoreboard players set #success switch.data 0
execute store result score #count switch.data run data get entity @s Item.count

# Vanilla Items
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_iron"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_gold"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_copper"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:ancient_debris"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:netherite_scrap"
execute if score #success switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data

# Custom Items
execute if score #success switch.data matches 0 run scoreboard players set #custom switch.data 0
execute if score #success switch.data matches 0 run setblock 0 1 0 air
execute if score #success switch.data matches 0 run setblock 0 1 0 yellow_shulker_box
execute if score #custom switch.data matches 1 run data modify entity @s Item set from block 0 1 0 Items[0]
execute if score #custom switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data
execute if score #success switch.data matches 0 run setblock 0 1 0 air
""")

	# switch:auto_index (recursive: index the minigames list into indexed_minigames)
	write_function(f"{ns}:auto_index", """
# Copy the minigames list to a temporary storage and add an index
data modify storage switch:main temp set from storage switch:main minigames[0]
execute store result storage switch:main temp.index int 1 run scoreboard players get #index switch.data
scoreboard players add #index switch.data 1

# Copy name for differents langs
execute unless data storage switch:main temp.name_en run data modify storage switch:main temp.name_en set from storage switch:main temp.name_fr
execute unless data storage switch:main temp.name_jp run data modify storage switch:main temp.name_jp set from storage switch:main temp.name_fr

# Copy the temporary storage back to the new minigames list
data modify storage switch:main indexed_minigames append from storage switch:main temp

# Create the stats objectives for the minigame
function switch:utils/create_stats_stuff with storage switch:main temp

# Remove the first minigame from the list and continue
data remove storage switch:main minigames[0]
execute if data storage switch:main minigames[0] run function switch:auto_index
""")

	# switch:test_mode (toggle the global test mode)
	write_function(f"{ns}:test_mode", """
# Get test mode state
scoreboard players set #is_enabled switch.data 0
execute if score #test_mode switch.data matches 1 run scoreboard players set #is_enabled switch.data 1

# Test Mode OFF -> ON
execute if score #is_enabled switch.data matches 0 run scoreboard players set #test_mode switch.data 1
execute if score #is_enabled switch.data matches 0 run scoreboard players set #can_attach switch.data 0

# Test Mode ON -> OFF
execute if score #is_enabled switch.data matches 1 run scoreboard players set #test_mode switch.data 0
execute if score #is_enabled switch.data matches 1 run scoreboard players set #can_attach switch.data 1

# Message the player
function switch:translations/test_mode
""")
