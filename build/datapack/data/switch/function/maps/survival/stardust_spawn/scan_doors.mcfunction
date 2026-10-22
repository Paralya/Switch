
#> switch:maps/survival/stardust_spawn/scan_doors
#
# @within	switch:maps/survival/stardust_spawn/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_spawn switch.data 1

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -10000 -10000 -9980 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -10000 -10000 -9980 -9880

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9980 -10000 -9960 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -9980 -10000 -9960 -9880

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9960 -10000 -9940 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -9960 -10000 -9940 -9880

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9940 -10000 -9920 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -9940 -10000 -9920 -9880

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9920 -10000 -9900 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -9920 -10000 -9900 -9880

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9900 -10000 -9880 -9880
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add -9900 -10000 -9880 -9880

execute if score #scan_stardust_spawn switch.data matches 1 run data modify storage switch:maps to_scan.stardust_spawn set value 2b
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_x_stardust_spawn switch.data -9999
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_y_stardust_spawn switch.data 101
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_z_stardust_spawn switch.data -9999
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_x_stardust_spawn switch.data -9881
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_y_stardust_spawn switch.data 189
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_z_stardust_spawn switch.data -9881
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_x_stardust_spawn switch.data = #start_x_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_y_stardust_spawn switch.data = #start_y_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_z_stardust_spawn switch.data = #start_z_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run data modify storage switch:doors stardust_spawn set value []

execute if score #scan_stardust_spawn switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_spawn switch.data matches 30.. summon marker run function switch:maps/survival/stardust_spawn/scan_doors_on_marker

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -10000 -10000 -9980 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -10000 -10000 -9980 -9880

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -9980 -10000 -9960 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -9980 -10000 -9960 -9880

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -9960 -10000 -9940 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -9960 -10000 -9940 -9880

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -9940 -10000 -9920 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -9940 -10000 -9920 -9880

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -9920 -10000 -9900 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -9920 -10000 -9900 -9880

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove -9900 -10000 -9880 -9880
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove -9900 -10000 -9880 -9880

execute if score #scan_stardust_spawn switch.data matches 283 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_spawn","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_spawn switch.data matches 283 run data remove storage switch:maps to_scan.stardust_spawn
execute if score #scan_stardust_spawn switch.data matches 283 run scoreboard players reset #scan_stardust_spawn switch.data

execute if score #scan_stardust_spawn switch.data matches 1.. run schedule function switch:maps/survival/stardust_spawn/scan_doors 1t

