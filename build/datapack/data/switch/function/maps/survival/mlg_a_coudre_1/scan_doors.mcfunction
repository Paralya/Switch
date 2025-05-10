
#> switch:maps/survival/mlg_a_coudre_1/scan_doors
#
# @within	switch:maps/survival/mlg_a_coudre_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_mlg_a_coudre_1 switch.data 1

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31000 31000 31019 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31000 31000 31019 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31019 31000 31038 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31019 31000 31038 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31038 31000 31056 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31038 31000 31056 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31056 31000 31075 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31056 31000 31075 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_scan.mlg_a_coudre_1 set value 2b
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_x_mlg_a_coudre_1 switch.data 31001
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_y_mlg_a_coudre_1 switch.data 101
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_z_mlg_a_coudre_1 switch.data 31001
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_x_mlg_a_coudre_1 switch.data 31074
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_y_mlg_a_coudre_1 switch.data 228
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_z_mlg_a_coudre_1 switch.data 31089
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_x_mlg_a_coudre_1 switch.data = #start_x_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_y_mlg_a_coudre_1 switch.data = #start_y_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_z_mlg_a_coudre_1 switch.data = #start_z_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:doors mlg_a_coudre_1 set value []


execute if score #scan_mlg_a_coudre_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_mlg_a_coudre_1 switch.data matches 30.. summon marker run function switch:maps/survival/mlg_a_coudre_1/scan_doors_on_marker

execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in minecraft:overworld run forceload remove 31000 31000 31019 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in switch:game run forceload remove 31000 31000 31019 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in minecraft:overworld run forceload remove 31019 31000 31038 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in switch:game run forceload remove 31019 31000 31038 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in minecraft:overworld run forceload remove 31038 31000 31056 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in switch:game run forceload remove 31038 31000 31056 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in minecraft:overworld run forceload remove 31056 31000 31075 31090
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 in switch:game run forceload remove 31056 31000 31075 31090

execute if score #scan_mlg_a_coudre_1 switch.data matches 199 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"mlg_a_coudre_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 run data remove storage switch:maps to_scan.mlg_a_coudre_1
execute if score #scan_mlg_a_coudre_1 switch.data matches 199 run scoreboard players reset #scan_mlg_a_coudre_1 switch.data

execute if score #scan_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/scan_doors 1t

