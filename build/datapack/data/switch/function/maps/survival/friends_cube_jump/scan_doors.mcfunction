
#> switch:maps/survival/friends_cube_jump/scan_doors
#
# @within	switch:maps/survival/friends_cube_jump/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_cube_jump switch.data 1

execute if score #scan_friends_cube_jump switch.data matches 1 in minecraft:overworld run forceload add 4000 0 4018 32
execute if score #scan_friends_cube_jump switch.data matches 1 in switch:game run forceload add 4000 0 4018 32

execute if score #scan_friends_cube_jump switch.data matches 1 in minecraft:overworld run forceload add 4018 0 4035 32
execute if score #scan_friends_cube_jump switch.data matches 1 in switch:game run forceload add 4018 0 4035 32

execute if score #scan_friends_cube_jump switch.data matches 1 run data modify storage switch:maps to_scan.friends_cube_jump set value 2b
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #start_x_friends_cube_jump switch.data 4001
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #start_y_friends_cube_jump switch.data 101
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #start_z_friends_cube_jump switch.data 1
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #end_x_friends_cube_jump switch.data 4034
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #end_y_friends_cube_jump switch.data 191
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players set #end_z_friends_cube_jump switch.data 31
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players operation #curr_x_friends_cube_jump switch.data = #start_x_friends_cube_jump switch.data
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players operation #curr_y_friends_cube_jump switch.data = #start_y_friends_cube_jump switch.data
execute if score #scan_friends_cube_jump switch.data matches 1 run scoreboard players operation #curr_z_friends_cube_jump switch.data = #start_z_friends_cube_jump switch.data
execute if score #scan_friends_cube_jump switch.data matches 1 run data modify storage switch:doors friends_cube_jump set value []

execute if score #scan_friends_cube_jump switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_cube_jump switch.data matches 30.. summon marker run function switch:maps/survival/friends_cube_jump/scan_doors_on_marker

execute if score #scan_friends_cube_jump switch.data matches 50 in minecraft:overworld run forceload remove 4000 0 4018 32
execute if score #scan_friends_cube_jump switch.data matches 50 in switch:game run forceload remove 4000 0 4018 32

execute if score #scan_friends_cube_jump switch.data matches 50 in minecraft:overworld run forceload remove 4018 0 4035 32
execute if score #scan_friends_cube_jump switch.data matches 50 in switch:game run forceload remove 4018 0 4035 32

execute if score #scan_friends_cube_jump switch.data matches 50 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_cube_jump","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_cube_jump switch.data matches 50 run data remove storage switch:maps to_scan.friends_cube_jump
execute if score #scan_friends_cube_jump switch.data matches 50 run scoreboard players reset #scan_friends_cube_jump switch.data

execute if score #scan_friends_cube_jump switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_jump/scan_doors 1t

