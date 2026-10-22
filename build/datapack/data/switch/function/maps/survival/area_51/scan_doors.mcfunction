
#> switch:maps/survival/area_51/scan_doors
#
# @within	switch:maps/survival/area_51/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_area_51 switch.data 1

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 0 2000 18 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 0 2000 18 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 18 2000 36 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 18 2000 36 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 36 2000 54 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 36 2000 54 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 54 2000 72 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 54 2000 72 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 72 2000 90 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 72 2000 90 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 90 2000 108 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 90 2000 108 2126

execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:maps to_scan.area_51 set value 2b
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_x_area_51 switch.data 1
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_y_area_51 switch.data 101
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_z_area_51 switch.data 2001
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_x_area_51 switch.data 107
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_y_area_51 switch.data 192
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_z_area_51 switch.data 2125
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_x_area_51 switch.data = #start_x_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_y_area_51 switch.data = #start_y_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_z_area_51 switch.data = #start_z_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:doors area_51 set value []

execute if score #scan_area_51 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_area_51 switch.data matches 30.. summon marker run function switch:maps/survival/area_51/scan_doors_on_marker

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 0 2000 18 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 0 2000 18 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 18 2000 36 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 18 2000 36 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 36 2000 54 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 36 2000 54 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 54 2000 72 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 54 2000 72 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 72 2000 90 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 72 2000 90 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 90 2000 108 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 90 2000 108 2126

execute if score #scan_area_51 switch.data matches 277 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"area_51","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_area_51 switch.data matches 277 run data remove storage switch:maps to_scan.area_51
execute if score #scan_area_51 switch.data matches 277 run scoreboard players reset #scan_area_51 switch.data

execute if score #scan_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/scan_doors 1t

