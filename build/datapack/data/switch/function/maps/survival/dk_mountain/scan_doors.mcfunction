
#> switch:maps/survival/dk_mountain/scan_doors
#
# @within	switch:maps/survival/dk_mountain/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_dk_mountain switch.data 1

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6213 -4891 6237 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6213 -4891 6237 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6237 -4891 6261 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6237 -4891 6261 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6261 -4891 6285 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6261 -4891 6285 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6285 -4891 6309 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6285 -4891 6309 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6309 -4891 6333 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6309 -4891 6333 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6333 -4891 6357 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6333 -4891 6357 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6357 -4891 6381 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6357 -4891 6381 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6381 -4891 6405 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6381 -4891 6405 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6405 -4891 6429 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6405 -4891 6429 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6429 -4891 6453 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6429 -4891 6453 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6453 -4891 6477 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6453 -4891 6477 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6477 -4891 6501 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6477 -4891 6501 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6501 -4891 6525 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6501 -4891 6525 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6525 -4891 6549 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6525 -4891 6549 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6549 -4891 6573 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6549 -4891 6573 -4773

execute if score #scan_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6573 -4891 6597 -4773
execute if score #scan_dk_mountain switch.data matches 1 in switch:game run forceload add 6573 -4891 6597 -4773

execute if score #scan_dk_mountain switch.data matches 1 run data modify storage switch:maps to_scan.dk_mountain set value 2b
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_x_dk_mountain switch.data 6214
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_y_dk_mountain switch.data 71
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #start_z_dk_mountain switch.data -4890
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_x_dk_mountain switch.data 6596
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_y_dk_mountain switch.data 211
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players set #end_z_dk_mountain switch.data -4774
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_x_dk_mountain switch.data = #start_x_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_y_dk_mountain switch.data = #start_y_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run scoreboard players operation #curr_z_dk_mountain switch.data = #start_z_dk_mountain switch.data
execute if score #scan_dk_mountain switch.data matches 1 run data modify storage switch:doors dk_mountain set value []

execute if score #scan_dk_mountain switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_dk_mountain switch.data matches 30.. summon marker run function switch:maps/survival/dk_mountain/scan_doors_on_marker

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6213 -4891 6237 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6213 -4891 6237 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6237 -4891 6261 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6237 -4891 6261 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6261 -4891 6285 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6261 -4891 6285 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6285 -4891 6309 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6285 -4891 6309 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6309 -4891 6333 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6309 -4891 6333 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6333 -4891 6357 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6333 -4891 6357 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6357 -4891 6381 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6357 -4891 6381 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6381 -4891 6405 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6381 -4891 6405 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6405 -4891 6429 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6405 -4891 6429 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6429 -4891 6453 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6429 -4891 6453 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6453 -4891 6477 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6453 -4891 6477 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6477 -4891 6501 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6477 -4891 6501 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6501 -4891 6525 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6501 -4891 6525 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6525 -4891 6549 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6525 -4891 6549 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6549 -4891 6573 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6549 -4891 6573 -4773

execute if score #scan_dk_mountain switch.data matches 1294 in minecraft:overworld run forceload remove 6573 -4891 6597 -4773
execute if score #scan_dk_mountain switch.data matches 1294 in switch:game run forceload remove 6573 -4891 6597 -4773

execute if score #scan_dk_mountain switch.data matches 1294 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"dk_mountain","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"64","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_dk_mountain switch.data matches 1294 run data remove storage switch:maps to_scan.dk_mountain
execute if score #scan_dk_mountain switch.data matches 1294 run scoreboard players reset #scan_dk_mountain switch.data

execute if score #scan_dk_mountain switch.data matches 1.. run schedule function switch:maps/survival/dk_mountain/scan_doors 1t

