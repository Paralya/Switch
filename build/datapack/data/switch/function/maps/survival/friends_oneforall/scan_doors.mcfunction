
#> switch:maps/survival/friends_oneforall/scan_doors
#
# @within	switch:maps/survival/friends_oneforall/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_oneforall switch.data 1

execute if score #scan_friends_oneforall switch.data matches 1 in minecraft:overworld run forceload add 7977 7976 8001 8024
execute if score #scan_friends_oneforall switch.data matches 1 in switch:game run forceload add 7977 7976 8001 8024

execute if score #scan_friends_oneforall switch.data matches 1 in minecraft:overworld run forceload add 8001 7976 8025 8024
execute if score #scan_friends_oneforall switch.data matches 1 in switch:game run forceload add 8001 7976 8025 8024

execute if score #scan_friends_oneforall switch.data matches 1 run data modify storage switch:maps to_scan.friends_oneforall set value 2b
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #start_x_friends_oneforall switch.data 7978
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #start_y_friends_oneforall switch.data 1
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #start_z_friends_oneforall switch.data 7977
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #end_x_friends_oneforall switch.data 8024
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #end_y_friends_oneforall switch.data 30
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players set #end_z_friends_oneforall switch.data 8023
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players operation #curr_x_friends_oneforall switch.data = #start_x_friends_oneforall switch.data
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players operation #curr_y_friends_oneforall switch.data = #start_y_friends_oneforall switch.data
execute if score #scan_friends_oneforall switch.data matches 1 run scoreboard players operation #curr_z_friends_oneforall switch.data = #start_z_friends_oneforall switch.data
execute if score #scan_friends_oneforall switch.data matches 1 run data modify storage switch:doors friends_oneforall set value []


execute if score #scan_friends_oneforall switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_oneforall switch.data matches 30.. summon marker run function switch:maps/survival/friends_oneforall/scan_doors_on_marker

execute if score #scan_friends_oneforall switch.data matches 44 in minecraft:overworld run forceload remove 7977 7976 8001 8024
execute if score #scan_friends_oneforall switch.data matches 44 in switch:game run forceload remove 7977 7976 8001 8024

execute if score #scan_friends_oneforall switch.data matches 44 in minecraft:overworld run forceload remove 8001 7976 8025 8024
execute if score #scan_friends_oneforall switch.data matches 44 in switch:game run forceload remove 8001 7976 8025 8024

execute if score #scan_friends_oneforall switch.data matches 44 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_oneforall","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_oneforall switch.data matches 44 run data remove storage switch:maps to_scan.friends_oneforall
execute if score #scan_friends_oneforall switch.data matches 44 run scoreboard players reset #scan_friends_oneforall switch.data

execute if score #scan_friends_oneforall switch.data matches 1.. run schedule function switch:maps/survival/friends_oneforall/scan_doors 1t

