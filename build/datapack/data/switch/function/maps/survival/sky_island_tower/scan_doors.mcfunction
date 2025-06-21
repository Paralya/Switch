
#> switch:maps/survival/sky_island_tower/scan_doors
#
# @within	switch:maps/survival/sky_island_tower/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sky_island_tower switch.data 1

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77000 77000 77024 77094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add 77000 77000 77024 77094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77024 77000 77048 77094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add 77024 77000 77048 77094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77048 77000 77073 77094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add 77048 77000 77073 77094

execute if score #scan_sky_island_tower switch.data matches 1 in minecraft:overworld run forceload add 77073 77000 77097 77094
execute if score #scan_sky_island_tower switch.data matches 1 in switch:game run forceload add 77073 77000 77097 77094

execute if score #scan_sky_island_tower switch.data matches 1 run data modify storage switch:maps to_scan.sky_island_tower set value 2b
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_x_sky_island_tower switch.data 77001
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_y_sky_island_tower switch.data -63
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #start_z_sky_island_tower switch.data 77001
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_x_sky_island_tower switch.data 77096
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_y_sky_island_tower switch.data 80
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players set #end_z_sky_island_tower switch.data 77093
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_x_sky_island_tower switch.data = #start_x_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_y_sky_island_tower switch.data = #start_y_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run scoreboard players operation #curr_z_sky_island_tower switch.data = #start_z_sky_island_tower switch.data
execute if score #scan_sky_island_tower switch.data matches 1 run data modify storage switch:doors sky_island_tower set value []

execute if score #scan_sky_island_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sky_island_tower switch.data matches 30.. summon marker run function switch:maps/survival/sky_island_tower/scan_doors_on_marker

execute if score #scan_sky_island_tower switch.data matches 288 in minecraft:overworld run forceload remove 77000 77000 77024 77094
execute if score #scan_sky_island_tower switch.data matches 288 in switch:game run forceload remove 77000 77000 77024 77094

execute if score #scan_sky_island_tower switch.data matches 288 in minecraft:overworld run forceload remove 77024 77000 77048 77094
execute if score #scan_sky_island_tower switch.data matches 288 in switch:game run forceload remove 77024 77000 77048 77094

execute if score #scan_sky_island_tower switch.data matches 288 in minecraft:overworld run forceload remove 77048 77000 77073 77094
execute if score #scan_sky_island_tower switch.data matches 288 in switch:game run forceload remove 77048 77000 77073 77094

execute if score #scan_sky_island_tower switch.data matches 288 in minecraft:overworld run forceload remove 77073 77000 77097 77094
execute if score #scan_sky_island_tower switch.data matches 288 in switch:game run forceload remove 77073 77000 77097 77094

execute if score #scan_sky_island_tower switch.data matches 288 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sky_island_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sky_island_tower switch.data matches 288 run data remove storage switch:maps to_scan.sky_island_tower
execute if score #scan_sky_island_tower switch.data matches 288 run scoreboard players reset #scan_sky_island_tower switch.data

execute if score #scan_sky_island_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_island_tower/scan_doors 1t

