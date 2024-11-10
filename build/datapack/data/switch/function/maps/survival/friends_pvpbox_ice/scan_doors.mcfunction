
#> switch:maps/survival/friends_pvpbox_ice/scan_doors
#
# @within	switch:maps/survival/friends_pvpbox_ice/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_pvpbox_ice switch.data 1

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 10964 10968 10986 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 10964 10968 10986 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 10986 10968 11007 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 10986 10968 11007 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 11007 10968 11029 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 11007 10968 11029 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 1 run data modify storage switch:maps to_scan.friends_pvpbox_ice set value 2b
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_x_friends_pvpbox_ice switch.data 10965
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_y_friends_pvpbox_ice switch.data 1
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_z_friends_pvpbox_ice switch.data 10969
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_x_friends_pvpbox_ice switch.data 11028
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_y_friends_pvpbox_ice switch.data 41
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_z_friends_pvpbox_ice switch.data 11032
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_x_friends_pvpbox_ice switch.data = #start_x_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_y_friends_pvpbox_ice switch.data = #start_y_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_z_friends_pvpbox_ice switch.data = #start_z_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run data modify storage switch:doors friends_pvpbox_ice set value []


execute if score #scan_friends_pvpbox_ice switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_pvpbox_ice switch.data matches 30.. summon marker run function switch:maps/survival/friends_pvpbox_ice/scan_doors_on_marker

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 10964 10968 10986 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 10964 10968 10986 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 10986 10968 11007 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 10986 10968 11007 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 11007 10968 11029 11033
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 11007 10968 11029 11033

execute if score #scan_friends_pvpbox_ice switch.data matches 64 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_pvpbox_ice","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_pvpbox_ice switch.data matches 64 run data remove storage switch:maps to_scan.friends_pvpbox_ice
execute if score #scan_friends_pvpbox_ice switch.data matches 64 run scoreboard players reset #scan_friends_pvpbox_ice switch.data

execute if score #scan_friends_pvpbox_ice switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_ice/scan_doors 1t

