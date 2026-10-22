
#> switch:maps/survival/mario_circuit/scan_doors
#
# @within	switch:maps/survival/mario_circuit/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_mario_circuit switch.data 1

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6941 -5860 6959 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 6941 -5860 6959 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6959 -5860 6978 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 6959 -5860 6978 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6978 -5860 6996 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 6978 -5860 6996 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6996 -5860 7014 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 6996 -5860 7014 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7014 -5860 7033 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 7014 -5860 7033 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7033 -5860 7051 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 7033 -5860 7051 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7051 -5860 7070 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 7051 -5860 7070 -5718

execute if score #scan_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7070 -5860 7088 -5718
execute if score #scan_mario_circuit switch.data matches 1 in switch:game run forceload add 7070 -5860 7088 -5718

execute if score #scan_mario_circuit switch.data matches 1 run data modify storage switch:maps to_scan.mario_circuit set value 2b
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_x_mario_circuit switch.data 6942
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_y_mario_circuit switch.data 86
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #start_z_mario_circuit switch.data -5859
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_x_mario_circuit switch.data 7087
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_y_mario_circuit switch.data 137
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players set #end_z_mario_circuit switch.data -5719
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_x_mario_circuit switch.data = #start_x_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_y_mario_circuit switch.data = #start_y_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run scoreboard players operation #curr_z_mario_circuit switch.data = #start_z_mario_circuit switch.data
execute if score #scan_mario_circuit switch.data matches 1 run data modify storage switch:doors mario_circuit set value []

execute if score #scan_mario_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_mario_circuit switch.data matches 30.. summon marker run function switch:maps/survival/mario_circuit/scan_doors_on_marker

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 6941 -5860 6959 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 6941 -5860 6959 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 6959 -5860 6978 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 6959 -5860 6978 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 6978 -5860 6996 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 6978 -5860 6996 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 6996 -5860 7014 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 6996 -5860 7014 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 7014 -5860 7033 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 7014 -5860 7033 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 7033 -5860 7051 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 7033 -5860 7051 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 7051 -5860 7070 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 7051 -5860 7070 -5718

execute if score #scan_mario_circuit switch.data matches 245 in minecraft:overworld run forceload remove 7070 -5860 7088 -5718
execute if score #scan_mario_circuit switch.data matches 245 in switch:game run forceload remove 7070 -5860 7088 -5718

execute if score #scan_mario_circuit switch.data matches 245 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"mario_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_mario_circuit switch.data matches 245 run data remove storage switch:maps to_scan.mario_circuit
execute if score #scan_mario_circuit switch.data matches 245 run scoreboard players reset #scan_mario_circuit switch.data

execute if score #scan_mario_circuit switch.data matches 1.. run schedule function switch:maps/survival/mario_circuit/scan_doors 1t

