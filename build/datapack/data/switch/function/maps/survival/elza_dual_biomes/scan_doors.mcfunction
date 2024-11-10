
#> switch:maps/survival/elza_dual_biomes/scan_doors
#
# @within	switch:maps/survival/elza_dual_biomes/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_elza_dual_biomes switch.data 1

execute if score #scan_elza_dual_biomes switch.data matches 1 in minecraft:overworld run forceload add 155000 155000 155021 155042
execute if score #scan_elza_dual_biomes switch.data matches 1 in switch:game run forceload add 155000 155000 155021 155042

execute if score #scan_elza_dual_biomes switch.data matches 1 in minecraft:overworld run forceload add 155021 155000 155042 155042
execute if score #scan_elza_dual_biomes switch.data matches 1 in switch:game run forceload add 155021 155000 155042 155042

execute if score #scan_elza_dual_biomes switch.data matches 1 run data modify storage switch:maps to_scan.elza_dual_biomes set value 2b
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #start_x_elza_dual_biomes switch.data 155001
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #start_y_elza_dual_biomes switch.data 1
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #start_z_elza_dual_biomes switch.data 155001
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #end_x_elza_dual_biomes switch.data 155041
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #end_y_elza_dual_biomes switch.data 74
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players set #end_z_elza_dual_biomes switch.data 155041
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players operation #curr_x_elza_dual_biomes switch.data = #start_x_elza_dual_biomes switch.data
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players operation #curr_y_elza_dual_biomes switch.data = #start_y_elza_dual_biomes switch.data
execute if score #scan_elza_dual_biomes switch.data matches 1 run scoreboard players operation #curr_z_elza_dual_biomes switch.data = #start_z_elza_dual_biomes switch.data
execute if score #scan_elza_dual_biomes switch.data matches 1 run data modify storage switch:doors elza_dual_biomes set value []


execute if score #scan_elza_dual_biomes switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_elza_dual_biomes switch.data matches 30.. summon marker run function switch:maps/survival/elza_dual_biomes/scan_doors_on_marker

execute if score #scan_elza_dual_biomes switch.data matches 55 in minecraft:overworld run forceload remove 155000 155000 155021 155042
execute if score #scan_elza_dual_biomes switch.data matches 55 in switch:game run forceload remove 155000 155000 155021 155042

execute if score #scan_elza_dual_biomes switch.data matches 55 in minecraft:overworld run forceload remove 155021 155000 155042 155042
execute if score #scan_elza_dual_biomes switch.data matches 55 in switch:game run forceload remove 155021 155000 155042 155042

execute if score #scan_elza_dual_biomes switch.data matches 55 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"elza_dual_biomes","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_elza_dual_biomes switch.data matches 55 run data remove storage switch:maps to_scan.elza_dual_biomes
execute if score #scan_elza_dual_biomes switch.data matches 55 run scoreboard players reset #scan_elza_dual_biomes switch.data

execute if score #scan_elza_dual_biomes switch.data matches 1.. run schedule function switch:maps/survival/elza_dual_biomes/scan_doors 1t

