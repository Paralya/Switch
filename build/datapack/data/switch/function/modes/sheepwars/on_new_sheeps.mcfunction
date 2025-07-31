
#> switch:modes/sheepwars/on_new_sheeps
#
# @executed	as @e[type=sheep,tag=!switch.checked]
#
# @within	switch:modes/sheepwars/tick [ as @e[type=sheep,tag=!switch.checked] ]
#

# Tag as checked
tag @s add switch.checked

# If the player nearby (the one who throw the sheep) has the "Armored Sheep" kit
scoreboard players set #armored_level switch.data 0
execute as @p[tag=!detached] if score @s switch.sheepwars.chosen_kit matches 7 unless score @s switch.sheepwars.kit_armored_sheep matches 1.. run scoreboard players set #armored_level switch.data 1
execute as @p[tag=!detached] if score @s switch.sheepwars.chosen_kit matches 7 if score @s switch.sheepwars.kit_armored_sheep matches 2 run scoreboard players set #armored_level switch.data 2
execute as @p[tag=!detached] if score @s switch.sheepwars.chosen_kit matches 7 if score @s switch.sheepwars.kit_armored_sheep matches 3 run scoreboard players set #armored_level switch.data 3
execute as @p[tag=!detached] if score @s switch.sheepwars.chosen_kit matches 7 if score @s switch.sheepwars.kit_armored_sheep matches 4 run scoreboard players set #armored_level switch.data 4
execute as @p[tag=!detached] if score @s switch.sheepwars.chosen_kit matches 7 if score @s switch.sheepwars.kit_armored_sheep matches 5 run scoreboard players set #armored_level switch.data 5

# Depending on armored_level, set the sheep's health
execute if score #armored_level switch.data matches 1 run attribute @s max_health base set 9.6
execute if score #armored_level switch.data matches 2 run attribute @s max_health base set 11.2
execute if score #armored_level switch.data matches 3 run attribute @s max_health base set 12.8
execute if score #armored_level switch.data matches 4 run attribute @s max_health base set 14.4
execute if score #armored_level switch.data matches 5 run attribute @s max_health base set 16
data modify entity @s Health set value 16.0f

