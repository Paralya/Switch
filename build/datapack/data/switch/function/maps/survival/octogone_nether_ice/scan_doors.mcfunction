
#> switch:maps/survival/octogone_nether_ice/scan_doors
#
# @within	switch:maps/survival/octogone_nether_ice/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_octogone_nether_ice switch.data 1

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 8000 -12000 8020 -11920
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 8000 -12000 8020 -11920

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 8020 -12000 8040 -11920
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 8020 -12000 8040 -11920

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 8040 -12000 8060 -11920
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 8040 -12000 8060 -11920

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 8060 -12000 8080 -11920
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 8060 -12000 8080 -11920

execute if score #scan_octogone_nether_ice switch.data matches 1 run data modify storage switch:maps to_scan.octogone_nether_ice set value 2b
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_x_octogone_nether_ice switch.data 8001
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_y_octogone_nether_ice switch.data 101
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_z_octogone_nether_ice switch.data -11999
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_x_octogone_nether_ice switch.data 8079
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_y_octogone_nether_ice switch.data 161
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_z_octogone_nether_ice switch.data -11921
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_x_octogone_nether_ice switch.data = #start_x_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_y_octogone_nether_ice switch.data = #start_y_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_z_octogone_nether_ice switch.data = #start_z_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run data modify storage switch:doors octogone_nether_ice set value []

execute if score #scan_octogone_nether_ice switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_octogone_nether_ice switch.data matches 30.. summon marker run function switch:maps/survival/octogone_nether_ice/scan_doors_on_marker

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 8000 -12000 8020 -11920
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 8000 -12000 8020 -11920

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 8020 -12000 8040 -11920
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 8020 -12000 8040 -11920

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 8040 -12000 8060 -11920
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 8040 -12000 8060 -11920

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 8060 -12000 8080 -11920
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 8060 -12000 8080 -11920

execute if score #scan_octogone_nether_ice switch.data matches 107 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"octogone_nether_ice","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_octogone_nether_ice switch.data matches 107 run data remove storage switch:maps to_scan.octogone_nether_ice
execute if score #scan_octogone_nether_ice switch.data matches 107 run scoreboard players reset #scan_octogone_nether_ice switch.data

execute if score #scan_octogone_nether_ice switch.data matches 1.. run schedule function switch:maps/survival/octogone_nether_ice/scan_doors 1t

