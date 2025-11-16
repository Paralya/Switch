
#> switch:maps/survival/memory_mine/scan_doors
#
# @within	switch:maps/survival/memory_mine/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_memory_mine switch.data 1

execute if score #scan_memory_mine switch.data matches 1 in minecraft:overworld run forceload add 153000 153000 153014 153036
execute if score #scan_memory_mine switch.data matches 1 in switch:game run forceload add 153000 153000 153014 153036

execute if score #scan_memory_mine switch.data matches 1 in minecraft:overworld run forceload add 153014 153000 153029 153036
execute if score #scan_memory_mine switch.data matches 1 in switch:game run forceload add 153014 153000 153029 153036

execute if score #scan_memory_mine switch.data matches 1 run data modify storage switch:maps to_scan.memory_mine set value 2b
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #start_x_memory_mine switch.data 153001
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #start_y_memory_mine switch.data 101
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #start_z_memory_mine switch.data 153001
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #end_x_memory_mine switch.data 153028
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #end_y_memory_mine switch.data 115
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players set #end_z_memory_mine switch.data 153035
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players operation #curr_x_memory_mine switch.data = #start_x_memory_mine switch.data
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players operation #curr_y_memory_mine switch.data = #start_y_memory_mine switch.data
execute if score #scan_memory_mine switch.data matches 1 run scoreboard players operation #curr_z_memory_mine switch.data = #start_z_memory_mine switch.data
execute if score #scan_memory_mine switch.data matches 1 run data modify storage switch:doors memory_mine set value []

execute if score #scan_memory_mine switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_memory_mine switch.data matches 30.. summon marker run function switch:maps/survival/memory_mine/scan_doors_on_marker

execute if score #scan_memory_mine switch.data matches 33 in minecraft:overworld run forceload remove 153000 153000 153014 153036
execute if score #scan_memory_mine switch.data matches 33 in switch:game run forceload remove 153000 153000 153014 153036

execute if score #scan_memory_mine switch.data matches 33 in minecraft:overworld run forceload remove 153014 153000 153029 153036
execute if score #scan_memory_mine switch.data matches 33 in switch:game run forceload remove 153014 153000 153029 153036

execute if score #scan_memory_mine switch.data matches 33 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"memory_mine","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_memory_mine switch.data matches 33 run data remove storage switch:maps to_scan.memory_mine
execute if score #scan_memory_mine switch.data matches 33 run scoreboard players reset #scan_memory_mine switch.data

execute if score #scan_memory_mine switch.data matches 1.. run schedule function switch:maps/survival/memory_mine/scan_doors 1t

