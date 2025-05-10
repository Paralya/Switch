
#> switch:maps/survival/clock_circuit/scan_doors
#
# @within	switch:maps/survival/clock_circuit/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_clock_circuit switch.data 1

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19469 20289 19487 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19469 20289 19487 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19487 20289 19505 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19487 20289 19505 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19505 20289 19522 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19505 20289 19522 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19522 20289 19540 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19522 20289 19540 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19540 20289 19558 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19540 20289 19558 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19558 20289 19576 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19558 20289 19576 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19576 20289 19593 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19576 20289 19593 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19593 20289 19611 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19593 20289 19611 20445

execute if score #scan_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19611 20289 19629 20445
execute if score #scan_clock_circuit switch.data matches 1 in switch:game run forceload add 19611 20289 19629 20445

execute if score #scan_clock_circuit switch.data matches 1 run data modify storage switch:maps to_scan.clock_circuit set value 2b
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_x_clock_circuit switch.data 19470
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_y_clock_circuit switch.data 71
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #start_z_clock_circuit switch.data 20290
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_x_clock_circuit switch.data 19628
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_y_clock_circuit switch.data 171
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players set #end_z_clock_circuit switch.data 20444
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_x_clock_circuit switch.data = #start_x_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_y_clock_circuit switch.data = #start_y_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run scoreboard players operation #curr_z_clock_circuit switch.data = #start_z_clock_circuit switch.data
execute if score #scan_clock_circuit switch.data matches 1 run data modify storage switch:doors clock_circuit set value []


execute if score #scan_clock_circuit switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_clock_circuit switch.data matches 30.. summon marker run function switch:maps/survival/clock_circuit/scan_doors_on_marker

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19469 20289 19487 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19469 20289 19487 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19487 20289 19505 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19487 20289 19505 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19505 20289 19522 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19505 20289 19522 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19522 20289 19540 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19522 20289 19540 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19540 20289 19558 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19540 20289 19558 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19558 20289 19576 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19558 20289 19576 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19576 20289 19593 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19576 20289 19593 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19593 20289 19611 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19593 20289 19611 20445

execute if score #scan_clock_circuit switch.data matches 528 in minecraft:overworld run forceload remove 19611 20289 19629 20445
execute if score #scan_clock_circuit switch.data matches 528 in switch:game run forceload remove 19611 20289 19629 20445

execute if score #scan_clock_circuit switch.data matches 528 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"clock_circuit","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_clock_circuit switch.data matches 528 run data remove storage switch:maps to_scan.clock_circuit
execute if score #scan_clock_circuit switch.data matches 528 run scoreboard players reset #scan_clock_circuit switch.data

execute if score #scan_clock_circuit switch.data matches 1.. run schedule function switch:maps/survival/clock_circuit/scan_doors 1t

