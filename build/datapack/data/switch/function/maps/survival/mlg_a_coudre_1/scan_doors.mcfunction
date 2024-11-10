
#> switch:maps/survival/mlg_a_coudre_1/scan_doors
#
# @within	switch:maps/survival/mlg_a_coudre_1/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_mlg_a_coudre_1 switch.data 1

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 30968 30955 30990 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 30968 30955 30990 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 30990 30955 31012 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 30990 30955 31012 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31012 30955 31034 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31012 30955 31034 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31034 30955 31056 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31034 30955 31056 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_scan.mlg_a_coudre_1 set value 2b
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_x_mlg_a_coudre_1 switch.data 30969
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_y_mlg_a_coudre_1 switch.data 96
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #start_z_mlg_a_coudre_1 switch.data 30956
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_x_mlg_a_coudre_1 switch.data 31055
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_y_mlg_a_coudre_1 switch.data 219
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #end_z_mlg_a_coudre_1 switch.data 31048
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_x_mlg_a_coudre_1 switch.data = #start_x_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_y_mlg_a_coudre_1 switch.data = #start_y_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run scoreboard players operation #curr_z_mlg_a_coudre_1 switch.data = #start_z_mlg_a_coudre_1 switch.data
execute if score #scan_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:doors mlg_a_coudre_1 set value []


execute if score #scan_mlg_a_coudre_1 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_mlg_a_coudre_1 switch.data matches 30.. summon marker run function switch:maps/survival/mlg_a_coudre_1/scan_doors_on_marker

execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in minecraft:overworld run forceload remove 30968 30955 30990 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in switch:game run forceload remove 30968 30955 30990 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in minecraft:overworld run forceload remove 30990 30955 31012 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in switch:game run forceload remove 30990 30955 31012 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in minecraft:overworld run forceload remove 31012 30955 31034 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in switch:game run forceload remove 31012 30955 31034 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in minecraft:overworld run forceload remove 31034 30955 31056 31049
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 in switch:game run forceload remove 31034 30955 31056 31049

execute if score #scan_mlg_a_coudre_1 switch.data matches 231 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"mlg_a_coudre_1","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 run data remove storage switch:maps to_scan.mlg_a_coudre_1
execute if score #scan_mlg_a_coudre_1 switch.data matches 231 run scoreboard players reset #scan_mlg_a_coudre_1 switch.data

execute if score #scan_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/scan_doors 1t

