
#> switch:maps/survival/survival_boat/scan_doors
#
# @within	switch:maps/survival/survival_boat/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_survival_boat switch.data 1

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -8000 6000 -7979 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -8000 6000 -7979 6102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7979 6000 -7958 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -7979 6000 -7958 6102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7958 6000 -7937 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -7958 6000 -7937 6102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7937 6000 -7916 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -7937 6000 -7916 6102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7916 6000 -7895 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -7916 6000 -7895 6102

execute if score #scan_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7895 6000 -7874 6102
execute if score #scan_survival_boat switch.data matches 1 in switch:game run forceload add -7895 6000 -7874 6102

execute if score #scan_survival_boat switch.data matches 1 run data modify storage switch:maps to_scan.survival_boat set value 2b
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_x_survival_boat switch.data -7999
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_y_survival_boat switch.data 101
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #start_z_survival_boat switch.data 6001
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_x_survival_boat switch.data -7875
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_y_survival_boat switch.data 198
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players set #end_z_survival_boat switch.data 6101
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_x_survival_boat switch.data = #start_x_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_y_survival_boat switch.data = #start_y_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run scoreboard players operation #curr_z_survival_boat switch.data = #start_z_survival_boat switch.data
execute if score #scan_survival_boat switch.data matches 1 run data modify storage switch:doors survival_boat set value []

execute if score #scan_survival_boat switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_survival_boat switch.data matches 30.. summon marker run function switch:maps/survival/survival_boat/scan_doors_on_marker

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -8000 6000 -7979 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -8000 6000 -7979 6102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -7979 6000 -7958 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -7979 6000 -7958 6102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -7958 6000 -7937 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -7958 6000 -7937 6102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -7937 6000 -7916 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -7937 6000 -7916 6102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -7916 6000 -7895 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -7916 6000 -7895 6102

execute if score #scan_survival_boat switch.data matches 278 in minecraft:overworld run forceload remove -7895 6000 -7874 6102
execute if score #scan_survival_boat switch.data matches 278 in switch:game run forceload remove -7895 6000 -7874 6102

execute if score #scan_survival_boat switch.data matches 278 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"survival_boat","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_survival_boat switch.data matches 278 run data remove storage switch:maps to_scan.survival_boat
execute if score #scan_survival_boat switch.data matches 278 run scoreboard players reset #scan_survival_boat switch.data

execute if score #scan_survival_boat switch.data matches 1.. run schedule function switch:maps/survival/survival_boat/scan_doors 1t

