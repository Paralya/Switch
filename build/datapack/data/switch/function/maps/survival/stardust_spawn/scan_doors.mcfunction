
#> switch:maps/survival/stardust_spawn/scan_doors
#
# @within	switch:maps/survival/stardust_spawn/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_stardust_spawn switch.data 1

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101000 101000 101020 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101000 101000 101020 101120

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101020 101000 101040 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101020 101000 101040 101120

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101040 101000 101060 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101040 101000 101060 101120

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101060 101000 101080 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101060 101000 101080 101120

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101080 101000 101100 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101080 101000 101100 101120

execute if score #scan_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101100 101000 101120 101120
execute if score #scan_stardust_spawn switch.data matches 1 in switch:game run forceload add 101100 101000 101120 101120

execute if score #scan_stardust_spawn switch.data matches 1 run data modify storage switch:maps to_scan.stardust_spawn set value 2b
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_x_stardust_spawn switch.data 101001
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_y_stardust_spawn switch.data 1
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #start_z_stardust_spawn switch.data 101001
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_x_stardust_spawn switch.data 101119
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_y_stardust_spawn switch.data 89
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players set #end_z_stardust_spawn switch.data 101119
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_x_stardust_spawn switch.data = #start_x_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_y_stardust_spawn switch.data = #start_y_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run scoreboard players operation #curr_z_stardust_spawn switch.data = #start_z_stardust_spawn switch.data
execute if score #scan_stardust_spawn switch.data matches 1 run data modify storage switch:doors stardust_spawn set value []

execute if score #scan_stardust_spawn switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_stardust_spawn switch.data matches 30.. summon marker run function switch:maps/survival/stardust_spawn/scan_doors_on_marker

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101000 101000 101020 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101000 101000 101020 101120

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101020 101000 101040 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101020 101000 101040 101120

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101040 101000 101060 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101040 101000 101060 101120

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101060 101000 101080 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101060 101000 101080 101120

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101080 101000 101100 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101080 101000 101100 101120

execute if score #scan_stardust_spawn switch.data matches 283 in minecraft:overworld run forceload remove 101100 101000 101120 101120
execute if score #scan_stardust_spawn switch.data matches 283 in switch:game run forceload remove 101100 101000 101120 101120

execute if score #scan_stardust_spawn switch.data matches 283 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"stardust_spawn","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_stardust_spawn switch.data matches 283 run data remove storage switch:maps to_scan.stardust_spawn
execute if score #scan_stardust_spawn switch.data matches 283 run scoreboard players reset #scan_stardust_spawn switch.data

execute if score #scan_stardust_spawn switch.data matches 1.. run schedule function switch:maps/survival/stardust_spawn/scan_doors 1t

