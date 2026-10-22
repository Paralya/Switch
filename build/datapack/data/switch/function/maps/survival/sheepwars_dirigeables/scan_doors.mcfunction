
#> switch:maps/survival/sheepwars_dirigeables/scan_doors
#
# @within	switch:maps/survival/sheepwars_dirigeables/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_dirigeables switch.data 1

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -10000 -8000 -9979 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -10000 -8000 -9979 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9979 -8000 -9957 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9979 -8000 -9957 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9957 -8000 -9936 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9957 -8000 -9936 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9936 -8000 -9914 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9936 -8000 -9914 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9914 -8000 -9893 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9914 -8000 -9893 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_dirigeables set value 2b
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_x_sheepwars_dirigeables switch.data -9999
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_y_sheepwars_dirigeables switch.data 101
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_z_sheepwars_dirigeables switch.data -7999
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_x_sheepwars_dirigeables switch.data -9894
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_y_sheepwars_dirigeables switch.data 187
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_z_sheepwars_dirigeables switch.data -7898
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_dirigeables switch.data = #start_x_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_dirigeables switch.data = #start_y_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_dirigeables switch.data = #start_z_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:doors sheepwars_dirigeables set value []

execute if score #scan_sheepwars_dirigeables switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_dirigeables switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_dirigeables/scan_doors_on_marker

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove -10000 -8000 -9979 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove -10000 -8000 -9979 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove -9979 -8000 -9957 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove -9979 -8000 -9957 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove -9957 -8000 -9936 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove -9957 -8000 -9936 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove -9936 -8000 -9914 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove -9936 -8000 -9914 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove -9914 -8000 -9893 -7897
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove -9914 -8000 -9893 -7897

execute if score #scan_sheepwars_dirigeables switch.data matches 219 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run data remove storage switch:maps to_scan.sheepwars_dirigeables
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run scoreboard players reset #scan_sheepwars_dirigeables switch.data

execute if score #scan_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/scan_doors 1t

