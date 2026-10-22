
#> switch:maps/survival/sakura_land/scan_doors
#
# @within	switch:maps/survival/sakura_land/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sakura_land switch.data 1

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6384 -5397 6396 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6384 -5397 6396 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6396 -5397 6408 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6396 -5397 6408 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6408 -5397 6419 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6408 -5397 6419 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6419 -5397 6431 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6419 -5397 6431 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6431 -5397 6443 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6431 -5397 6443 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6443 -5397 6455 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6443 -5397 6455 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6455 -5397 6466 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6455 -5397 6466 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6466 -5397 6478 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6466 -5397 6478 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6478 -5397 6490 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6478 -5397 6490 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6490 -5397 6502 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6490 -5397 6502 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6502 -5397 6513 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6502 -5397 6513 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6513 -5397 6525 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6513 -5397 6525 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6525 -5397 6537 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6525 -5397 6537 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6537 -5397 6549 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6537 -5397 6549 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6549 -5397 6560 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6549 -5397 6560 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6560 -5397 6572 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6560 -5397 6572 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6572 -5397 6584 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6572 -5397 6584 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6584 -5397 6596 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6584 -5397 6596 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6596 -5397 6607 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6596 -5397 6607 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6607 -5397 6619 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6607 -5397 6619 -5148

execute if score #scan_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6619 -5397 6631 -5148
execute if score #scan_sakura_land switch.data matches 1 in switch:game run forceload add 6619 -5397 6631 -5148

execute if score #scan_sakura_land switch.data matches 1 run data modify storage switch:maps to_scan.sakura_land set value 2b
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_x_sakura_land switch.data 6385
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_y_sakura_land switch.data 86
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #start_z_sakura_land switch.data -5396
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_x_sakura_land switch.data 6630
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_y_sakura_land switch.data 131
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players set #end_z_sakura_land switch.data -5149
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_x_sakura_land switch.data = #start_x_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_y_sakura_land switch.data = #start_y_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run scoreboard players operation #curr_z_sakura_land switch.data = #start_z_sakura_land switch.data
execute if score #scan_sakura_land switch.data matches 1 run data modify storage switch:doors sakura_land set value []

execute if score #scan_sakura_land switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sakura_land switch.data matches 30.. summon marker run function switch:maps/survival/sakura_land/scan_doors_on_marker

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6384 -5397 6396 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6384 -5397 6396 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6396 -5397 6408 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6396 -5397 6408 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6408 -5397 6419 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6408 -5397 6419 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6419 -5397 6431 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6419 -5397 6431 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6431 -5397 6443 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6431 -5397 6443 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6443 -5397 6455 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6443 -5397 6455 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6455 -5397 6466 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6455 -5397 6466 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6466 -5397 6478 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6466 -5397 6478 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6478 -5397 6490 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6478 -5397 6490 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6490 -5397 6502 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6490 -5397 6502 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6502 -5397 6513 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6502 -5397 6513 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6513 -5397 6525 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6513 -5397 6525 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6525 -5397 6537 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6525 -5397 6537 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6537 -5397 6549 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6537 -5397 6549 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6549 -5397 6560 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6549 -5397 6560 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6560 -5397 6572 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6560 -5397 6572 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6572 -5397 6584 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6572 -5397 6584 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6584 -5397 6596 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6584 -5397 6596 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6596 -5397 6607 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6596 -5397 6607 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6607 -5397 6619 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6607 -5397 6619 -5148

execute if score #scan_sakura_land switch.data matches 592 in minecraft:overworld run forceload remove 6619 -5397 6631 -5148
execute if score #scan_sakura_land switch.data matches 592 in switch:game run forceload remove 6619 -5397 6631 -5148

execute if score #scan_sakura_land switch.data matches 592 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sakura_land","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sakura_land switch.data matches 592 run data remove storage switch:maps to_scan.sakura_land
execute if score #scan_sakura_land switch.data matches 592 run scoreboard players reset #scan_sakura_land switch.data

execute if score #scan_sakura_land switch.data matches 1.. run schedule function switch:maps/survival/sakura_land/scan_doors 1t

