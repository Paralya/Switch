
#> switch:maps/survival/laser_game/scan_doors
#
# @within	switch:maps/survival/laser_game/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_laser_game switch.data 1

execute if score #scan_laser_game switch.data matches 1 in minecraft:overworld run forceload add 500 500 526 552
execute if score #scan_laser_game switch.data matches 1 in switch:game run forceload add 500 500 526 552

execute if score #scan_laser_game switch.data matches 1 in minecraft:overworld run forceload add 526 500 552 552
execute if score #scan_laser_game switch.data matches 1 in switch:game run forceload add 526 500 552 552

execute if score #scan_laser_game switch.data matches 1 run data modify storage switch:maps to_scan.laser_game set value 2b
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #start_x_laser_game switch.data 501
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #start_y_laser_game switch.data 101
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #start_z_laser_game switch.data 501
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #end_x_laser_game switch.data 551
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #end_y_laser_game switch.data 142
execute if score #scan_laser_game switch.data matches 1 run scoreboard players set #end_z_laser_game switch.data 551
execute if score #scan_laser_game switch.data matches 1 run scoreboard players operation #curr_x_laser_game switch.data = #start_x_laser_game switch.data
execute if score #scan_laser_game switch.data matches 1 run scoreboard players operation #curr_y_laser_game switch.data = #start_y_laser_game switch.data
execute if score #scan_laser_game switch.data matches 1 run scoreboard players operation #curr_z_laser_game switch.data = #start_z_laser_game switch.data
execute if score #scan_laser_game switch.data matches 1 run data modify storage switch:doors laser_game set value []


execute if score #scan_laser_game switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_laser_game switch.data matches 30.. summon marker run function switch:maps/survival/laser_game/scan_doors_on_marker

execute if score #scan_laser_game switch.data matches 52 in minecraft:overworld run forceload remove 500 500 526 552
execute if score #scan_laser_game switch.data matches 52 in switch:game run forceload remove 500 500 526 552

execute if score #scan_laser_game switch.data matches 52 in minecraft:overworld run forceload remove 526 500 552 552
execute if score #scan_laser_game switch.data matches 52 in switch:game run forceload remove 526 500 552 552

execute if score #scan_laser_game switch.data matches 52 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"laser_game","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_laser_game switch.data matches 52 run data remove storage switch:maps to_scan.laser_game
execute if score #scan_laser_game switch.data matches 52 run scoreboard players reset #scan_laser_game switch.data

execute if score #scan_laser_game switch.data matches 1.. run schedule function switch:maps/survival/laser_game/scan_doors 1t

