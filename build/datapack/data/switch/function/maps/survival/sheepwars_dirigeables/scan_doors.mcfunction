
#> switch:maps/survival/sheepwars_dirigeables/scan_doors
#
# @within	switch:maps/survival/sheepwars_dirigeables/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_dirigeables switch.data 1

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100028 100000 100049 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100028 100000 100049 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100049 100000 100071 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100049 100000 100071 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100071 100000 100092 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100071 100000 100092 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100092 100000 100114 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100092 100000 100114 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100114 100000 100135 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100114 100000 100135 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_dirigeables set value 2b
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_x_sheepwars_dirigeables switch.data 100029
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_y_sheepwars_dirigeables switch.data -62
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_z_sheepwars_dirigeables switch.data 100001
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_x_sheepwars_dirigeables switch.data 100134
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_y_sheepwars_dirigeables switch.data 24
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_z_sheepwars_dirigeables switch.data 100102
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_dirigeables switch.data = #start_x_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_dirigeables switch.data = #start_y_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_dirigeables switch.data = #start_z_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:doors sheepwars_dirigeables set value []

execute if score #scan_sheepwars_dirigeables switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_dirigeables switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_dirigeables/scan_doors_on_marker

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100028 100000 100049 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100028 100000 100049 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100049 100000 100071 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100049 100000 100071 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100071 100000 100092 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100071 100000 100092 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100092 100000 100114 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100092 100000 100114 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100114 100000 100135 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100114 100000 100135 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run data remove storage switch:maps to_scan.sheepwars_dirigeables
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run scoreboard players reset #scan_sheepwars_dirigeables switch.data

execute if score #scan_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/scan_doors 1t

