
#> switch:maps/survival/fast_circuit/scan_doors
#
# @within	switch:maps/survival/fast_circuit/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_fast_circuit switch.data 1

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6716 -5854 6731 -5726
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 6716 -5854 6731 -5726

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6731 -5854 6747 -5726
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 6731 -5854 6747 -5726

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6747 -5854 6762 -5726
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 6747 -5854 6762 -5726

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6762 -5854 6778 -5726
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 6762 -5854 6778 -5726

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6778 -5854 6793 -5726
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 6778 -5854 6793 -5726

execute if score #scan_fast_circuit switch.data matches 1 run data modify storage switch:maps to_scan.fast_circuit set value 2b
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_x_fast_circuit switch.data 6717
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_y_fast_circuit switch.data 86
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_z_fast_circuit switch.data -5853
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_x_fast_circuit switch.data 6792
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_y_fast_circuit switch.data 118
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_z_fast_circuit switch.data -5727
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_x_fast_circuit switch.data = #start_x_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_y_fast_circuit switch.data = #start_y_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_z_fast_circuit switch.data = #start_z_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run data modify storage switch:doors fast_circuit set value []

execute if score #scan_fast_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_fast_circuit switch.data matches 30.. summon marker run function switch:maps/survival/fast_circuit/scan_doors_on_marker

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 6716 -5854 6731 -5726
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 6716 -5854 6731 -5726

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 6731 -5854 6747 -5726
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 6731 -5854 6747 -5726

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 6747 -5854 6762 -5726
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 6747 -5854 6762 -5726

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 6762 -5854 6778 -5726
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 6762 -5854 6778 -5726

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 6778 -5854 6793 -5726
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 6778 -5854 6793 -5726

execute if score #scan_fast_circuit switch.data matches 94 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"fast_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_fast_circuit switch.data matches 94 run data remove storage switch:maps to_scan.fast_circuit
execute if score #scan_fast_circuit switch.data matches 94 run scoreboard players reset #scan_fast_circuit switch.data

execute if score #scan_fast_circuit switch.data matches 1.. run schedule function switch:maps/survival/fast_circuit/scan_doors 1t

