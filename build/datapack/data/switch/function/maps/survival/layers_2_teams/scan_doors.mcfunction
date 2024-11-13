
#> switch:maps/survival/layers_2_teams/scan_doors
#
# @within	switch:maps/survival/layers_2_teams/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_layers_2_teams switch.data 1

execute if score #scan_layers_2_teams switch.data matches 1 in minecraft:overworld run forceload add 26982 26969 27000 27031
execute if score #scan_layers_2_teams switch.data matches 1 in switch:game run forceload add 26982 26969 27000 27031

execute if score #scan_layers_2_teams switch.data matches 1 in minecraft:overworld run forceload add 27000 26969 27018 27031
execute if score #scan_layers_2_teams switch.data matches 1 in switch:game run forceload add 27000 26969 27018 27031

execute if score #scan_layers_2_teams switch.data matches 1 run data modify storage switch:maps to_scan.layers_2_teams set value 2b
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #start_x_layers_2_teams switch.data 26983
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #start_y_layers_2_teams switch.data 1
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #start_z_layers_2_teams switch.data 26970
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #end_x_layers_2_teams switch.data 27017
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #end_y_layers_2_teams switch.data 60
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players set #end_z_layers_2_teams switch.data 27030
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players operation #curr_x_layers_2_teams switch.data = #start_x_layers_2_teams switch.data
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players operation #curr_y_layers_2_teams switch.data = #start_y_layers_2_teams switch.data
execute if score #scan_layers_2_teams switch.data matches 1 run scoreboard players operation #curr_z_layers_2_teams switch.data = #start_z_layers_2_teams switch.data
execute if score #scan_layers_2_teams switch.data matches 1 run data modify storage switch:doors layers_2_teams set value []


execute if score #scan_layers_2_teams switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_layers_2_teams switch.data matches 30.. summon marker run function switch:maps/survival/layers_2_teams/scan_doors_on_marker

execute if score #scan_layers_2_teams switch.data matches 56 in minecraft:overworld run forceload remove 26982 26969 27000 27031
execute if score #scan_layers_2_teams switch.data matches 56 in switch:game run forceload remove 26982 26969 27000 27031

execute if score #scan_layers_2_teams switch.data matches 56 in minecraft:overworld run forceload remove 27000 26969 27018 27031
execute if score #scan_layers_2_teams switch.data matches 56 in switch:game run forceload remove 27000 26969 27018 27031

execute if score #scan_layers_2_teams switch.data matches 56 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"layers_2_teams","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_layers_2_teams switch.data matches 56 run data remove storage switch:maps to_scan.layers_2_teams
execute if score #scan_layers_2_teams switch.data matches 56 run scoreboard players reset #scan_layers_2_teams switch.data

execute if score #scan_layers_2_teams switch.data matches 1.. run schedule function switch:maps/survival/layers_2_teams/scan_doors 1t
