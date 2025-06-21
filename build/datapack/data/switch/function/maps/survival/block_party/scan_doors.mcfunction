
#> switch:maps/survival/block_party/scan_doors
#
# @within	switch:maps/survival/block_party/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_block_party switch.data 1

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 109999 109999 110019 110081
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 109999 109999 110019 110081

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110019 109999 110040 110081
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110019 109999 110040 110081

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110040 109999 110060 110081
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110040 109999 110060 110081

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110060 109999 110080 110081
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110060 109999 110080 110081

execute if score #scan_block_party switch.data matches 1 run data modify storage switch:maps to_scan.block_party set value 2b
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_x_block_party switch.data 110000
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_y_block_party switch.data 90
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_z_block_party switch.data 110000
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_x_block_party switch.data 110079
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_y_block_party switch.data 116
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_z_block_party switch.data 110080
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_x_block_party switch.data = #start_x_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_y_block_party switch.data = #start_y_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_z_block_party switch.data = #start_z_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run data modify storage switch:doors block_party set value []

execute if score #scan_block_party switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_block_party switch.data matches 30.. summon marker run function switch:maps/survival/block_party/scan_doors_on_marker

execute if score #scan_block_party switch.data matches 65 in minecraft:overworld run forceload remove 109999 109999 110019 110081
execute if score #scan_block_party switch.data matches 65 in switch:game run forceload remove 109999 109999 110019 110081

execute if score #scan_block_party switch.data matches 65 in minecraft:overworld run forceload remove 110019 109999 110040 110081
execute if score #scan_block_party switch.data matches 65 in switch:game run forceload remove 110019 109999 110040 110081

execute if score #scan_block_party switch.data matches 65 in minecraft:overworld run forceload remove 110040 109999 110060 110081
execute if score #scan_block_party switch.data matches 65 in switch:game run forceload remove 110040 109999 110060 110081

execute if score #scan_block_party switch.data matches 65 in minecraft:overworld run forceload remove 110060 109999 110080 110081
execute if score #scan_block_party switch.data matches 65 in switch:game run forceload remove 110060 109999 110080 110081

execute if score #scan_block_party switch.data matches 65 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"block_party","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_block_party switch.data matches 65 run data remove storage switch:maps to_scan.block_party
execute if score #scan_block_party switch.data matches 65 run scoreboard players reset #scan_block_party switch.data

execute if score #scan_block_party switch.data matches 1.. run schedule function switch:maps/survival/block_party/scan_doors 1t

