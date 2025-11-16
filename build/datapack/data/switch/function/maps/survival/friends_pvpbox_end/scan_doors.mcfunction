
#> switch:maps/survival/friends_pvpbox_end/scan_doors
#
# @within	switch:maps/survival/friends_pvpbox_end/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_pvpbox_end switch.data 1

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13000 13000 13023 13090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13000 13000 13023 13090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13023 13000 13046 13090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13023 13000 13046 13090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13046 13000 13068 13090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13046 13000 13068 13090

execute if score #scan_friends_pvpbox_end switch.data matches 1 in minecraft:overworld run forceload add 13068 13000 13091 13090
execute if score #scan_friends_pvpbox_end switch.data matches 1 in switch:game run forceload add 13068 13000 13091 13090

execute if score #scan_friends_pvpbox_end switch.data matches 1 run data modify storage switch:maps to_scan.friends_pvpbox_end set value 2b
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_x_friends_pvpbox_end switch.data 13001
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_y_friends_pvpbox_end switch.data 101
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #start_z_friends_pvpbox_end switch.data 13001
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_x_friends_pvpbox_end switch.data 13090
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_y_friends_pvpbox_end switch.data 132
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players set #end_z_friends_pvpbox_end switch.data 13089
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_x_friends_pvpbox_end switch.data = #start_x_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_y_friends_pvpbox_end switch.data = #start_y_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run scoreboard players operation #curr_z_friends_pvpbox_end switch.data = #start_z_friends_pvpbox_end switch.data
execute if score #scan_friends_pvpbox_end switch.data matches 1 run data modify storage switch:doors friends_pvpbox_end set value []

execute if score #scan_friends_pvpbox_end switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_pvpbox_end switch.data matches 30.. summon marker run function switch:maps/survival/friends_pvpbox_end/scan_doors_on_marker

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 13000 13000 13023 13090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 13000 13000 13023 13090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 13023 13000 13046 13090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 13023 13000 13046 13090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 13046 13000 13068 13090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 13046 13000 13068 13090

execute if score #scan_friends_pvpbox_end switch.data matches 82 in minecraft:overworld run forceload remove 13068 13000 13091 13090
execute if score #scan_friends_pvpbox_end switch.data matches 82 in switch:game run forceload remove 13068 13000 13091 13090

execute if score #scan_friends_pvpbox_end switch.data matches 82 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_pvpbox_end","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_pvpbox_end switch.data matches 82 run data remove storage switch:maps to_scan.friends_pvpbox_end
execute if score #scan_friends_pvpbox_end switch.data matches 82 run scoreboard players reset #scan_friends_pvpbox_end switch.data

execute if score #scan_friends_pvpbox_end switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/scan_doors 1t

