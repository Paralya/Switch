
#> switch:maps/survival/gay_shooter/scan_doors
#
# @within	switch:maps/survival/gay_shooter/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_gay_shooter switch.data 1

execute if score #scan_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10000 -10000 10023 -9942
execute if score #scan_gay_shooter switch.data matches 1 in switch:game run forceload add 10000 -10000 10023 -9942

execute if score #scan_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10023 -10000 10047 -9942
execute if score #scan_gay_shooter switch.data matches 1 in switch:game run forceload add 10023 -10000 10047 -9942

execute if score #scan_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10047 -10000 10070 -9942
execute if score #scan_gay_shooter switch.data matches 1 in switch:game run forceload add 10047 -10000 10070 -9942

execute if score #scan_gay_shooter switch.data matches 1 run data modify storage switch:maps to_scan.gay_shooter set value 2b
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #start_x_gay_shooter switch.data 10001
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #start_y_gay_shooter switch.data 101
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #start_z_gay_shooter switch.data -9999
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #end_x_gay_shooter switch.data 10069
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #end_y_gay_shooter switch.data 148
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players set #end_z_gay_shooter switch.data -9943
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players operation #curr_x_gay_shooter switch.data = #start_x_gay_shooter switch.data
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players operation #curr_y_gay_shooter switch.data = #start_y_gay_shooter switch.data
execute if score #scan_gay_shooter switch.data matches 1 run scoreboard players operation #curr_z_gay_shooter switch.data = #start_z_gay_shooter switch.data
execute if score #scan_gay_shooter switch.data matches 1 run data modify storage switch:doors gay_shooter set value []

execute if score #scan_gay_shooter switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_gay_shooter switch.data matches 30.. summon marker run function switch:maps/survival/gay_shooter/scan_doors_on_marker

execute if score #scan_gay_shooter switch.data matches 68 in minecraft:overworld run forceload remove 10000 -10000 10023 -9942
execute if score #scan_gay_shooter switch.data matches 68 in switch:game run forceload remove 10000 -10000 10023 -9942

execute if score #scan_gay_shooter switch.data matches 68 in minecraft:overworld run forceload remove 10023 -10000 10047 -9942
execute if score #scan_gay_shooter switch.data matches 68 in switch:game run forceload remove 10023 -10000 10047 -9942

execute if score #scan_gay_shooter switch.data matches 68 in minecraft:overworld run forceload remove 10047 -10000 10070 -9942
execute if score #scan_gay_shooter switch.data matches 68 in switch:game run forceload remove 10047 -10000 10070 -9942

execute if score #scan_gay_shooter switch.data matches 68 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"gay_shooter","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_gay_shooter switch.data matches 68 run data remove storage switch:maps to_scan.gay_shooter
execute if score #scan_gay_shooter switch.data matches 68 run scoreboard players reset #scan_gay_shooter switch.data

execute if score #scan_gay_shooter switch.data matches 1.. run schedule function switch:maps/survival/gay_shooter/scan_doors 1t

