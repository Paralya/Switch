
#> switch:v2.0.0/load/valid_dependencies
#
# @within	switch:v2.0.0/load/secondary
#			switch:v2.0.0/load/valid_dependencies 1t replace
#

# Waiting for a player to get the game version, but stop function if no player found
execute unless entity @p run schedule function switch:v2.0.0/load/valid_dependencies 1t replace
execute unless entity @p run return 0
execute store result score #game_version switch.data run data get entity @p DataVersion

# Check if the game version is supported
scoreboard players set #mcload_error switch.data 0
execute unless score #game_version switch.data matches 4082.. run scoreboard players set #mcload_error switch.data 1

# Decode errors
execute if score #mcload_error switch.data matches 1 run tellraw @a {"text":"Switch Error: This version is made for Minecraft 1.21.3+.","color":"red"}
execute if score #dependency_error switch.data matches 1 run tellraw @a {"text":"Switch Error: Libraries are missing\nplease download the right Switch datapack\nor download each of these libraries one by one:","color":"red"}
execute if score #dependency_error switch.data matches 1 unless score #common_signals.major load.status matches 0.. run tellraw @a {"text":"- [Common Signals (v0.0.5+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error switch.data matches 1 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 0.. run tellraw @a {"text":"- [Common Signals (v0.0.5+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error switch.data matches 1 if score #common_signals.major load.status matches 0 if score #common_signals.minor load.status matches 0 unless score #common_signals.patch load.status matches 5.. run tellraw @a {"text":"- [Common Signals (v0.0.5+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error switch.data matches 1 unless score #smithed.custom_block.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Custom Block (v0.5.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error switch.data matches 1 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 5.. run tellraw @a {"text":"- [Smithed Custom Block (v0.5.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error switch.data matches 1 unless score #smithed.crafter.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Crafter (v0.5.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error switch.data matches 1 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 5.. run tellraw @a {"text":"- [Smithed Crafter (v0.5.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error switch.data matches 1 unless score #furnace_nbt_recipes.major load.status matches 1.. run tellraw @a {"text":"- [Furnace NBT Recipes (v1.7.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error switch.data matches 1 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 7.. run tellraw @a {"text":"- [Furnace NBT Recipes (v1.7.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error switch.data matches 1 unless score #sheepwars.major load.status matches 2.. run tellraw @a {"text":"- [SheepWars (v2.1.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/SheepWars"}}
execute if score #dependency_error switch.data matches 1 if score #sheepwars.major load.status matches 2 unless score #sheepwars.minor load.status matches 1.. run tellraw @a {"text":"- [SheepWars (v2.1.0+)]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/SheepWars"}}

# Load Switch
execute if score #game_version switch.data matches 1.. if score #mcload_error switch.data matches 0 if score #dependency_error switch.data matches 0 run function switch:v2.0.0/load/confirm_load
