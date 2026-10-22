
#> switch:maps/survival/floor_is_lava/scan_doors
#
# @within	switch:maps/survival/floor_is_lava/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_floor_is_lava switch.data 1

execute if score #scan_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 8000 2000 8020 2100
execute if score #scan_floor_is_lava switch.data matches 1 in switch:game run forceload add 8000 2000 8020 2100

execute if score #scan_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 8020 2000 8040 2100
execute if score #scan_floor_is_lava switch.data matches 1 in switch:game run forceload add 8020 2000 8040 2100

execute if score #scan_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 8040 2000 8060 2100
execute if score #scan_floor_is_lava switch.data matches 1 in switch:game run forceload add 8040 2000 8060 2100

execute if score #scan_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 8060 2000 8080 2100
execute if score #scan_floor_is_lava switch.data matches 1 in switch:game run forceload add 8060 2000 8080 2100

execute if score #scan_floor_is_lava switch.data matches 1 in minecraft:overworld run forceload add 8080 2000 8100 2100
execute if score #scan_floor_is_lava switch.data matches 1 in switch:game run forceload add 8080 2000 8100 2100

execute if score #scan_floor_is_lava switch.data matches 1 run data modify storage switch:maps to_scan.floor_is_lava set value 2b
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #start_x_floor_is_lava switch.data 8001
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #start_y_floor_is_lava switch.data 101
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #start_z_floor_is_lava switch.data 2001
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #end_x_floor_is_lava switch.data 8099
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #end_y_floor_is_lava switch.data 189
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players set #end_z_floor_is_lava switch.data 2099
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players operation #curr_x_floor_is_lava switch.data = #start_x_floor_is_lava switch.data
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players operation #curr_y_floor_is_lava switch.data = #start_y_floor_is_lava switch.data
execute if score #scan_floor_is_lava switch.data matches 1 run scoreboard players operation #curr_z_floor_is_lava switch.data = #start_z_floor_is_lava switch.data
execute if score #scan_floor_is_lava switch.data matches 1 run data modify storage switch:doors floor_is_lava set value []

execute if score #scan_floor_is_lava switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_floor_is_lava switch.data matches 30.. summon marker run function switch:maps/survival/floor_is_lava/scan_doors_on_marker

execute if score #scan_floor_is_lava switch.data matches 205 in minecraft:overworld run forceload remove 8000 2000 8020 2100
execute if score #scan_floor_is_lava switch.data matches 205 in switch:game run forceload remove 8000 2000 8020 2100

execute if score #scan_floor_is_lava switch.data matches 205 in minecraft:overworld run forceload remove 8020 2000 8040 2100
execute if score #scan_floor_is_lava switch.data matches 205 in switch:game run forceload remove 8020 2000 8040 2100

execute if score #scan_floor_is_lava switch.data matches 205 in minecraft:overworld run forceload remove 8040 2000 8060 2100
execute if score #scan_floor_is_lava switch.data matches 205 in switch:game run forceload remove 8040 2000 8060 2100

execute if score #scan_floor_is_lava switch.data matches 205 in minecraft:overworld run forceload remove 8060 2000 8080 2100
execute if score #scan_floor_is_lava switch.data matches 205 in switch:game run forceload remove 8060 2000 8080 2100

execute if score #scan_floor_is_lava switch.data matches 205 in minecraft:overworld run forceload remove 8080 2000 8100 2100
execute if score #scan_floor_is_lava switch.data matches 205 in switch:game run forceload remove 8080 2000 8100 2100

execute if score #scan_floor_is_lava switch.data matches 205 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"floor_is_lava","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_floor_is_lava switch.data matches 205 run data remove storage switch:maps to_scan.floor_is_lava
execute if score #scan_floor_is_lava switch.data matches 205 run scoreboard players reset #scan_floor_is_lava switch.data

execute if score #scan_floor_is_lava switch.data matches 1.. run schedule function switch:maps/survival/floor_is_lava/scan_doors 1t

