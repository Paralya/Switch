
#> switch:maps/survival/de_a_coudre_1/scan_doors
#
# @within	switch:maps/survival/de_a_coudre_1/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_de_a_coudre_1 switch.data 1

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 4000 -6000 4028 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 4000 -6000 4028 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 4028 -6000 4055 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 4028 -6000 4055 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 4055 -6000 4083 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 4055 -6000 4083 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_scan.de_a_coudre_1 set value 2b
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_x_de_a_coudre_1 switch.data 4001
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_y_de_a_coudre_1 switch.data 101
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #start_z_de_a_coudre_1 switch.data -5999
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_x_de_a_coudre_1 switch.data 4082
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_y_de_a_coudre_1 switch.data 205
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players set #end_z_de_a_coudre_1 switch.data -5952
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_x_de_a_coudre_1 switch.data = #start_x_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_y_de_a_coudre_1 switch.data = #start_y_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_z_de_a_coudre_1 switch.data = #start_z_de_a_coudre_1 switch.data
execute if score #scan_de_a_coudre_1 switch.data matches 1 run data modify storage switch:doors de_a_coudre_1 set value []

execute if score #scan_de_a_coudre_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_de_a_coudre_1 switch.data matches 30.. summon marker run function switch:maps/survival/de_a_coudre_1/scan_doors_on_marker

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 4000 -6000 4028 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 4000 -6000 4028 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 4028 -6000 4055 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 4028 -6000 4055 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 113 in minecraft:overworld run forceload remove 4055 -6000 4083 -5951
execute if score #scan_de_a_coudre_1 switch.data matches 113 in switch:game run forceload remove 4055 -6000 4083 -5951

execute if score #scan_de_a_coudre_1 switch.data matches 113 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"de_a_coudre_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_de_a_coudre_1 switch.data matches 113 run data remove storage switch:maps to_scan.de_a_coudre_1
execute if score #scan_de_a_coudre_1 switch.data matches 113 run scoreboard players reset #scan_de_a_coudre_1 switch.data

execute if score #scan_de_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/scan_doors 1t

