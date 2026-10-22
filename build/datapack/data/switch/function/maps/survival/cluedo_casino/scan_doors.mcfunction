
#> switch:maps/survival/cluedo_casino/scan_doors
#
# @within	switch:maps/survival/cluedo_casino/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cluedo_casino switch.data 1

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6000 -12000 6025 -11931
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 6000 -12000 6025 -11931

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6025 -12000 6050 -11931
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 6025 -12000 6050 -11931

execute if score #scan_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6050 -12000 6075 -11931
execute if score #scan_cluedo_casino switch.data matches 1 in switch:game run forceload add 6050 -12000 6075 -11931

execute if score #scan_cluedo_casino switch.data matches 1 run data modify storage switch:maps to_scan.cluedo_casino set value 2b
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_x_cluedo_casino switch.data 6001
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_y_cluedo_casino switch.data 101
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #start_z_cluedo_casino switch.data -11999
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_x_cluedo_casino switch.data 6074
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_y_cluedo_casino switch.data 158
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players set #end_z_cluedo_casino switch.data -11932
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_x_cluedo_casino switch.data = #start_x_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_y_cluedo_casino switch.data = #start_y_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run scoreboard players operation #curr_z_cluedo_casino switch.data = #start_z_cluedo_casino switch.data
execute if score #scan_cluedo_casino switch.data matches 1 run data modify storage switch:doors cluedo_casino set value []

execute if score #scan_cluedo_casino switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cluedo_casino switch.data matches 30.. summon marker run function switch:maps/survival/cluedo_casino/scan_doors_on_marker

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 6000 -12000 6025 -11931
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 6000 -12000 6025 -11931

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 6025 -12000 6050 -11931
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 6025 -12000 6050 -11931

execute if score #scan_cluedo_casino switch.data matches 89 in minecraft:overworld run forceload remove 6050 -12000 6075 -11931
execute if score #scan_cluedo_casino switch.data matches 89 in switch:game run forceload remove 6050 -12000 6075 -11931

execute if score #scan_cluedo_casino switch.data matches 89 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cluedo_casino","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cluedo_casino switch.data matches 89 run data remove storage switch:maps to_scan.cluedo_casino
execute if score #scan_cluedo_casino switch.data matches 89 run scoreboard players reset #scan_cluedo_casino switch.data

execute if score #scan_cluedo_casino switch.data matches 1.. run schedule function switch:maps/survival/cluedo_casino/scan_doors 1t

