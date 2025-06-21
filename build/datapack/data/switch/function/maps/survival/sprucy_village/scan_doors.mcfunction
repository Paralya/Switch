
#> switch:maps/survival/sprucy_village/scan_doors
#
# @within	switch:maps/survival/sprucy_village/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sprucy_village switch.data 1

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78000 78000 78024 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78000 78000 78024 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78024 78000 78049 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78024 78000 78049 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78049 78000 78073 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78049 78000 78073 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78073 78000 78098 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78073 78000 78098 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78098 78000 78122 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78098 78000 78122 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78122 78000 78147 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78122 78000 78147 78112

execute if score #scan_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78147 78000 78171 78112
execute if score #scan_sprucy_village switch.data matches 1 in switch:game run forceload add 78147 78000 78171 78112

execute if score #scan_sprucy_village switch.data matches 1 run data modify storage switch:maps to_scan.sprucy_village set value 2b
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #start_x_sprucy_village switch.data 78001
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #start_y_sprucy_village switch.data 1
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #start_z_sprucy_village switch.data 78001
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #end_x_sprucy_village switch.data 78170
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #end_y_sprucy_village switch.data 80
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players set #end_z_sprucy_village switch.data 78111
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players operation #curr_x_sprucy_village switch.data = #start_x_sprucy_village switch.data
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players operation #curr_y_sprucy_village switch.data = #start_y_sprucy_village switch.data
execute if score #scan_sprucy_village switch.data matches 1 run scoreboard players operation #curr_z_sprucy_village switch.data = #start_z_sprucy_village switch.data
execute if score #scan_sprucy_village switch.data matches 1 run data modify storage switch:doors sprucy_village set value []

execute if score #scan_sprucy_village switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sprucy_village switch.data matches 30.. summon marker run function switch:maps/survival/sprucy_village/scan_doors_on_marker

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78000 78000 78024 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78000 78000 78024 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78024 78000 78049 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78024 78000 78049 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78049 78000 78073 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78049 78000 78073 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78073 78000 78098 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78073 78000 78098 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78098 78000 78122 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78098 78000 78122 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78122 78000 78147 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78122 78000 78147 78112

execute if score #scan_sprucy_village switch.data matches 332 in minecraft:overworld run forceload remove 78147 78000 78171 78112
execute if score #scan_sprucy_village switch.data matches 332 in switch:game run forceload remove 78147 78000 78171 78112

execute if score #scan_sprucy_village switch.data matches 332 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sprucy_village","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sprucy_village switch.data matches 332 run data remove storage switch:maps to_scan.sprucy_village
execute if score #scan_sprucy_village switch.data matches 332 run scoreboard players reset #scan_sprucy_village switch.data

execute if score #scan_sprucy_village switch.data matches 1.. run schedule function switch:maps/survival/sprucy_village/scan_doors 1t

