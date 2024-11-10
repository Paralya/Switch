
#> switch:maps/survival/spectre_original/scan_doors
#
# @within	switch:maps/survival/spectre_original/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_spectre_original switch.data 1

execute if score #scan_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2459 2452 2480 2547
execute if score #scan_spectre_original switch.data matches 1 in switch:game run forceload add 2459 2452 2480 2547

execute if score #scan_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2480 2452 2502 2547
execute if score #scan_spectre_original switch.data matches 1 in switch:game run forceload add 2480 2452 2502 2547

execute if score #scan_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2502 2452 2524 2547
execute if score #scan_spectre_original switch.data matches 1 in switch:game run forceload add 2502 2452 2524 2547

execute if score #scan_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2524 2452 2545 2547
execute if score #scan_spectre_original switch.data matches 1 in switch:game run forceload add 2524 2452 2545 2547

execute if score #scan_spectre_original switch.data matches 1 run data modify storage switch:maps to_scan.spectre_original set value 2b
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #start_x_spectre_original switch.data 2460
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #start_y_spectre_original switch.data 1
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #start_z_spectre_original switch.data 2453
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #end_x_spectre_original switch.data 2544
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #end_y_spectre_original switch.data 84
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players set #end_z_spectre_original switch.data 2546
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players operation #curr_x_spectre_original switch.data = #start_x_spectre_original switch.data
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players operation #curr_y_spectre_original switch.data = #start_y_spectre_original switch.data
execute if score #scan_spectre_original switch.data matches 1 run scoreboard players operation #curr_z_spectre_original switch.data = #start_z_spectre_original switch.data
execute if score #scan_spectre_original switch.data matches 1 run data modify storage switch:doors spectre_original set value []


execute if score #scan_spectre_original switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_spectre_original switch.data matches 30.. summon marker run function switch:maps/survival/spectre_original/scan_doors_on_marker

execute if score #scan_spectre_original switch.data matches 165 in minecraft:overworld run forceload remove 2459 2452 2480 2547
execute if score #scan_spectre_original switch.data matches 165 in switch:game run forceload remove 2459 2452 2480 2547

execute if score #scan_spectre_original switch.data matches 165 in minecraft:overworld run forceload remove 2480 2452 2502 2547
execute if score #scan_spectre_original switch.data matches 165 in switch:game run forceload remove 2480 2452 2502 2547

execute if score #scan_spectre_original switch.data matches 165 in minecraft:overworld run forceload remove 2502 2452 2524 2547
execute if score #scan_spectre_original switch.data matches 165 in switch:game run forceload remove 2502 2452 2524 2547

execute if score #scan_spectre_original switch.data matches 165 in minecraft:overworld run forceload remove 2524 2452 2545 2547
execute if score #scan_spectre_original switch.data matches 165 in switch:game run forceload remove 2524 2452 2545 2547

execute if score #scan_spectre_original switch.data matches 165 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"spectre_original","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_spectre_original switch.data matches 165 run data remove storage switch:maps to_scan.spectre_original
execute if score #scan_spectre_original switch.data matches 165 run scoreboard players reset #scan_spectre_original switch.data

execute if score #scan_spectre_original switch.data matches 1.. run schedule function switch:maps/survival/spectre_original/scan_doors 1t

