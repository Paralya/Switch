
#> switch:maps/survival/sky_island_tower/scan_doors
#
# @within	switch:maps/survival/sky_island_tower/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sky_island_tower switch.data 1

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -8000 8000 -7976 8094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add -8000 8000 -7976 8094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7976 8000 -7952 8094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add -7976 8000 -7952 8094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7952 8000 -7927 8094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add -7952 8000 -7927 8094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add -7927 8000 -7903 8094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add -7927 8000 -7903 8094

execute if score #scan_sky_island_tower switch.data matches 1 run data modify storage switch:maps to_scan.sky_island_tower set value 2b
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_x_sky_island_tower switch.data -7999
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_y_sky_island_tower switch.data 101
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_z_sky_island_tower switch.data 8001
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_x_sky_island_tower switch.data -7904
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_y_sky_island_tower switch.data 243
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_z_sky_island_tower switch.data 8093
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_x_sky_island_tower switch.data = #start_x_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_y_sky_island_tower switch.data = #start_y_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_z_sky_island_tower switch.data = #start_z_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run data modify storage switch:doors sky_island_tower set value []

execute if score #scan_sky_island_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sky_island_tower switch.data matches 30.. summon marker run function switch:maps/survival/sky_island_tower/scan_doors_on_marker

execute if score #scan_sky_island_tower switch.data matches 286 in minecraft:overworld run forceload remove -8000 8000 -7976 8094
execute if score #scan_sky_island_tower switch.data matches 286 in switch:game run forceload remove -8000 8000 -7976 8094

execute if score #scan_sky_island_tower switch.data matches 286 in minecraft:overworld run forceload remove -7976 8000 -7952 8094
execute if score #scan_sky_island_tower switch.data matches 286 in switch:game run forceload remove -7976 8000 -7952 8094

execute if score #scan_sky_island_tower switch.data matches 286 in minecraft:overworld run forceload remove -7952 8000 -7927 8094
execute if score #scan_sky_island_tower switch.data matches 286 in switch:game run forceload remove -7952 8000 -7927 8094

execute if score #scan_sky_island_tower switch.data matches 286 in minecraft:overworld run forceload remove -7927 8000 -7903 8094
execute if score #scan_sky_island_tower switch.data matches 286 in switch:game run forceload remove -7927 8000 -7903 8094

execute if score #scan_sky_island_tower switch.data matches 286 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sky_island_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sky_island_tower switch.data matches 286 run data remove storage switch:maps to_scan.sky_island_tower
execute if score #scan_sky_island_tower switch.data matches 286 run scoreboard players reset #scan_sky_island_tower switch.data

execute if score #scan_sky_island_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_island_tower/scan_doors 1t

