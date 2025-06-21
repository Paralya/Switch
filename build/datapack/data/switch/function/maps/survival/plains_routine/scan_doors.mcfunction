
#> switch:maps/survival/plains_routine/scan_doors
#
# @within	switch:maps/survival/plains_routine/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_plains_routine switch.data 1

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20126 19727 20141 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20126 19727 20141 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20141 19727 20157 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20141 19727 20157 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20157 19727 20172 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20157 19727 20172 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20172 19727 20187 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20172 19727 20187 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20187 19727 20202 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20187 19727 20202 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20202 19727 20218 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20202 19727 20218 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20218 19727 20233 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20218 19727 20233 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20233 19727 20248 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20233 19727 20248 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20248 19727 20263 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20248 19727 20263 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20263 19727 20279 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20263 19727 20279 19911

execute if score #scan_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20279 19727 20294 19911
execute if score #scan_plains_routine switch.data matches 1 in switch:game run forceload add 20279 19727 20294 19911

execute if score #scan_plains_routine switch.data matches 1 run data modify storage switch:maps to_scan.plains_routine set value 2b
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_x_plains_routine switch.data 20127
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_y_plains_routine switch.data 86
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #start_z_plains_routine switch.data 19728
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_x_plains_routine switch.data 20293
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_y_plains_routine switch.data 134
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players set #end_z_plains_routine switch.data 19910
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_x_plains_routine switch.data = #start_x_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_y_plains_routine switch.data = #start_y_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run scoreboard players operation #curr_z_plains_routine switch.data = #start_z_plains_routine switch.data
execute if score #scan_plains_routine switch.data matches 1 run data modify storage switch:doors plains_routine set value []

execute if score #scan_plains_routine switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_plains_routine switch.data matches 30.. summon marker run function switch:maps/survival/plains_routine/scan_doors_on_marker

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20126 19727 20141 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20126 19727 20141 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20141 19727 20157 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20141 19727 20157 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20157 19727 20172 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20157 19727 20172 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20172 19727 20187 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20172 19727 20187 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20187 19727 20202 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20187 19727 20202 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20202 19727 20218 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20202 19727 20218 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20218 19727 20233 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20218 19727 20233 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20233 19727 20248 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20233 19727 20248 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20248 19727 20263 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20248 19727 20263 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20263 19727 20279 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20263 19727 20279 19911

execute if score #scan_plains_routine switch.data matches 330 in minecraft:overworld run forceload remove 20279 19727 20294 19911
execute if score #scan_plains_routine switch.data matches 330 in switch:game run forceload remove 20279 19727 20294 19911

execute if score #scan_plains_routine switch.data matches 330 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"plains_routine","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_plains_routine switch.data matches 330 run data remove storage switch:maps to_scan.plains_routine
execute if score #scan_plains_routine switch.data matches 330 run scoreboard players reset #scan_plains_routine switch.data

execute if score #scan_plains_routine switch.data matches 1.. run schedule function switch:maps/survival/plains_routine/scan_doors 1t

