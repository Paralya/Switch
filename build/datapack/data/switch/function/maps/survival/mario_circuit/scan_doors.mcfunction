
#> switch:maps/survival/mario_circuit/scan_doors
#
# @within	switch:maps/survival/mario_circuit/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_mario_circuit switch.data 1

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20378 19516 20396 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20378 19516 20396 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20396 19516 20415 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20396 19516 20415 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20415 19516 20433 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20415 19516 20433 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20433 19516 20452 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20433 19516 20452 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20452 19516 20470 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20452 19516 20470 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20470 19516 20488 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20470 19516 20488 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20488 19516 20507 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20488 19516 20507 19658

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20507 19516 20525 19658
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 20507 19516 20525 19658

execute if score #scan_mario_circuit switch.data matches 1 run data modify storage switch:maps to_scan.mario_circuit set value 2b
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_x_mario_circuit switch.data 20379
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_y_mario_circuit switch.data 86
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_z_mario_circuit switch.data 19517
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_x_mario_circuit switch.data 20524
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_y_mario_circuit switch.data 137
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_z_mario_circuit switch.data 19657
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_x_mario_circuit switch.data = #start_x_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_y_mario_circuit switch.data = #start_y_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_z_mario_circuit switch.data = #start_z_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run data modify storage switch:doors mario_circuit set value []

execute if score #scan_mario_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_mario_circuit switch.data matches 30.. summon marker run function switch:maps/survival/mario_circuit/scan_doors_on_marker

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20378 19516 20396 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20378 19516 20396 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20396 19516 20415 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20396 19516 20415 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20415 19516 20433 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20415 19516 20433 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20433 19516 20452 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20433 19516 20452 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20452 19516 20470 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20452 19516 20470 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20470 19516 20488 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20470 19516 20488 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20488 19516 20507 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20488 19516 20507 19658

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 20507 19516 20525 19658
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 20507 19516 20525 19658

execute if score #scan_mario_circuit switch.data matches 245 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"mario_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_mario_circuit switch.data matches 245 run data remove storage switch:maps to_scan.mario_circuit
execute if score #scan_mario_circuit switch.data matches 245 run scoreboard players reset #scan_mario_circuit switch.data

execute if score #scan_mario_circuit switch.data matches 1.. run schedule function switch:maps/survival/mario_circuit/scan_doors 1t

