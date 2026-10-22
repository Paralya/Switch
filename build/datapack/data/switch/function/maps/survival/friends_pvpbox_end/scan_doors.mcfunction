
#> switch:maps/survival/friends_pvpbox_end/scan_doors
#
# @within	switch:maps/survival/friends_pvpbox_end/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_pvpbox_end switch.data 1

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 0 4000 23 4090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 0 4000 23 4090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 23 4000 46 4090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 23 4000 46 4090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 46 4000 68 4090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 46 4000 68 4090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 68 4000 91 4090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 68 4000 91 4090

execute if score #scan_friends_pvpbox_end switch.data matches 1 run data modify storage switch:maps to_scan.friends_pvpbox_end set value 2b
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_x_friends_pvpbox_end switch.data 1
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_y_friends_pvpbox_end switch.data 101
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_z_friends_pvpbox_end switch.data 4001
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_x_friends_pvpbox_end switch.data 90
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_y_friends_pvpbox_end switch.data 132
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_z_friends_pvpbox_end switch.data 4089
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_x_friends_pvpbox_end switch.data = #start_x_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_y_friends_pvpbox_end switch.data = #start_y_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_z_friends_pvpbox_end switch.data = #start_z_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run data modify storage switch:doors friends_pvpbox_end set value []

execute if score #scan_friends_pvpbox_end switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_pvpbox_end switch.data matches 30.. summon marker run function switch:maps/survival/friends_pvpbox_end/scan_doors_on_marker

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 0 4000 23 4090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 0 4000 23 4090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 23 4000 46 4090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 23 4000 46 4090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 46 4000 68 4090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 46 4000 68 4090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 68 4000 91 4090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 68 4000 91 4090

execute if score #scan_friends_pvpbox_end switch.data matches 82 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_pvpbox_end","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_pvpbox_end switch.data matches 82 run data remove storage switch:maps to_scan.friends_pvpbox_end
execute if score #scan_friends_pvpbox_end switch.data matches 82 run scoreboard players reset #scan_friends_pvpbox_end switch.data

execute if score #scan_friends_pvpbox_end switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/scan_doors 1t

