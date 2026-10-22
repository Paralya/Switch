
#> switch:maps/survival/sheepwars_ilots/scan_doors
#
# @within	switch:maps/survival/sheepwars_ilots/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_ilots switch.data 1

execute if score #scan_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -12000 -2000 -11982 -1878
execute if score #scan_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -12000 -2000 -11982 -1878

execute if score #scan_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11982 -2000 -11963 -1878
execute if score #scan_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11982 -2000 -11963 -1878

execute if score #scan_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11963 -2000 -11945 -1878
execute if score #scan_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11963 -2000 -11945 -1878

execute if score #scan_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11945 -2000 -11926 -1878
execute if score #scan_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11945 -2000 -11926 -1878

execute if score #scan_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11926 -2000 -11908 -1878
execute if score #scan_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11926 -2000 -11908 -1878

execute if score #scan_sheepwars_ilots switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_ilots set value 2b
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #start_x_sheepwars_ilots switch.data -11999
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #start_y_sheepwars_ilots switch.data 101
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #start_z_sheepwars_ilots switch.data -1999
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #end_x_sheepwars_ilots switch.data -11909
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #end_y_sheepwars_ilots switch.data 192
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players set #end_z_sheepwars_ilots switch.data -1879
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_ilots switch.data = #start_x_sheepwars_ilots switch.data
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_ilots switch.data = #start_y_sheepwars_ilots switch.data
execute if score #scan_sheepwars_ilots switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_ilots switch.data = #start_z_sheepwars_ilots switch.data
execute if score #scan_sheepwars_ilots switch.data matches 1 run data modify storage switch:doors sheepwars_ilots set value []

execute if score #scan_sheepwars_ilots switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_ilots switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_ilots/scan_doors_on_marker

execute if score #scan_sheepwars_ilots switch.data matches 233 in minecraft:overworld run forceload remove -12000 -2000 -11982 -1878
execute if score #scan_sheepwars_ilots switch.data matches 233 in switch:game run forceload remove -12000 -2000 -11982 -1878

execute if score #scan_sheepwars_ilots switch.data matches 233 in minecraft:overworld run forceload remove -11982 -2000 -11963 -1878
execute if score #scan_sheepwars_ilots switch.data matches 233 in switch:game run forceload remove -11982 -2000 -11963 -1878

execute if score #scan_sheepwars_ilots switch.data matches 233 in minecraft:overworld run forceload remove -11963 -2000 -11945 -1878
execute if score #scan_sheepwars_ilots switch.data matches 233 in switch:game run forceload remove -11963 -2000 -11945 -1878

execute if score #scan_sheepwars_ilots switch.data matches 233 in minecraft:overworld run forceload remove -11945 -2000 -11926 -1878
execute if score #scan_sheepwars_ilots switch.data matches 233 in switch:game run forceload remove -11945 -2000 -11926 -1878

execute if score #scan_sheepwars_ilots switch.data matches 233 in minecraft:overworld run forceload remove -11926 -2000 -11908 -1878
execute if score #scan_sheepwars_ilots switch.data matches 233 in switch:game run forceload remove -11926 -2000 -11908 -1878

execute if score #scan_sheepwars_ilots switch.data matches 233 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_ilots","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_ilots switch.data matches 233 run data remove storage switch:maps to_scan.sheepwars_ilots
execute if score #scan_sheepwars_ilots switch.data matches 233 run scoreboard players reset #scan_sheepwars_ilots switch.data

execute if score #scan_sheepwars_ilots switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_ilots/scan_doors 1t

