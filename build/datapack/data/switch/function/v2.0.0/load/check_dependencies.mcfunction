
#> switch:v2.0.0/load/check_dependencies
#
# @within	switch:v2.0.0/load/secondary
#

## Check if Switch is loadable (dependencies)
scoreboard players set #dependency_error switch.data 0
execute if score #dependency_error switch.data matches 0 unless score #smithed.custom_block.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 10.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #smithed.crafter.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 10.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #realistic_explosion.major load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #realistic_explosion.major load.status matches 1 unless score #realistic_explosion.minor load.status matches 2.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #realistic_explosion.major load.status matches 1 if score #realistic_explosion.minor load.status matches 2 unless score #realistic_explosion.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #common_signals.major load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 2.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #common_signals.major load.status matches 0 if score #common_signals.minor load.status matches 2 unless score #common_signals.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #furnace_nbt_recipes.major load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 10.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #furnace_nbt_recipes.major load.status matches 1 if score #furnace_nbt_recipes.minor load.status matches 10 unless score #furnace_nbt_recipes.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.dump.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.dump.major load.status matches 4 unless score $bs.dump.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.dump.major load.status matches 4 if score $bs.dump.minor load.status matches 0 unless score $bs.dump.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.interaction.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.interaction.major load.status matches 4 unless score $bs.interaction.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.interaction.major load.status matches 4 if score $bs.interaction.minor load.status matches 0 unless score $bs.interaction.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.random.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.random.major load.status matches 4 unless score $bs.random.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.random.major load.status matches 4 if score $bs.random.minor load.status matches 0 unless score $bs.random.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.raycast.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.raycast.major load.status matches 4 unless score $bs.raycast.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.raycast.major load.status matches 4 if score $bs.raycast.minor load.status matches 0 unless score $bs.raycast.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.spline.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.spline.major load.status matches 4 unless score $bs.spline.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.spline.major load.status matches 4 if score $bs.spline.minor load.status matches 0 unless score $bs.spline.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score $bs.string.major load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.string.major load.status matches 4 unless score $bs.string.minor load.status matches 0.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score $bs.string.major load.status matches 4 if score $bs.string.minor load.status matches 0 unless score $bs.string.patch load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #sheepwars.major load.status matches 2.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #sheepwars.major load.status matches 2 unless score #sheepwars.minor load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #golf_ball.major load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #golf_ball.major load.status matches 1 unless score #golf_ball.minor load.status matches 4.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #golf_ball.major load.status matches 1 if score #golf_ball.minor load.status matches 4 unless score #golf_ball.patch load.status matches 5.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 unless score #shopping_kart.major load.status matches 1.. run scoreboard players set #dependency_error switch.data 1
execute if score #dependency_error switch.data matches 0 if score #shopping_kart.major load.status matches 1 unless score #shopping_kart.minor load.status matches 4.. run scoreboard players set #dependency_error switch.data 1

