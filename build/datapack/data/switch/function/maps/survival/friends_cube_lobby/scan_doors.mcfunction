
#> switch:maps/survival/friends_cube_lobby/scan_doors
#
# @within	switch:maps/survival/friends_cube_lobby/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_cube_lobby switch.data 1

execute if score #scan_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -4000 4000 -3980 4080
execute if score #scan_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -4000 4000 -3980 4080

execute if score #scan_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3980 4000 -3960 4080
execute if score #scan_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3980 4000 -3960 4080

execute if score #scan_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3960 4000 -3940 4080
execute if score #scan_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3960 4000 -3940 4080

execute if score #scan_friends_cube_lobby switch.data matches 1 in minecraft:overworld run forceload add -3940 4000 -3920 4080
execute if score #scan_friends_cube_lobby switch.data matches 1 in switch:game run forceload add -3940 4000 -3920 4080

execute if score #scan_friends_cube_lobby switch.data matches 1 run data modify storage switch:maps to_scan.friends_cube_lobby set value 2b
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #start_x_friends_cube_lobby switch.data -3999
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #start_y_friends_cube_lobby switch.data 101
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #start_z_friends_cube_lobby switch.data 4001
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #end_x_friends_cube_lobby switch.data -3921
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #end_y_friends_cube_lobby switch.data 144
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players set #end_z_friends_cube_lobby switch.data 4079
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players operation #curr_x_friends_cube_lobby switch.data = #start_x_friends_cube_lobby switch.data
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players operation #curr_y_friends_cube_lobby switch.data = #start_y_friends_cube_lobby switch.data
execute if score #scan_friends_cube_lobby switch.data matches 1 run scoreboard players operation #curr_z_friends_cube_lobby switch.data = #start_z_friends_cube_lobby switch.data
execute if score #scan_friends_cube_lobby switch.data matches 1 run data modify storage switch:doors friends_cube_lobby set value []

execute if score #scan_friends_cube_lobby switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_cube_lobby switch.data matches 30.. summon marker run function switch:maps/survival/friends_cube_lobby/scan_doors_on_marker

execute if score #scan_friends_cube_lobby switch.data matches 85 in minecraft:overworld run forceload remove -4000 4000 -3980 4080
execute if score #scan_friends_cube_lobby switch.data matches 85 in switch:game run forceload remove -4000 4000 -3980 4080

execute if score #scan_friends_cube_lobby switch.data matches 85 in minecraft:overworld run forceload remove -3980 4000 -3960 4080
execute if score #scan_friends_cube_lobby switch.data matches 85 in switch:game run forceload remove -3980 4000 -3960 4080

execute if score #scan_friends_cube_lobby switch.data matches 85 in minecraft:overworld run forceload remove -3960 4000 -3940 4080
execute if score #scan_friends_cube_lobby switch.data matches 85 in switch:game run forceload remove -3960 4000 -3940 4080

execute if score #scan_friends_cube_lobby switch.data matches 85 in minecraft:overworld run forceload remove -3940 4000 -3920 4080
execute if score #scan_friends_cube_lobby switch.data matches 85 in switch:game run forceload remove -3940 4000 -3920 4080

execute if score #scan_friends_cube_lobby switch.data matches 85 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_cube_lobby","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_cube_lobby switch.data matches 85 run data remove storage switch:maps to_scan.friends_cube_lobby
execute if score #scan_friends_cube_lobby switch.data matches 85 run scoreboard players reset #scan_friends_cube_lobby switch.data

execute if score #scan_friends_cube_lobby switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_lobby/scan_doors 1t

