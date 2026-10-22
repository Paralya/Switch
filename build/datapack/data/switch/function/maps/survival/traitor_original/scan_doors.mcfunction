
#> switch:maps/survival/traitor_original/scan_doors
#
# @within	switch:maps/survival/traitor_original/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_traitor_original switch.data 1

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2000 2000 2018 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2000 2000 2018 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2018 2000 2037 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2018 2000 2037 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2037 2000 2055 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2037 2000 2055 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2055 2000 2074 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2055 2000 2074 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2074 2000 2092 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2074 2000 2092 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2092 2000 2110 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2092 2000 2110 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2110 2000 2129 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2110 2000 2129 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2129 2000 2147 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2129 2000 2147 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2147 2000 2166 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2147 2000 2166 2155

execute if score #scan_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2166 2000 2184 2155
execute if score #scan_traitor_original switch.data matches 1 in switch:game run forceload add 2166 2000 2184 2155

execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:maps to_scan.traitor_original set value 2b
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_x_traitor_original switch.data 2001
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_y_traitor_original switch.data 101
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #start_z_traitor_original switch.data 2001
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_x_traitor_original switch.data 2183
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_y_traitor_original switch.data 188
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players set #end_z_traitor_original switch.data 2154
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_x_traitor_original switch.data = #start_x_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_y_traitor_original switch.data = #start_y_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run scoreboard players operation #curr_z_traitor_original switch.data = #start_z_traitor_original switch.data
execute if score #scan_traitor_original switch.data matches 1 run data modify storage switch:doors traitor_original set value []

execute if score #scan_traitor_original switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_traitor_original switch.data matches 30.. summon marker run function switch:maps/survival/traitor_original/scan_doors_on_marker

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2000 2000 2018 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2000 2000 2018 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2018 2000 2037 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2018 2000 2037 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2037 2000 2055 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2037 2000 2055 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2055 2000 2074 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2055 2000 2074 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2074 2000 2092 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2074 2000 2092 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2092 2000 2110 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2092 2000 2110 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2110 2000 2129 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2110 2000 2129 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2129 2000 2147 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2129 2000 2147 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2147 2000 2166 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2147 2000 2166 2155

execute if score #scan_traitor_original switch.data matches 527 in minecraft:overworld run forceload remove 2166 2000 2184 2155
execute if score #scan_traitor_original switch.data matches 527 in switch:game run forceload remove 2166 2000 2184 2155

execute if score #scan_traitor_original switch.data matches 527 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"traitor_original","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_traitor_original switch.data matches 527 run data remove storage switch:maps to_scan.traitor_original
execute if score #scan_traitor_original switch.data matches 527 run scoreboard players reset #scan_traitor_original switch.data

execute if score #scan_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/scan_doors 1t

