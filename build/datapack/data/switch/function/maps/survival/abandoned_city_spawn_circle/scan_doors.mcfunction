
#> switch:maps/survival/abandoned_city_spawn_circle/scan_doors
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_abandoned_city_spawn_circle switch.data 1

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43000 43000 43020 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43000 43000 43020 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43020 43000 43041 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43020 43000 43041 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43041 43000 43062 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43041 43000 43062 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43062 43000 43082 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43062 43000 43082 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run data modify storage switch:maps to_scan.abandoned_city_spawn_circle set value 2b
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #start_x_abandoned_city_spawn_circle switch.data 43001
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #start_y_abandoned_city_spawn_circle switch.data 101
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #start_z_abandoned_city_spawn_circle switch.data 43001
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #end_x_abandoned_city_spawn_circle switch.data 43081
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #end_y_abandoned_city_spawn_circle switch.data 131
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #end_z_abandoned_city_spawn_circle switch.data 43081
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players operation #curr_x_abandoned_city_spawn_circle switch.data = #start_x_abandoned_city_spawn_circle switch.data
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players operation #curr_y_abandoned_city_spawn_circle switch.data = #start_y_abandoned_city_spawn_circle switch.data
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players operation #curr_z_abandoned_city_spawn_circle switch.data = #start_z_abandoned_city_spawn_circle switch.data
execute if score #scan_abandoned_city_spawn_circle switch.data matches 1 run data modify storage switch:doors abandoned_city_spawn_circle set value []

execute if score #scan_abandoned_city_spawn_circle switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_abandoned_city_spawn_circle switch.data matches 30.. summon marker run function switch:maps/survival/abandoned_city_spawn_circle/scan_doors_on_marker

execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in minecraft:overworld run forceload remove 43000 43000 43020 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in switch:game run forceload remove 43000 43000 43020 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in minecraft:overworld run forceload remove 43020 43000 43041 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in switch:game run forceload remove 43020 43000 43041 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in minecraft:overworld run forceload remove 43041 43000 43062 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in switch:game run forceload remove 43041 43000 43062 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in minecraft:overworld run forceload remove 43062 43000 43082 43082
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 in switch:game run forceload remove 43062 43000 43082 43082

execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"abandoned_city_spawn_circle","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 run data remove storage switch:maps to_scan.abandoned_city_spawn_circle
execute if score #scan_abandoned_city_spawn_circle switch.data matches 71 run scoreboard players reset #scan_abandoned_city_spawn_circle switch.data

execute if score #scan_abandoned_city_spawn_circle switch.data matches 1.. run schedule function switch:maps/survival/abandoned_city_spawn_circle/scan_doors 1t

