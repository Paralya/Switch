
#> switch:maps/survival/friends_pvpbox_ice/scan_doors
#
# @within	switch:maps/survival/friends_pvpbox_ice/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_friends_pvpbox_ice switch.data 1

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 11000 11000 11022 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 11000 11000 11022 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 11022 11000 11043 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 11022 11000 11043 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 1 in minecraft:overworld run forceload add 11043 11000 11065 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 1 in switch:game run forceload add 11043 11000 11065 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 1 run data modify storage switch:maps to_scan.friends_pvpbox_ice set value 2b
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_x_friends_pvpbox_ice switch.data 11001
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_y_friends_pvpbox_ice switch.data 101
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #start_z_friends_pvpbox_ice switch.data 11001
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_x_friends_pvpbox_ice switch.data 11064
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_y_friends_pvpbox_ice switch.data 141
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #end_z_friends_pvpbox_ice switch.data 11064
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_x_friends_pvpbox_ice switch.data = #start_x_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_y_friends_pvpbox_ice switch.data = #start_y_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run scoreboard players operation #curr_z_friends_pvpbox_ice switch.data = #start_z_friends_pvpbox_ice switch.data
execute if score #scan_friends_pvpbox_ice switch.data matches 1 run data modify storage switch:doors friends_pvpbox_ice set value []

execute if score #scan_friends_pvpbox_ice switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_friends_pvpbox_ice switch.data matches 30.. summon marker run function switch:maps/survival/friends_pvpbox_ice/scan_doors_on_marker

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 11000 11000 11022 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 11000 11000 11022 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 11022 11000 11043 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 11022 11000 11043 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 64 in minecraft:overworld run forceload remove 11043 11000 11065 11065
execute if score #scan_friends_pvpbox_ice switch.data matches 64 in switch:game run forceload remove 11043 11000 11065 11065

execute if score #scan_friends_pvpbox_ice switch.data matches 64 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"friends_pvpbox_ice","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_friends_pvpbox_ice switch.data matches 64 run data remove storage switch:maps to_scan.friends_pvpbox_ice
execute if score #scan_friends_pvpbox_ice switch.data matches 64 run scoreboard players reset #scan_friends_pvpbox_ice switch.data

execute if score #scan_friends_pvpbox_ice switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_ice/scan_doors 1t

