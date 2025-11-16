
#> switch:maps/survival/sheepwars_dirigeables/scan_doors
#
# @within	switch:maps/survival/sheepwars_dirigeables/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_dirigeables switch.data 1

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100000 100000 100021 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100000 100000 100021 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100021 100000 100043 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100021 100000 100043 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100043 100000 100064 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100043 100000 100064 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100064 100000 100086 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100064 100000 100086 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100086 100000 100107 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100086 100000 100107 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_dirigeables set value 2b
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_x_sheepwars_dirigeables switch.data 100001
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_y_sheepwars_dirigeables switch.data 101
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #start_z_sheepwars_dirigeables switch.data 100001
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_x_sheepwars_dirigeables switch.data 100106
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_y_sheepwars_dirigeables switch.data 187
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #end_z_sheepwars_dirigeables switch.data 100102
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_dirigeables switch.data = #start_x_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_dirigeables switch.data = #start_y_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_dirigeables switch.data = #start_z_sheepwars_dirigeables switch.data
execute if score #scan_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:doors sheepwars_dirigeables set value []

execute if score #scan_sheepwars_dirigeables switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_dirigeables switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_dirigeables/scan_doors_on_marker

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100000 100000 100021 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100000 100000 100021 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100021 100000 100043 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100021 100000 100043 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100043 100000 100064 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100043 100000 100064 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100064 100000 100086 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100064 100000 100086 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 in minecraft:overworld run forceload remove 100086 100000 100107 100103
execute if score #scan_sheepwars_dirigeables switch.data matches 219 in switch:game run forceload remove 100086 100000 100107 100103

execute if score #scan_sheepwars_dirigeables switch.data matches 219 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run data remove storage switch:maps to_scan.sheepwars_dirigeables
execute if score #scan_sheepwars_dirigeables switch.data matches 219 run scoreboard players reset #scan_sheepwars_dirigeables switch.data

execute if score #scan_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/scan_doors 1t

