
#> switch:maps/survival/mushroom_plains/scan_doors
#
# @within	switch:maps/survival/mushroom_plains/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_mushroom_plains switch.data 1

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -2000 -4000 -1980 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -2000 -4000 -1980 -3878

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1980 -4000 -1959 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -1980 -4000 -1959 -3878

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1959 -4000 -1939 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -1959 -4000 -1939 -3878

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1939 -4000 -1919 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -1939 -4000 -1919 -3878

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1919 -4000 -1898 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -1919 -4000 -1898 -3878

execute if score #scan_mushroom_plains switch.data matches 1 in minecraft:overworld run forceload add -1898 -4000 -1878 -3878
execute if score #scan_mushroom_plains switch.data matches 1 in switch:game run forceload add -1898 -4000 -1878 -3878

execute if score #scan_mushroom_plains switch.data matches 1 run data modify storage switch:maps to_scan.mushroom_plains set value 2b
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #start_x_mushroom_plains switch.data -1999
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #start_y_mushroom_plains switch.data 101
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #start_z_mushroom_plains switch.data -3999
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #end_x_mushroom_plains switch.data -1879
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #end_y_mushroom_plains switch.data 150
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players set #end_z_mushroom_plains switch.data -3879
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players operation #curr_x_mushroom_plains switch.data = #start_x_mushroom_plains switch.data
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players operation #curr_y_mushroom_plains switch.data = #start_y_mushroom_plains switch.data
execute if score #scan_mushroom_plains switch.data matches 1 run scoreboard players operation #curr_z_mushroom_plains switch.data = #start_z_mushroom_plains switch.data
execute if score #scan_mushroom_plains switch.data matches 1 run data modify storage switch:doors mushroom_plains set value []

execute if score #scan_mushroom_plains switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_mushroom_plains switch.data matches 30.. summon marker run function switch:maps/survival/mushroom_plains/scan_doors_on_marker

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -2000 -4000 -1980 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -2000 -4000 -1980 -3878

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -1980 -4000 -1959 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -1980 -4000 -1959 -3878

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -1959 -4000 -1939 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -1959 -4000 -1939 -3878

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -1939 -4000 -1919 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -1939 -4000 -1919 -3878

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -1919 -4000 -1898 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -1919 -4000 -1898 -3878

execute if score #scan_mushroom_plains switch.data matches 177 in minecraft:overworld run forceload remove -1898 -4000 -1878 -3878
execute if score #scan_mushroom_plains switch.data matches 177 in switch:game run forceload remove -1898 -4000 -1878 -3878

execute if score #scan_mushroom_plains switch.data matches 177 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"mushroom_plains","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_mushroom_plains switch.data matches 177 run data remove storage switch:maps to_scan.mushroom_plains
execute if score #scan_mushroom_plains switch.data matches 177 run scoreboard players reset #scan_mushroom_plains switch.data

execute if score #scan_mushroom_plains switch.data matches 1.. run schedule function switch:maps/survival/mushroom_plains/scan_doors 1t

