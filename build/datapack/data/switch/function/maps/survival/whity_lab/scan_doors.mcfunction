
#> switch:maps/survival/whity_lab/scan_doors
#
# @within	switch:maps/survival/whity_lab/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_whity_lab switch.data 1

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -8000 2000 -7980 2102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add -8000 2000 -7980 2102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7980 2000 -7959 2102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add -7980 2000 -7959 2102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7959 2000 -7939 2102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add -7959 2000 -7939 2102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7939 2000 -7918 2102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add -7939 2000 -7918 2102

execute if score #scan_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7918 2000 -7898 2102
execute if score #scan_whity_lab switch.data matches 1 in switch:game run forceload add -7918 2000 -7898 2102

execute if score #scan_whity_lab switch.data matches 1 run data modify storage switch:maps to_scan.whity_lab set value 2b
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_x_whity_lab switch.data -7999
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_y_whity_lab switch.data 101
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #start_z_whity_lab switch.data 2001
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_x_whity_lab switch.data -7899
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_y_whity_lab switch.data 186
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players set #end_z_whity_lab switch.data 2101
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_x_whity_lab switch.data = #start_x_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_y_whity_lab switch.data = #start_y_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run scoreboard players operation #curr_z_whity_lab switch.data = #start_z_whity_lab switch.data
execute if score #scan_whity_lab switch.data matches 1 run data modify storage switch:doors whity_lab set value []

execute if score #scan_whity_lab switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_whity_lab switch.data matches 30.. summon marker run function switch:maps/survival/whity_lab/scan_doors_on_marker

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove -8000 2000 -7980 2102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove -8000 2000 -7980 2102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove -7980 2000 -7959 2102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove -7980 2000 -7959 2102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove -7959 2000 -7939 2102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove -7959 2000 -7939 2102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove -7939 2000 -7918 2102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove -7939 2000 -7918 2102

execute if score #scan_whity_lab switch.data matches 206 in minecraft:overworld run forceload remove -7918 2000 -7898 2102
execute if score #scan_whity_lab switch.data matches 206 in switch:game run forceload remove -7918 2000 -7898 2102

execute if score #scan_whity_lab switch.data matches 206 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"whity_lab","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_whity_lab switch.data matches 206 run data remove storage switch:maps to_scan.whity_lab
execute if score #scan_whity_lab switch.data matches 206 run scoreboard players reset #scan_whity_lab switch.data

execute if score #scan_whity_lab switch.data matches 1.. run schedule function switch:maps/survival/whity_lab/scan_doors 1t

