
#> switch:maps/survival/dark_forest_hills/scan_doors
#
# @within	switch:maps/survival/dark_forest_hills/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_dark_forest_hills switch.data 1

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 0 6000 13 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 0 6000 13 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 13 6000 26 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 13 6000 26 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 26 6000 39 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 26 6000 39 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39 6000 52 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39 6000 52 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 52 6000 65 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 52 6000 65 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 65 6000 78 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 65 6000 78 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 78 6000 91 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 78 6000 91 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 91 6000 104 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 91 6000 104 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 104 6000 117 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 104 6000 117 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 117 6000 130 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 117 6000 130 6221

execute if score #scan_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 130 6000 143 6221
execute if score #scan_dark_forest_hills switch.data matches 1 in switch:game run forceload add 130 6000 143 6221

execute if score #scan_dark_forest_hills switch.data matches 1 run data modify storage switch:maps to_scan.dark_forest_hills set value 2b
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_x_dark_forest_hills switch.data 1
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_y_dark_forest_hills switch.data 101
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #start_z_dark_forest_hills switch.data 6001
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_x_dark_forest_hills switch.data 142
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_y_dark_forest_hills switch.data 169
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players set #end_z_dark_forest_hills switch.data 6220
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_x_dark_forest_hills switch.data = #start_x_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_y_dark_forest_hills switch.data = #start_y_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run scoreboard players operation #curr_z_dark_forest_hills switch.data = #start_z_dark_forest_hills switch.data
execute if score #scan_dark_forest_hills switch.data matches 1 run data modify storage switch:doors dark_forest_hills set value []

execute if score #scan_dark_forest_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_dark_forest_hills switch.data matches 30.. summon marker run function switch:maps/survival/dark_forest_hills/scan_doors_on_marker

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 0 6000 13 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 0 6000 13 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 13 6000 26 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 13 6000 26 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 26 6000 39 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 26 6000 39 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 39 6000 52 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 39 6000 52 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 52 6000 65 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 52 6000 65 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 65 6000 78 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 65 6000 78 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 78 6000 91 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 78 6000 91 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 91 6000 104 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 91 6000 104 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 104 6000 117 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 104 6000 117 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 117 6000 130 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 117 6000 130 6221

execute if score #scan_dark_forest_hills switch.data matches 462 in minecraft:overworld run forceload remove 130 6000 143 6221
execute if score #scan_dark_forest_hills switch.data matches 462 in switch:game run forceload remove 130 6000 143 6221

execute if score #scan_dark_forest_hills switch.data matches 462 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"dark_forest_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_dark_forest_hills switch.data matches 462 run data remove storage switch:maps to_scan.dark_forest_hills
execute if score #scan_dark_forest_hills switch.data matches 462 run scoreboard players reset #scan_dark_forest_hills switch.data

execute if score #scan_dark_forest_hills switch.data matches 1.. run schedule function switch:maps/survival/dark_forest_hills/scan_doors 1t

