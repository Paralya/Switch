
#> switch:maps/survival/clock_circuit/scan_doors
#
# @within	switch:maps/survival/clock_circuit/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_clock_circuit switch.data 1

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6032 -5087 6050 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6032 -5087 6050 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6050 -5087 6068 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6050 -5087 6068 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6068 -5087 6085 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6068 -5087 6085 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6085 -5087 6103 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6085 -5087 6103 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6103 -5087 6121 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6103 -5087 6121 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6121 -5087 6139 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6121 -5087 6139 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6139 -5087 6156 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6139 -5087 6156 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6156 -5087 6174 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6156 -5087 6174 -4931

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6174 -5087 6192 -4931
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 6174 -5087 6192 -4931

execute if score #scan_clock_circuit switch.data matches 1 run data modify storage switch:maps to_scan.clock_circuit set value 2b
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_x_clock_circuit switch.data 6033
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_y_clock_circuit switch.data 71
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_z_clock_circuit switch.data -5086
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_x_clock_circuit switch.data 6191
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_y_clock_circuit switch.data 171
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_z_clock_circuit switch.data -4932
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_x_clock_circuit switch.data = #start_x_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_y_clock_circuit switch.data = #start_y_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_z_clock_circuit switch.data = #start_z_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run data modify storage switch:doors clock_circuit set value []

execute if score #scan_clock_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_clock_circuit switch.data matches 30.. summon marker run function switch:maps/survival/clock_circuit/scan_doors_on_marker

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6032 -5087 6050 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6032 -5087 6050 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6050 -5087 6068 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6050 -5087 6068 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6068 -5087 6085 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6068 -5087 6085 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6085 -5087 6103 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6085 -5087 6103 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6103 -5087 6121 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6103 -5087 6121 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6121 -5087 6139 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6121 -5087 6139 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6139 -5087 6156 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6139 -5087 6156 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6156 -5087 6174 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6156 -5087 6174 -4931

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 6174 -5087 6192 -4931
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 6174 -5087 6192 -4931

execute if score #scan_clock_circuit switch.data matches 528 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"clock_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_clock_circuit switch.data matches 528 run data remove storage switch:maps to_scan.clock_circuit
execute if score #scan_clock_circuit switch.data matches 528 run scoreboard players reset #scan_clock_circuit switch.data

execute if score #scan_clock_circuit switch.data matches 1.. run schedule function switch:maps/survival/clock_circuit/scan_doors 1t

