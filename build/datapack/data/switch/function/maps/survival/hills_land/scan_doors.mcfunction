
#> switch:maps/survival/hills_land/scan_doors
#
# @within	switch:maps/survival/hills_land/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_hills_land switch.data 1

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6895 -5393 6908 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6895 -5393 6908 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6908 -5393 6921 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6908 -5393 6921 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6921 -5393 6934 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6921 -5393 6934 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6934 -5393 6947 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6934 -5393 6947 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6947 -5393 6959 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6947 -5393 6959 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6959 -5393 6972 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6959 -5393 6972 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6972 -5393 6985 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6972 -5393 6985 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6985 -5393 6998 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6985 -5393 6998 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6998 -5393 7011 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 6998 -5393 7011 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7011 -5393 7024 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7011 -5393 7024 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7024 -5393 7037 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7024 -5393 7037 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7037 -5393 7050 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7037 -5393 7050 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7050 -5393 7063 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7050 -5393 7063 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7063 -5393 7075 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7063 -5393 7075 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7075 -5393 7088 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7075 -5393 7088 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7088 -5393 7101 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7088 -5393 7101 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7101 -5393 7114 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7101 -5393 7114 -5166

execute if score #scan_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7114 -5393 7127 -5166
execute if score #scan_hills_land switch.data matches 1 in switch:game run forceload add 7114 -5393 7127 -5166

execute if score #scan_hills_land switch.data matches 1 run data modify storage switch:maps to_scan.hills_land set value 2b
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_x_hills_land switch.data 6896
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_y_hills_land switch.data 86
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #start_z_hills_land switch.data -5392
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_x_hills_land switch.data 7126
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_y_hills_land switch.data 149
execute if score #scan_hills_land switch.data matches 1 run scoreboard players set #end_z_hills_land switch.data -5167
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_x_hills_land switch.data = #start_x_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_y_hills_land switch.data = #start_y_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run scoreboard players operation #curr_z_hills_land switch.data = #start_z_hills_land switch.data
execute if score #scan_hills_land switch.data matches 1 run data modify storage switch:doors hills_land set value []

execute if score #scan_hills_land switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_hills_land switch.data matches 30.. summon marker run function switch:maps/survival/hills_land/scan_doors_on_marker

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6895 -5393 6908 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6895 -5393 6908 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6908 -5393 6921 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6908 -5393 6921 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6921 -5393 6934 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6921 -5393 6934 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6934 -5393 6947 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6934 -5393 6947 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6947 -5393 6959 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6947 -5393 6959 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6959 -5393 6972 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6959 -5393 6972 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6972 -5393 6985 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6972 -5393 6985 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6985 -5393 6998 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6985 -5393 6998 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 6998 -5393 7011 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 6998 -5393 7011 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7011 -5393 7024 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7011 -5393 7024 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7024 -5393 7037 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7024 -5393 7037 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7037 -5393 7050 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7037 -5393 7050 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7050 -5393 7063 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7050 -5393 7063 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7063 -5393 7075 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7063 -5393 7075 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7075 -5393 7088 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7075 -5393 7088 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7088 -5393 7101 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7088 -5393 7101 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7101 -5393 7114 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7101 -5393 7114 -5166

execute if score #scan_hills_land switch.data matches 699 in minecraft:overworld run forceload remove 7114 -5393 7127 -5166
execute if score #scan_hills_land switch.data matches 699 in switch:game run forceload remove 7114 -5393 7127 -5166

execute if score #scan_hills_land switch.data matches 699 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"hills_land","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_hills_land switch.data matches 699 run data remove storage switch:maps to_scan.hills_land
execute if score #scan_hills_land switch.data matches 699 run scoreboard players reset #scan_hills_land switch.data

execute if score #scan_hills_land switch.data matches 1.. run schedule function switch:maps/survival/hills_land/scan_doors 1t

