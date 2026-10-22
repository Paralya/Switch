
#> switch:maps/survival/adraik_big_ball/scan_doors
#
# @within	switch:maps/survival/adraik_big_ball/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_adraik_big_ball switch.data 1

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6000 2000 6014 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6000 2000 6014 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6014 2000 6027 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6014 2000 6027 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6027 2000 6041 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6027 2000 6041 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6041 2000 6055 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6041 2000 6055 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6055 2000 6069 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6055 2000 6069 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6069 2000 6082 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6069 2000 6082 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6082 2000 6096 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6082 2000 6096 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6096 2000 6110 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6096 2000 6110 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6110 2000 6124 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6110 2000 6124 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6124 2000 6137 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6124 2000 6137 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6137 2000 6151 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6137 2000 6151 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6151 2000 6165 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6151 2000 6165 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6165 2000 6179 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6165 2000 6179 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6179 2000 6192 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6179 2000 6192 2205

execute if score #scan_adraik_big_ball switch.data matches 1 in minecraft:overworld run forceload add 6192 2000 6206 2205
execute if score #scan_adraik_big_ball switch.data matches 1 in switch:game run forceload add 6192 2000 6206 2205

execute if score #scan_adraik_big_ball switch.data matches 1 run data modify storage switch:maps to_scan.adraik_big_ball set value 2b
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_x_adraik_big_ball switch.data 6001
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_y_adraik_big_ball switch.data 101
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #start_z_adraik_big_ball switch.data 2001
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_x_adraik_big_ball switch.data 6205
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_y_adraik_big_ball switch.data 256
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players set #end_z_adraik_big_ball switch.data 2204
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_x_adraik_big_ball switch.data = #start_x_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_y_adraik_big_ball switch.data = #start_y_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run scoreboard players operation #curr_z_adraik_big_ball switch.data = #start_z_adraik_big_ball switch.data
execute if score #scan_adraik_big_ball switch.data matches 1 run data modify storage switch:doors adraik_big_ball set value []

execute if score #scan_adraik_big_ball switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_adraik_big_ball switch.data matches 30.. summon marker run function switch:maps/survival/adraik_big_ball/scan_doors_on_marker

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6000 2000 6014 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6000 2000 6014 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6014 2000 6027 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6014 2000 6027 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6027 2000 6041 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6027 2000 6041 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6041 2000 6055 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6041 2000 6055 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6055 2000 6069 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6055 2000 6069 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6069 2000 6082 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6069 2000 6082 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6082 2000 6096 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6082 2000 6096 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6096 2000 6110 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6096 2000 6110 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6110 2000 6124 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6110 2000 6124 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6124 2000 6137 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6124 2000 6137 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6137 2000 6151 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6137 2000 6151 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6151 2000 6165 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6151 2000 6165 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6165 2000 6179 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6165 2000 6179 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6179 2000 6192 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6179 2000 6192 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 in minecraft:overworld run forceload remove 6192 2000 6206 2205
execute if score #scan_adraik_big_ball switch.data matches 1335 in switch:game run forceload remove 6192 2000 6206 2205

execute if score #scan_adraik_big_ball switch.data matches 1335 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"adraik_big_ball","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"66","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_adraik_big_ball switch.data matches 1335 run data remove storage switch:maps to_scan.adraik_big_ball
execute if score #scan_adraik_big_ball switch.data matches 1335 run scoreboard players reset #scan_adraik_big_ball switch.data

execute if score #scan_adraik_big_ball switch.data matches 1.. run schedule function switch:maps/survival/adraik_big_ball/scan_doors 1t

