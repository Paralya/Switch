
#> switch:maps/survival/sheepwars_plateforme/scan_doors
#
# @within	switch:maps/survival/sheepwars_plateforme/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sheepwars_plateforme switch.data 1

execute if score #scan_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144000 144000 144026 144075
execute if score #scan_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144000 144000 144026 144075

execute if score #scan_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144026 144000 144053 144075
execute if score #scan_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144026 144000 144053 144075

execute if score #scan_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144053 144000 144079 144075
execute if score #scan_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144053 144000 144079 144075

execute if score #scan_sheepwars_plateforme switch.data matches 1 run data modify storage switch:maps to_scan.sheepwars_plateforme set value 2b
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #start_x_sheepwars_plateforme switch.data 144001
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #start_y_sheepwars_plateforme switch.data 1
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #start_z_sheepwars_plateforme switch.data 144001
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #end_x_sheepwars_plateforme switch.data 144078
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #end_y_sheepwars_plateforme switch.data 68
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players set #end_z_sheepwars_plateforme switch.data 144074
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players operation #curr_x_sheepwars_plateforme switch.data = #start_x_sheepwars_plateforme switch.data
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players operation #curr_y_sheepwars_plateforme switch.data = #start_y_sheepwars_plateforme switch.data
execute if score #scan_sheepwars_plateforme switch.data matches 1 run scoreboard players operation #curr_z_sheepwars_plateforme switch.data = #start_z_sheepwars_plateforme switch.data
execute if score #scan_sheepwars_plateforme switch.data matches 1 run data modify storage switch:doors sheepwars_plateforme set value []

execute if score #scan_sheepwars_plateforme switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sheepwars_plateforme switch.data matches 30.. summon marker run function switch:maps/survival/sheepwars_plateforme/scan_doors_on_marker

execute if score #scan_sheepwars_plateforme switch.data matches 109 in minecraft:overworld run forceload remove 144000 144000 144026 144075
execute if score #scan_sheepwars_plateforme switch.data matches 109 in switch:game run forceload remove 144000 144000 144026 144075

execute if score #scan_sheepwars_plateforme switch.data matches 109 in minecraft:overworld run forceload remove 144026 144000 144053 144075
execute if score #scan_sheepwars_plateforme switch.data matches 109 in switch:game run forceload remove 144026 144000 144053 144075

execute if score #scan_sheepwars_plateforme switch.data matches 109 in minecraft:overworld run forceload remove 144053 144000 144079 144075
execute if score #scan_sheepwars_plateforme switch.data matches 109 in switch:game run forceload remove 144053 144000 144079 144075

execute if score #scan_sheepwars_plateforme switch.data matches 109 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sheepwars_plateforme","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sheepwars_plateforme switch.data matches 109 run data remove storage switch:maps to_scan.sheepwars_plateforme
execute if score #scan_sheepwars_plateforme switch.data matches 109 run scoreboard players reset #scan_sheepwars_plateforme switch.data

execute if score #scan_sheepwars_plateforme switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_plateforme/scan_doors 1t

