
#> switch:maps/survival/scary_labyrinth/scan_doors
#
# @within	switch:maps/survival/scary_labyrinth/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_scary_labyrinth switch.data 1

execute if score #scan_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60000 60000 60037 60066
execute if score #scan_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60000 60000 60037 60066

execute if score #scan_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60037 60000 60074 60066
execute if score #scan_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60037 60000 60074 60066

execute if score #scan_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60074 60000 60110 60066
execute if score #scan_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60074 60000 60110 60066

execute if score #scan_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60110 60000 60147 60066
execute if score #scan_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60110 60000 60147 60066

execute if score #scan_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60147 60000 60184 60066
execute if score #scan_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60147 60000 60184 60066

execute if score #scan_scary_labyrinth switch.data matches 1 run data modify storage switch:maps to_scan.scary_labyrinth set value 2b
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #start_x_scary_labyrinth switch.data 60001
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #start_y_scary_labyrinth switch.data 1
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #start_z_scary_labyrinth switch.data 60001
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #end_x_scary_labyrinth switch.data 60183
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #end_y_scary_labyrinth switch.data 72
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players set #end_z_scary_labyrinth switch.data 60065
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players operation #curr_x_scary_labyrinth switch.data = #start_x_scary_labyrinth switch.data
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players operation #curr_y_scary_labyrinth switch.data = #start_y_scary_labyrinth switch.data
execute if score #scan_scary_labyrinth switch.data matches 1 run scoreboard players operation #curr_z_scary_labyrinth switch.data = #start_z_scary_labyrinth switch.data
execute if score #scan_scary_labyrinth switch.data matches 1 run data modify storage switch:doors scary_labyrinth set value []

execute if score #scan_scary_labyrinth switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_scary_labyrinth switch.data matches 30.. summon marker run function switch:maps/survival/scary_labyrinth/scan_doors_on_marker

execute if score #scan_scary_labyrinth switch.data matches 202 in minecraft:overworld run forceload remove 60000 60000 60037 60066
execute if score #scan_scary_labyrinth switch.data matches 202 in switch:game run forceload remove 60000 60000 60037 60066

execute if score #scan_scary_labyrinth switch.data matches 202 in minecraft:overworld run forceload remove 60037 60000 60074 60066
execute if score #scan_scary_labyrinth switch.data matches 202 in switch:game run forceload remove 60037 60000 60074 60066

execute if score #scan_scary_labyrinth switch.data matches 202 in minecraft:overworld run forceload remove 60074 60000 60110 60066
execute if score #scan_scary_labyrinth switch.data matches 202 in switch:game run forceload remove 60074 60000 60110 60066

execute if score #scan_scary_labyrinth switch.data matches 202 in minecraft:overworld run forceload remove 60110 60000 60147 60066
execute if score #scan_scary_labyrinth switch.data matches 202 in switch:game run forceload remove 60110 60000 60147 60066

execute if score #scan_scary_labyrinth switch.data matches 202 in minecraft:overworld run forceload remove 60147 60000 60184 60066
execute if score #scan_scary_labyrinth switch.data matches 202 in switch:game run forceload remove 60147 60000 60184 60066

execute if score #scan_scary_labyrinth switch.data matches 202 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"scary_labyrinth","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_scary_labyrinth switch.data matches 202 run data remove storage switch:maps to_scan.scary_labyrinth
execute if score #scan_scary_labyrinth switch.data matches 202 run scoreboard players reset #scan_scary_labyrinth switch.data

execute if score #scan_scary_labyrinth switch.data matches 1.. run schedule function switch:maps/survival/scary_labyrinth/scan_doors 1t

