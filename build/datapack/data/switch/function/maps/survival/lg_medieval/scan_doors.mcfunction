
#> switch:maps/survival/lg_medieval/scan_doors
#
# @within	switch:maps/survival/lg_medieval/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lg_medieval switch.data 1

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95000 95000 95015 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95000 95000 95015 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95015 95000 95029 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95015 95000 95029 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95029 95000 95044 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95029 95000 95044 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95044 95000 95058 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95044 95000 95058 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95058 95000 95073 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95058 95000 95073 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95073 95000 95088 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95073 95000 95088 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95088 95000 95102 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95088 95000 95102 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95102 95000 95117 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95102 95000 95117 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95117 95000 95131 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95117 95000 95131 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95131 95000 95146 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95131 95000 95146 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95146 95000 95161 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95146 95000 95161 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95161 95000 95175 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95161 95000 95175 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95175 95000 95190 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95175 95000 95190 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95190 95000 95204 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95190 95000 95204 95203

execute if score #scan_lg_medieval switch.data matches 1 in minecraft:overworld run forceload add 95204 95000 95219 95203
execute if score #scan_lg_medieval switch.data matches 1 in switch:game run forceload add 95204 95000 95219 95203

execute if score #scan_lg_medieval switch.data matches 1 run data modify storage switch:maps to_scan.lg_medieval set value 2b
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #start_x_lg_medieval switch.data 95001
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #start_y_lg_medieval switch.data -62
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #start_z_lg_medieval switch.data 95001
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #end_x_lg_medieval switch.data 95218
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #end_y_lg_medieval switch.data 40
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players set #end_z_lg_medieval switch.data 95202
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players operation #curr_x_lg_medieval switch.data = #start_x_lg_medieval switch.data
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players operation #curr_y_lg_medieval switch.data = #start_y_lg_medieval switch.data
execute if score #scan_lg_medieval switch.data matches 1 run scoreboard players operation #curr_z_lg_medieval switch.data = #start_z_lg_medieval switch.data
execute if score #scan_lg_medieval switch.data matches 1 run data modify storage switch:doors lg_medieval set value []


execute if score #scan_lg_medieval switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lg_medieval switch.data matches 30.. summon marker run function switch:maps/survival/lg_medieval/scan_doors_on_marker

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95000 95000 95015 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95000 95000 95015 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95015 95000 95029 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95015 95000 95029 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95029 95000 95044 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95029 95000 95044 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95044 95000 95058 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95044 95000 95058 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95058 95000 95073 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95058 95000 95073 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95073 95000 95088 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95073 95000 95088 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95088 95000 95102 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95088 95000 95102 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95102 95000 95117 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95102 95000 95117 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95117 95000 95131 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95117 95000 95131 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95131 95000 95146 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95131 95000 95146 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95146 95000 95161 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95146 95000 95161 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95161 95000 95175 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95161 95000 95175 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95175 95000 95190 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95175 95000 95190 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95190 95000 95204 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95190 95000 95204 95203

execute if score #scan_lg_medieval switch.data matches 938 in minecraft:overworld run forceload remove 95204 95000 95219 95203
execute if score #scan_lg_medieval switch.data matches 938 in switch:game run forceload remove 95204 95000 95219 95203

execute if score #scan_lg_medieval switch.data matches 938 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lg_medieval","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"46","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lg_medieval switch.data matches 938 run data remove storage switch:maps to_scan.lg_medieval
execute if score #scan_lg_medieval switch.data matches 938 run scoreboard players reset #scan_lg_medieval switch.data

execute if score #scan_lg_medieval switch.data matches 1.. run schedule function switch:maps/survival/lg_medieval/scan_doors 1t

