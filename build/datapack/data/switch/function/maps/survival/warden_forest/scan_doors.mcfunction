
#> switch:maps/survival/warden_forest/scan_doors
#
# @within	switch:maps/survival/warden_forest/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_warden_forest switch.data 1

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4013 2013 4032 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4013 2013 4032 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4032 2013 4051 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4032 2013 4051 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4051 2013 4070 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4051 2013 4070 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4070 2013 4088 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4070 2013 4088 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4088 2013 4107 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4088 2013 4107 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4107 2013 4126 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4107 2013 4126 2145

execute if score #scan_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 4126 2013 4145 2145
execute if score #scan_warden_forest switch.data matches 1 in switch:game run forceload add 4126 2013 4145 2145

execute if score #scan_warden_forest switch.data matches 1 run data modify storage switch:maps to_scan.warden_forest set value 2b
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_x_warden_forest switch.data 4014
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_y_warden_forest switch.data 101
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #start_z_warden_forest switch.data 2014
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_x_warden_forest switch.data 4144
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_y_warden_forest switch.data 118
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players set #end_z_warden_forest switch.data 2144
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_x_warden_forest switch.data = #start_x_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_y_warden_forest switch.data = #start_y_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run scoreboard players operation #curr_z_warden_forest switch.data = #start_z_warden_forest switch.data
execute if score #scan_warden_forest switch.data matches 1 run data modify storage switch:doors warden_forest set value []

execute if score #scan_warden_forest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_warden_forest switch.data matches 30.. summon marker run function switch:maps/survival/warden_forest/scan_doors_on_marker

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4013 2013 4032 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4013 2013 4032 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4032 2013 4051 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4032 2013 4051 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4051 2013 4070 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4051 2013 4070 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4070 2013 4088 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4070 2013 4088 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4088 2013 4107 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4088 2013 4107 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4107 2013 4126 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4107 2013 4126 2145

execute if score #scan_warden_forest switch.data matches 92 in minecraft:overworld run forceload remove 4126 2013 4145 2145
execute if score #scan_warden_forest switch.data matches 92 in switch:game run forceload remove 4126 2013 4145 2145

execute if score #scan_warden_forest switch.data matches 92 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"warden_forest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_warden_forest switch.data matches 92 run data remove storage switch:maps to_scan.warden_forest
execute if score #scan_warden_forest switch.data matches 92 run scoreboard players reset #scan_warden_forest switch.data

execute if score #scan_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/scan_doors 1t

