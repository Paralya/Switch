
#> switch:maps/survival/nature_house/scan_doors
#
# @within	switch:maps/survival/nature_house/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nature_house switch.data 1

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add -8000 4000 -7977 4068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add -8000 4000 -7977 4068

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add -7977 4000 -7955 4068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add -7977 4000 -7955 4068

execute if score #scan_nature_house switch.data matches 1 in minecraft:overworld run forceload add -7955 4000 -7932 4068
execute if score #scan_nature_house switch.data matches 1 in switch:game run forceload add -7955 4000 -7932 4068

execute if score #scan_nature_house switch.data matches 1 run data modify storage switch:maps to_scan.nature_house set value 2b
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_x_nature_house switch.data -7999
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_y_nature_house switch.data 101
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #start_z_nature_house switch.data 4001
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_x_nature_house switch.data -7933
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_y_nature_house switch.data 136
execute if score #scan_nature_house switch.data matches 1 run scoreboard players set #end_z_nature_house switch.data 4067
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_x_nature_house switch.data = #start_x_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_y_nature_house switch.data = #start_y_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run scoreboard players operation #curr_z_nature_house switch.data = #start_z_nature_house switch.data
execute if score #scan_nature_house switch.data matches 1 run data modify storage switch:doors nature_house set value []

execute if score #scan_nature_house switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nature_house switch.data matches 30.. summon marker run function switch:maps/survival/nature_house/scan_doors_on_marker

execute if score #scan_nature_house switch.data matches 63 in minecraft:overworld run forceload remove -8000 4000 -7977 4068
execute if score #scan_nature_house switch.data matches 63 in switch:game run forceload remove -8000 4000 -7977 4068

execute if score #scan_nature_house switch.data matches 63 in minecraft:overworld run forceload remove -7977 4000 -7955 4068
execute if score #scan_nature_house switch.data matches 63 in switch:game run forceload remove -7977 4000 -7955 4068

execute if score #scan_nature_house switch.data matches 63 in minecraft:overworld run forceload remove -7955 4000 -7932 4068
execute if score #scan_nature_house switch.data matches 63 in switch:game run forceload remove -7955 4000 -7932 4068

execute if score #scan_nature_house switch.data matches 63 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nature_house","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nature_house switch.data matches 63 run data remove storage switch:maps to_scan.nature_house
execute if score #scan_nature_house switch.data matches 63 run scoreboard players reset #scan_nature_house switch.data

execute if score #scan_nature_house switch.data matches 1.. run schedule function switch:maps/survival/nature_house/scan_doors 1t

