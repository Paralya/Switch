
#> switch:maps/survival/lightium_spawn/scan_doors
#
# @within	switch:maps/survival/lightium_spawn/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_lightium_spawn switch.data 1

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -10000 -2000 -9982 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -10000 -2000 -9982 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9982 -2000 -9963 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9982 -2000 -9963 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9963 -2000 -9945 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9963 -2000 -9945 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9945 -2000 -9926 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9945 -2000 -9926 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9926 -2000 -9908 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9926 -2000 -9908 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9908 -2000 -9889 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9908 -2000 -9889 -1871

execute if score #scan_lightium_spawn switch.data matches 1 in minecraft:overworld run forceload add -9889 -2000 -9871 -1871
execute if score #scan_lightium_spawn switch.data matches 1 in switch:game run forceload add -9889 -2000 -9871 -1871

execute if score #scan_lightium_spawn switch.data matches 1 run data modify storage switch:maps to_scan.lightium_spawn set value 2b
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_x_lightium_spawn switch.data -9999
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_y_lightium_spawn switch.data 101
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #start_z_lightium_spawn switch.data -1999
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_x_lightium_spawn switch.data -9872
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_y_lightium_spawn switch.data 142
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players set #end_z_lightium_spawn switch.data -1872
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_x_lightium_spawn switch.data = #start_x_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_y_lightium_spawn switch.data = #start_y_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run scoreboard players operation #curr_z_lightium_spawn switch.data = #start_z_lightium_spawn switch.data
execute if score #scan_lightium_spawn switch.data matches 1 run data modify storage switch:doors lightium_spawn set value []

execute if score #scan_lightium_spawn switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_lightium_spawn switch.data matches 30.. summon marker run function switch:maps/survival/lightium_spawn/scan_doors_on_marker

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -10000 -2000 -9982 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -10000 -2000 -9982 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9982 -2000 -9963 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9982 -2000 -9963 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9963 -2000 -9945 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9963 -2000 -9945 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9945 -2000 -9926 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9945 -2000 -9926 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9926 -2000 -9908 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9926 -2000 -9908 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9908 -2000 -9889 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9908 -2000 -9889 -1871

execute if score #scan_lightium_spawn switch.data matches 168 in minecraft:overworld run forceload remove -9889 -2000 -9871 -1871
execute if score #scan_lightium_spawn switch.data matches 168 in switch:game run forceload remove -9889 -2000 -9871 -1871

execute if score #scan_lightium_spawn switch.data matches 168 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"lightium_spawn","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_lightium_spawn switch.data matches 168 run data remove storage switch:maps to_scan.lightium_spawn
execute if score #scan_lightium_spawn switch.data matches 168 run scoreboard players reset #scan_lightium_spawn switch.data

execute if score #scan_lightium_spawn switch.data matches 1.. run schedule function switch:maps/survival/lightium_spawn/scan_doors 1t

