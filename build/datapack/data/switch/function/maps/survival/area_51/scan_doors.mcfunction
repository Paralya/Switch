
#> switch:maps/survival/area_51/scan_doors
#
# @within	switch:maps/survival/area_51/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_area_51 switch.data 1

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2000 2000 2018 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2000 2000 2018 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2018 2000 2036 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2018 2000 2036 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2036 2000 2054 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2036 2000 2054 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2054 2000 2072 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2054 2000 2072 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2072 2000 2090 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2072 2000 2090 2126

execute if score #scan_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2090 2000 2108 2126
execute if score #scan_area_51 switch.data matches 1 in switch:game run forceload add 2090 2000 2108 2126

execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:maps to_scan.area_51 set value 2b
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_x_area_51 switch.data 2001
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_y_area_51 switch.data 101
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #start_z_area_51 switch.data 2001
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_x_area_51 switch.data 2107
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_y_area_51 switch.data 192
execute if score #scan_area_51 switch.data matches 1 run scoreboard players set #end_z_area_51 switch.data 2125
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_x_area_51 switch.data = #start_x_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_y_area_51 switch.data = #start_y_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run scoreboard players operation #curr_z_area_51 switch.data = #start_z_area_51 switch.data
execute if score #scan_area_51 switch.data matches 1 run data modify storage switch:doors area_51 set value []


execute if score #scan_area_51 switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_area_51 switch.data matches 30.. summon marker run function switch:maps/survival/area_51/scan_doors_on_marker

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2000 2000 2018 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2000 2000 2018 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2018 2000 2036 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2018 2000 2036 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2036 2000 2054 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2036 2000 2054 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2054 2000 2072 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2054 2000 2072 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2072 2000 2090 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2072 2000 2090 2126

execute if score #scan_area_51 switch.data matches 277 in minecraft:overworld run forceload remove 2090 2000 2108 2126
execute if score #scan_area_51 switch.data matches 277 in switch:game run forceload remove 2090 2000 2108 2126

execute if score #scan_area_51 switch.data matches 277 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"area_51","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_area_51 switch.data matches 277 run data remove storage switch:maps to_scan.area_51
execute if score #scan_area_51 switch.data matches 277 run scoreboard players reset #scan_area_51 switch.data

execute if score #scan_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/scan_doors 1t

