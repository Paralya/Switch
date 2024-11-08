
#> switch:v2.0.0/load/check_dependencies
#
# @within	switch:v2.0.0/load/secondary
#

## Check if Switch is loadable (dependencies)
scoreboard players set #dependency_error switch.data 0
execute if score #dependency_error switch.data matches 0 unless score #common_signals.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #common_signals.major load.status matches 0 if score #common_signals.minor load.status matches 0 unless score #common_signals.patch load.status matches 5.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #smithed.custom_block.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 5.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #smithed.crafter.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 5.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #furnace_nbt_recipes.major load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 7.. run scoreboard players set #dependency_error switch.data 1

