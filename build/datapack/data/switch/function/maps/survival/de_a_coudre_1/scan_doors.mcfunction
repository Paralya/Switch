
#> switch:maps/survival/de_a_coudre_1/scan_doors
#
# @within	switch:maps/survival/de_a_coudre_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_de_a_coudre_1 switch.data 1

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29000 29000 29028 29049
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29000 29000 29028 29049

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29028 29000 29055 29049
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29028 29000 29055 29049

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29055 29000 29083 29049
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29055 29000 29083 29049

execute if score #scan_de_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_scan.de_a_coudre_1 set value 2b
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_x_de_a_coudre_1 switch.data 29001
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_y_de_a_coudre_1 switch.data 101
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_z_de_a_coudre_1 switch.data 29001
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_x_de_a_coudre_1 switch.data 29082
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_y_de_a_coudre_1 switch.data 205
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_z_de_a_coudre_1 switch.data 29048
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_x_de_a_coudre_1 switch.data = #start_x_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_y_de_a_coudre_1 switch.data = #start_y_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_z_de_a_coudre_1 switch.data = #start_z_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run data modify storage switch:doors de_a_coudre_1 set value []


execute if score #scan_de_a_coudre_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_de_a_coudre_1 switch.data matches 30.. summon marker run function switch:maps/survival/de_a_coudre_1/scan_doors_on_marker

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 29000 29000 29028 29049
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 29000 29000 29028 29049

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 29028 29000 29055 29049
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 29028 29000 29055 29049

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 29055 29000 29083 29049
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 29055 29000 29083 29049

execute if score #scan_de_a_coudre_1 switch.data matches 113 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"de_a_coudre_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_de_a_coudre_1 switch.data matches 113 run data remove storage switch:maps to_scan.de_a_coudre_1
execute if score #scan_de_a_coudre_1 switch.data matches 113 run scoreboard players reset #scan_de_a_coudre_1 switch.data

execute if score #scan_de_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/scan_doors 1t

