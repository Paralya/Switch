
#> switch:maps/survival/old_japan/scan_doors
#
# @within	switch:maps/survival/old_japan/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_old_japan switch.data 1

execute if score #scan_old_japan switch.data matches 1 in minecraft:overworld run forceload add -6000 2000 -5980 2100
execute if score #scan_old_japan switch.data matches 1 in switch:game run forceload add -6000 2000 -5980 2100

execute if score #scan_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5980 2000 -5960 2100
execute if score #scan_old_japan switch.data matches 1 in switch:game run forceload add -5980 2000 -5960 2100

execute if score #scan_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5960 2000 -5940 2100
execute if score #scan_old_japan switch.data matches 1 in switch:game run forceload add -5960 2000 -5940 2100

execute if score #scan_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5940 2000 -5920 2100
execute if score #scan_old_japan switch.data matches 1 in switch:game run forceload add -5940 2000 -5920 2100

execute if score #scan_old_japan switch.data matches 1 in minecraft:overworld run forceload add -5920 2000 -5900 2100
execute if score #scan_old_japan switch.data matches 1 in switch:game run forceload add -5920 2000 -5900 2100

execute if score #scan_old_japan switch.data matches 1 run data modify storage switch:maps to_scan.old_japan set value 2b
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #start_x_old_japan switch.data -5999
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #start_y_old_japan switch.data 101
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #start_z_old_japan switch.data 2001
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #end_x_old_japan switch.data -5901
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #end_y_old_japan switch.data 150
execute if score #scan_old_japan switch.data matches 1 run scoreboard players set #end_z_old_japan switch.data 2099
execute if score #scan_old_japan switch.data matches 1 run scoreboard players operation #curr_x_old_japan switch.data = #start_x_old_japan switch.data
execute if score #scan_old_japan switch.data matches 1 run scoreboard players operation #curr_y_old_japan switch.data = #start_y_old_japan switch.data
execute if score #scan_old_japan switch.data matches 1 run scoreboard players operation #curr_z_old_japan switch.data = #start_z_old_japan switch.data
execute if score #scan_old_japan switch.data matches 1 run data modify storage switch:doors old_japan set value []

execute if score #scan_old_japan switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_old_japan switch.data matches 30.. summon marker run function switch:maps/survival/old_japan/scan_doors_on_marker

execute if score #scan_old_japan switch.data matches 129 in minecraft:overworld run forceload remove -6000 2000 -5980 2100
execute if score #scan_old_japan switch.data matches 129 in switch:game run forceload remove -6000 2000 -5980 2100

execute if score #scan_old_japan switch.data matches 129 in minecraft:overworld run forceload remove -5980 2000 -5960 2100
execute if score #scan_old_japan switch.data matches 129 in switch:game run forceload remove -5980 2000 -5960 2100

execute if score #scan_old_japan switch.data matches 129 in minecraft:overworld run forceload remove -5960 2000 -5940 2100
execute if score #scan_old_japan switch.data matches 129 in switch:game run forceload remove -5960 2000 -5940 2100

execute if score #scan_old_japan switch.data matches 129 in minecraft:overworld run forceload remove -5940 2000 -5920 2100
execute if score #scan_old_japan switch.data matches 129 in switch:game run forceload remove -5940 2000 -5920 2100

execute if score #scan_old_japan switch.data matches 129 in minecraft:overworld run forceload remove -5920 2000 -5900 2100
execute if score #scan_old_japan switch.data matches 129 in switch:game run forceload remove -5920 2000 -5900 2100

execute if score #scan_old_japan switch.data matches 129 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"old_japan","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_old_japan switch.data matches 129 run data remove storage switch:maps to_scan.old_japan
execute if score #scan_old_japan switch.data matches 129 run scoreboard players reset #scan_old_japan switch.data

execute if score #scan_old_japan switch.data matches 1.. run schedule function switch:maps/survival/old_japan/scan_doors 1t

