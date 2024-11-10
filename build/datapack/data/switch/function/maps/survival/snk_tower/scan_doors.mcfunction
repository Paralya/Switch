
#> switch:maps/survival/snk_tower/scan_doors
#
# @within	switch:maps/survival/snk_tower/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_snk_tower switch.data 1

execute if score #scan_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61000 61000 61028 61049
execute if score #scan_snk_tower switch.data matches 1 in switch:game run forceload add 61000 61000 61028 61049

execute if score #scan_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61028 61000 61056 61049
execute if score #scan_snk_tower switch.data matches 1 in switch:game run forceload add 61028 61000 61056 61049

execute if score #scan_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61056 61000 61084 61049
execute if score #scan_snk_tower switch.data matches 1 in switch:game run forceload add 61056 61000 61084 61049

execute if score #scan_snk_tower switch.data matches 1 run data modify storage switch:maps to_scan.snk_tower set value 2b
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #start_x_snk_tower switch.data 61001
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #start_y_snk_tower switch.data 1
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #start_z_snk_tower switch.data 61001
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #end_x_snk_tower switch.data 61083
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #end_y_snk_tower switch.data 87
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players set #end_z_snk_tower switch.data 61048
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players operation #curr_x_snk_tower switch.data = #start_x_snk_tower switch.data
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players operation #curr_y_snk_tower switch.data = #start_y_snk_tower switch.data
execute if score #scan_snk_tower switch.data matches 1 run scoreboard players operation #curr_z_snk_tower switch.data = #start_z_snk_tower switch.data
execute if score #scan_snk_tower switch.data matches 1 run data modify storage switch:doors snk_tower set value []


execute if score #scan_snk_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_snk_tower switch.data matches 30.. summon marker run function switch:maps/survival/snk_tower/scan_doors_on_marker

execute if score #scan_snk_tower switch.data matches 100 in minecraft:overworld run forceload remove 61000 61000 61028 61049
execute if score #scan_snk_tower switch.data matches 100 in switch:game run forceload remove 61000 61000 61028 61049

execute if score #scan_snk_tower switch.data matches 100 in minecraft:overworld run forceload remove 61028 61000 61056 61049
execute if score #scan_snk_tower switch.data matches 100 in switch:game run forceload remove 61028 61000 61056 61049

execute if score #scan_snk_tower switch.data matches 100 in minecraft:overworld run forceload remove 61056 61000 61084 61049
execute if score #scan_snk_tower switch.data matches 100 in switch:game run forceload remove 61056 61000 61084 61049

execute if score #scan_snk_tower switch.data matches 100 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"snk_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_snk_tower switch.data matches 100 run data remove storage switch:maps to_scan.snk_tower
execute if score #scan_snk_tower switch.data matches 100 run scoreboard players reset #scan_snk_tower switch.data

execute if score #scan_snk_tower switch.data matches 1.. run schedule function switch:maps/survival/snk_tower/scan_doors 1t

