
#> switch:maps/survival/sheepwars_colored_sheeps/scan_doors
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_colored_sheeps switch.data 1

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154000 154000 154021 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154000 154000 154021 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154021 154000 154043 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154021 154000 154043 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154043 154000 154064 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154043 154000 154064 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154064 154000 154086 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154064 154000 154086 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154086 154000 154107 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154086 154000 154107 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_colored_sheeps set value 2b
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #start_x_sheepwars_colored_sheeps switch.data 154001
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #start_y_sheepwars_colored_sheeps switch.data 101
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #start_z_sheepwars_colored_sheeps switch.data 154001
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #end_x_sheepwars_colored_sheeps switch.data 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #end_y_sheepwars_colored_sheeps switch.data 168
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #end_z_sheepwars_colored_sheeps switch.data 154105
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_colored_sheeps switch.data = #start_x_sheepwars_colored_sheeps switch.data
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_colored_sheeps switch.data = #start_y_sheepwars_colored_sheeps switch.data
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_colored_sheeps switch.data = #start_z_sheepwars_colored_sheeps switch.data
execute if score #scan_sheepwars_colored_sheeps switch.data matches 1 run data modify storage switch:doors sheepwars_colored_sheeps set value []

execute if score #scan_sheepwars_colored_sheeps switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_colored_sheeps switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_colored_sheeps/scan_doors_on_marker

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in minecraft:overworld run forceload remove 154000 154000 154021 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in switch:game run forceload remove 154000 154000 154021 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in minecraft:overworld run forceload remove 154021 154000 154043 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in switch:game run forceload remove 154021 154000 154043 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in minecraft:overworld run forceload remove 154043 154000 154064 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in switch:game run forceload remove 154043 154000 154064 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in minecraft:overworld run forceload remove 154064 154000 154086 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in switch:game run forceload remove 154064 154000 154086 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in minecraft:overworld run forceload remove 154086 154000 154107 154106
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 in switch:game run forceload remove 154086 154000 154107 154106

execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_colored_sheeps","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 run data remove storage switch:maps to_scan.sheepwars_colored_sheeps
execute if score #scan_sheepwars_colored_sheeps switch.data matches 182 run scoreboard players reset #scan_sheepwars_colored_sheeps switch.data

execute if score #scan_sheepwars_colored_sheeps switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_colored_sheeps/scan_doors 1t

