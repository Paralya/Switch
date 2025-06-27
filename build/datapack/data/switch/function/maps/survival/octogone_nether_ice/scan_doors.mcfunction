
#> switch:maps/survival/octogone_nether_ice/scan_doors
#
# @within	switch:maps/survival/octogone_nether_ice/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_octogone_nether_ice switch.data 1

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160000 160000 160020 160080
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160000 160000 160020 160080

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160020 160000 160040 160080
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160020 160000 160040 160080

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160040 160000 160060 160080
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160040 160000 160060 160080

execute if score #scan_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160060 160000 160080 160080
execute if score #scan_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160060 160000 160080 160080

execute if score #scan_octogone_nether_ice switch.data matches 1 run data modify storage switch:maps to_scan.octogone_nether_ice set value 2b
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_x_octogone_nether_ice switch.data 160001
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_y_octogone_nether_ice switch.data 101
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #start_z_octogone_nether_ice switch.data 160001
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_x_octogone_nether_ice switch.data 160079
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_y_octogone_nether_ice switch.data 161
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players set #end_z_octogone_nether_ice switch.data 160079
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_x_octogone_nether_ice switch.data = #start_x_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_y_octogone_nether_ice switch.data = #start_y_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run scoreboard players operation #curr_z_octogone_nether_ice switch.data = #start_z_octogone_nether_ice switch.data
execute if score #scan_octogone_nether_ice switch.data matches 1 run data modify storage switch:doors octogone_nether_ice set value []

execute if score #scan_octogone_nether_ice switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_octogone_nether_ice switch.data matches 30.. summon marker run function switch:maps/survival/octogone_nether_ice/scan_doors_on_marker

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 160000 160000 160020 160080
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 160000 160000 160020 160080

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 160020 160000 160040 160080
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 160020 160000 160040 160080

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 160040 160000 160060 160080
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 160040 160000 160060 160080

execute if score #scan_octogone_nether_ice switch.data matches 107 in minecraft:overworld run forceload remove 160060 160000 160080 160080
execute if score #scan_octogone_nether_ice switch.data matches 107 in switch:game run forceload remove 160060 160000 160080 160080

execute if score #scan_octogone_nether_ice switch.data matches 107 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"octogone_nether_ice","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_octogone_nether_ice switch.data matches 107 run data remove storage switch:maps to_scan.octogone_nether_ice
execute if score #scan_octogone_nether_ice switch.data matches 107 run scoreboard players reset #scan_octogone_nether_ice switch.data

execute if score #scan_octogone_nether_ice switch.data matches 1.. run schedule function switch:maps/survival/octogone_nether_ice/scan_doors 1t

