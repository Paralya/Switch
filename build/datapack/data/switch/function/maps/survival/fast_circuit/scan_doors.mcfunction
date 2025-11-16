
#> switch:maps/survival/fast_circuit/scan_doors
#
# @within	switch:maps/survival/fast_circuit/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_fast_circuit switch.data 1

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20153 19522 20168 19650
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 20153 19522 20168 19650

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20168 19522 20184 19650
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 20168 19522 20184 19650

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20184 19522 20199 19650
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 20184 19522 20199 19650

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20199 19522 20215 19650
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 20199 19522 20215 19650

execute if score #scan_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20215 19522 20230 19650
execute if score #scan_fast_circuit switch.data matches 1 in switch:game run forceload add 20215 19522 20230 19650

execute if score #scan_fast_circuit switch.data matches 1 run data modify storage switch:maps to_scan.fast_circuit set value 2b
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_x_fast_circuit switch.data 20154
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_y_fast_circuit switch.data 86
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #start_z_fast_circuit switch.data 19523
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_x_fast_circuit switch.data 20229
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_y_fast_circuit switch.data 118
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players set #end_z_fast_circuit switch.data 19649
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_x_fast_circuit switch.data = #start_x_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_y_fast_circuit switch.data = #start_y_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run scoreboard players operation #curr_z_fast_circuit switch.data = #start_z_fast_circuit switch.data
execute if score #scan_fast_circuit switch.data matches 1 run data modify storage switch:doors fast_circuit set value []

execute if score #scan_fast_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_fast_circuit switch.data matches 30.. summon marker run function switch:maps/survival/fast_circuit/scan_doors_on_marker

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 20153 19522 20168 19650
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 20153 19522 20168 19650

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 20168 19522 20184 19650
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 20168 19522 20184 19650

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 20184 19522 20199 19650
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 20184 19522 20199 19650

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 20199 19522 20215 19650
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 20199 19522 20215 19650

execute if score #scan_fast_circuit switch.data matches 94 in minecraft:overworld run forceload remove 20215 19522 20230 19650
execute if score #scan_fast_circuit switch.data matches 94 in switch:game run forceload remove 20215 19522 20230 19650

execute if score #scan_fast_circuit switch.data matches 94 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"fast_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_fast_circuit switch.data matches 94 run data remove storage switch:maps to_scan.fast_circuit
execute if score #scan_fast_circuit switch.data matches 94 run scoreboard players reset #scan_fast_circuit switch.data

execute if score #scan_fast_circuit switch.data matches 1.. run schedule function switch:maps/survival/fast_circuit/scan_doors 1t

