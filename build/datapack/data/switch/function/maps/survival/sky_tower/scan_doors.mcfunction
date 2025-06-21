
#> switch:maps/survival/sky_tower/scan_doors
#
# @within	switch:maps/survival/sky_tower/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sky_tower switch.data 1

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80000 80000 80018 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80000 80000 80018 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80018 80000 80036 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80018 80000 80036 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80036 80000 80053 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80036 80000 80053 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80053 80000 80071 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80053 80000 80071 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80071 80000 80089 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80071 80000 80089 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80089 80000 80106 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80089 80000 80106 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80106 80000 80124 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80106 80000 80124 80142

execute if score #scan_sky_tower switch.data matches 1 in minecraft:overworld run forceload add 80124 80000 80142 80142
execute if score #scan_sky_tower switch.data matches 1 in switch:game run forceload add 80124 80000 80142 80142

execute if score #scan_sky_tower switch.data matches 1 run data modify storage switch:maps to_scan.sky_tower set value 2b
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #start_x_sky_tower switch.data 80001
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #start_y_sky_tower switch.data -63
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #start_z_sky_tower switch.data 80001
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #end_x_sky_tower switch.data 80141
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #end_y_sky_tower switch.data -1
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players set #end_z_sky_tower switch.data 80141
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players operation #curr_x_sky_tower switch.data = #start_x_sky_tower switch.data
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players operation #curr_y_sky_tower switch.data = #start_y_sky_tower switch.data
execute if score #scan_sky_tower switch.data matches 1 run scoreboard players operation #curr_z_sky_tower switch.data = #start_z_sky_tower switch.data
execute if score #scan_sky_tower switch.data matches 1 run data modify storage switch:doors sky_tower set value []

execute if score #scan_sky_tower switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sky_tower switch.data matches 30.. summon marker run function switch:maps/survival/sky_tower/scan_doors_on_marker

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80000 80000 80018 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80000 80000 80018 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80018 80000 80036 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80018 80000 80036 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80036 80000 80053 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80036 80000 80053 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80053 80000 80071 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80053 80000 80071 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80071 80000 80089 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80071 80000 80089 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80089 80000 80106 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80089 80000 80106 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80106 80000 80124 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80106 80000 80124 80142

execute if score #scan_sky_tower switch.data matches 281 in minecraft:overworld run forceload remove 80124 80000 80142 80142
execute if score #scan_sky_tower switch.data matches 281 in switch:game run forceload remove 80124 80000 80142 80142

execute if score #scan_sky_tower switch.data matches 281 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sky_tower","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sky_tower switch.data matches 281 run data remove storage switch:maps to_scan.sky_tower
execute if score #scan_sky_tower switch.data matches 281 run scoreboard players reset #scan_sky_tower switch.data

execute if score #scan_sky_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_tower/scan_doors 1t

