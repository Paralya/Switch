
#> switch:maps/survival/boat_race_2/scan_doors
#
# @within	switch:maps/survival/boat_race_2/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_boat_race_2 switch.data 1

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add -8000 -6000 -7980 -5877
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add -8000 -6000 -7980 -5877

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add -7980 -6000 -7960 -5877
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add -7980 -6000 -7960 -5877

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add -7960 -6000 -7941 -5877
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add -7960 -6000 -7941 -5877

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add -7941 -6000 -7921 -5877
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add -7941 -6000 -7921 -5877

execute if score #scan_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add -7921 -6000 -7901 -5877
execute if score #scan_boat_race_2 switch.data matches 1 in switch:game run forceload add -7921 -6000 -7901 -5877

execute if score #scan_boat_race_2 switch.data matches 1 run data modify storage switch:maps to_scan.boat_race_2 set value 2b
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_x_boat_race_2 switch.data -7999
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_y_boat_race_2 switch.data 101
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #start_z_boat_race_2 switch.data -5999
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_x_boat_race_2 switch.data -7902
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_y_boat_race_2 switch.data 179
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players set #end_z_boat_race_2 switch.data -5878
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_x_boat_race_2 switch.data = #start_x_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_y_boat_race_2 switch.data = #start_y_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run scoreboard players operation #curr_z_boat_race_2 switch.data = #start_z_boat_race_2 switch.data
execute if score #scan_boat_race_2 switch.data matches 1 run data modify storage switch:doors boat_race_2 set value []

execute if score #scan_boat_race_2 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_boat_race_2 switch.data matches 30.. summon marker run function switch:maps/survival/boat_race_2/scan_doors_on_marker

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove -8000 -6000 -7980 -5877
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove -8000 -6000 -7980 -5877

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove -7980 -6000 -7960 -5877
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove -7980 -6000 -7960 -5877

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove -7960 -6000 -7941 -5877
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove -7960 -6000 -7941 -5877

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove -7941 -6000 -7921 -5877
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove -7941 -6000 -7921 -5877

execute if score #scan_boat_race_2 switch.data matches 219 in minecraft:overworld run forceload remove -7921 -6000 -7901 -5877
execute if score #scan_boat_race_2 switch.data matches 219 in switch:game run forceload remove -7921 -6000 -7901 -5877

execute if score #scan_boat_race_2 switch.data matches 219 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"boat_race_2","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_boat_race_2 switch.data matches 219 run data remove storage switch:maps to_scan.boat_race_2
execute if score #scan_boat_race_2 switch.data matches 219 run scoreboard players reset #scan_boat_race_2 switch.data

execute if score #scan_boat_race_2 switch.data matches 1.. run schedule function switch:maps/survival/boat_race_2/scan_doors 1t

