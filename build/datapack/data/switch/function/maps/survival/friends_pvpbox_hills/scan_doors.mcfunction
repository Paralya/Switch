
#> switch:maps/survival/friends_pvpbox_hills/scan_doors
#
# @within	switch:maps/survival/friends_pvpbox_hills/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_pvpbox_hills switch.data 1

execute if score #scan_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12000 12000 12022 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12000 12000 12022 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12022 12000 12045 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12022 12000 12045 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12045 12000 12068 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12045 12000 12068 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 1 in minecraft:overworld run forceload add 12068 12000 12090 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 1 in switch:game run forceload add 12068 12000 12090 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 1 run data modify storage switch:maps to_scan.friends_pvpbox_hills set value 2b
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #start_x_friends_pvpbox_hills switch.data 12001
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #start_y_friends_pvpbox_hills switch.data 101
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #start_z_friends_pvpbox_hills switch.data 12001
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #end_x_friends_pvpbox_hills switch.data 12089
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #end_y_friends_pvpbox_hills switch.data 166
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #end_z_friends_pvpbox_hills switch.data 12089
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players operation #curr_x_friends_pvpbox_hills switch.data = #start_x_friends_pvpbox_hills switch.data
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players operation #curr_y_friends_pvpbox_hills switch.data = #start_y_friends_pvpbox_hills switch.data
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run scoreboard players operation #curr_z_friends_pvpbox_hills switch.data = #start_z_friends_pvpbox_hills switch.data
execute if score #scan_friends_pvpbox_hills switch.data matches 1 run data modify storage switch:doors friends_pvpbox_hills set value []

execute if score #scan_friends_pvpbox_hills switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_pvpbox_hills switch.data matches 30.. summon marker run function switch:maps/survival/friends_pvpbox_hills/scan_doors_on_marker

execute if score #scan_friends_pvpbox_hills switch.data matches 135 in minecraft:overworld run forceload remove 12000 12000 12022 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 135 in switch:game run forceload remove 12000 12000 12022 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 135 in minecraft:overworld run forceload remove 12022 12000 12045 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 135 in switch:game run forceload remove 12022 12000 12045 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 135 in minecraft:overworld run forceload remove 12045 12000 12068 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 135 in switch:game run forceload remove 12045 12000 12068 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 135 in minecraft:overworld run forceload remove 12068 12000 12090 12090
execute if score #scan_friends_pvpbox_hills switch.data matches 135 in switch:game run forceload remove 12068 12000 12090 12090

execute if score #scan_friends_pvpbox_hills switch.data matches 135 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_pvpbox_hills","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_pvpbox_hills switch.data matches 135 run data remove storage switch:maps to_scan.friends_pvpbox_hills
execute if score #scan_friends_pvpbox_hills switch.data matches 135 run scoreboard players reset #scan_friends_pvpbox_hills switch.data

execute if score #scan_friends_pvpbox_hills switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_hills/scan_doors 1t

