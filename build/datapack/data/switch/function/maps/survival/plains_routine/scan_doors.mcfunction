
#> switch:maps/survival/plains_routine/scan_doors
#
# @within	switch:maps/survival/plains_routine/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_plains_routine switch.data 1

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6689 -5649 6704 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6689 -5649 6704 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6704 -5649 6720 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6704 -5649 6720 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6720 -5649 6735 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6720 -5649 6735 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6735 -5649 6750 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6735 -5649 6750 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6750 -5649 6765 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6750 -5649 6765 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6765 -5649 6781 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6765 -5649 6781 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6781 -5649 6796 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6781 -5649 6796 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6796 -5649 6811 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6796 -5649 6811 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6811 -5649 6826 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6811 -5649 6826 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6826 -5649 6842 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6826 -5649 6842 -5465

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6842 -5649 6857 -5465
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 6842 -5649 6857 -5465

execute if score #scan_plains_routine switch.data matches 1 run data modify storage switch:maps to_scan.plains_routine set value 2b
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_x_plains_routine switch.data 6690
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_y_plains_routine switch.data 86
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_z_plains_routine switch.data -5648
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_x_plains_routine switch.data 6856
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_y_plains_routine switch.data 134
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_z_plains_routine switch.data -5466
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_x_plains_routine switch.data = #start_x_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_y_plains_routine switch.data = #start_y_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_z_plains_routine switch.data = #start_z_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run data modify storage switch:doors plains_routine set value []

execute if score #scan_plains_routine switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_plains_routine switch.data matches 30.. summon marker run function switch:maps/survival/plains_routine/scan_doors_on_marker

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6689 -5649 6704 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6689 -5649 6704 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6704 -5649 6720 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6704 -5649 6720 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6720 -5649 6735 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6720 -5649 6735 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6735 -5649 6750 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6735 -5649 6750 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6750 -5649 6765 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6750 -5649 6765 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6765 -5649 6781 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6765 -5649 6781 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6781 -5649 6796 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6781 -5649 6796 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6796 -5649 6811 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6796 -5649 6811 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6811 -5649 6826 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6811 -5649 6826 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6826 -5649 6842 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6826 -5649 6842 -5465

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 6842 -5649 6857 -5465
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 6842 -5649 6857 -5465

execute if score #scan_plains_routine switch.data matches 330 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"plains_routine","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_plains_routine switch.data matches 330 run data remove storage switch:maps to_scan.plains_routine
execute if score #scan_plains_routine switch.data matches 330 run scoreboard players reset #scan_plains_routine switch.data

execute if score #scan_plains_routine switch.data matches 1.. run schedule function switch:maps/survival/plains_routine/scan_doors 1t

