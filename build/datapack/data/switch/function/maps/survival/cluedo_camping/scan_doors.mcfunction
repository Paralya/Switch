
#> switch:maps/survival/cluedo_camping/scan_doors
#
# @within	switch:maps/survival/cluedo_camping/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cluedo_camping switch.data 1

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54000 54000 54022 54094
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add 54000 54000 54022 54094

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54022 54000 54045 54094
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add 54022 54000 54045 54094

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54045 54000 54067 54094
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add 54045 54000 54067 54094

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54067 54000 54090 54094
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add 54067 54000 54090 54094

execute if score #scan_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54090 54000 54112 54094
execute if score #scan_cluedo_camping switch.data matches 1 in switch:game run forceload add 54090 54000 54112 54094

execute if score #scan_cluedo_camping switch.data matches 1 run data modify storage switch:maps to_scan.cluedo_camping set value 2b
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_x_cluedo_camping switch.data 54001
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_y_cluedo_camping switch.data 101
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #start_z_cluedo_camping switch.data 54001
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_x_cluedo_camping switch.data 54111
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_y_cluedo_camping switch.data 122
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players set #end_z_cluedo_camping switch.data 54093
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_x_cluedo_camping switch.data = #start_x_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_y_cluedo_camping switch.data = #start_y_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run scoreboard players operation #curr_z_cluedo_camping switch.data = #start_z_cluedo_camping switch.data
execute if score #scan_cluedo_camping switch.data matches 1 run data modify storage switch:doors cluedo_camping set value []

execute if score #scan_cluedo_camping switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cluedo_camping switch.data matches 30.. summon marker run function switch:maps/survival/cluedo_camping/scan_doors_on_marker

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove 54000 54000 54022 54094
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove 54000 54000 54022 54094

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove 54022 54000 54045 54094
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove 54022 54000 54045 54094

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove 54045 54000 54067 54094
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove 54045 54000 54067 54094

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove 54067 54000 54090 54094
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove 54067 54000 54090 54094

execute if score #scan_cluedo_camping switch.data matches 76 in minecraft:overworld run forceload remove 54090 54000 54112 54094
execute if score #scan_cluedo_camping switch.data matches 76 in switch:game run forceload remove 54090 54000 54112 54094

execute if score #scan_cluedo_camping switch.data matches 76 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cluedo_camping","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cluedo_camping switch.data matches 76 run data remove storage switch:maps to_scan.cluedo_camping
execute if score #scan_cluedo_camping switch.data matches 76 run scoreboard players reset #scan_cluedo_camping switch.data

execute if score #scan_cluedo_camping switch.data matches 1.. run schedule function switch:maps/survival/cluedo_camping/scan_doors 1t

