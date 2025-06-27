
#> switch:maps/survival/cluedo_casino/scan_doors
#
# @within	switch:maps/survival/cluedo_casino/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cluedo_casino switch.data 1

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159000 159000 159025 159069
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 159000 159000 159025 159069

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159025 159000 159050 159069
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 159025 159000 159050 159069

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159050 159000 159075 159069
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 159050 159000 159075 159069

execute if score #scan_cluedo_casino switch.data matches 1 run data modify storage switch:maps to_scan.cluedo_casino set value 2b
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_x_cluedo_casino switch.data 159001
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_y_cluedo_casino switch.data 101
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_z_cluedo_casino switch.data 159001
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_x_cluedo_casino switch.data 159074
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_y_cluedo_casino switch.data 158
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_z_cluedo_casino switch.data 159068
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_x_cluedo_casino switch.data = #start_x_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_y_cluedo_casino switch.data = #start_y_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_z_cluedo_casino switch.data = #start_z_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run data modify storage switch:doors cluedo_casino set value []

execute if score #scan_cluedo_casino switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cluedo_casino switch.data matches 30.. summon marker run function switch:maps/survival/cluedo_casino/scan_doors_on_marker

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 159000 159000 159025 159069
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 159000 159000 159025 159069

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 159025 159000 159050 159069
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 159025 159000 159050 159069

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 159050 159000 159075 159069
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 159050 159000 159075 159069

execute if score #scan_cluedo_casino switch.data matches 89 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cluedo_casino","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cluedo_casino switch.data matches 89 run data remove storage switch:maps to_scan.cluedo_casino
execute if score #scan_cluedo_casino switch.data matches 89 run scoreboard players reset #scan_cluedo_casino switch.data

execute if score #scan_cluedo_casino switch.data matches 1.. run schedule function switch:maps/survival/cluedo_casino/scan_doors 1t

