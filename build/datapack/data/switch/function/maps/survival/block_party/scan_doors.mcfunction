
#> switch:maps/survival/block_party/scan_doors
#
# @within	switch:maps/survival/block_party/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_block_party switch.data 1

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 109993 109993 110016 110087
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 109993 109993 110016 110087

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110016 109993 110040 110087
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110016 109993 110040 110087

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110040 109993 110064 110087
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110040 109993 110064 110087

execute if score #scan_block_party switch.data matches 1 in minecraft:overworld run forceload add 110064 109993 110087 110087
execute if score #scan_block_party switch.data matches 1 in switch:game run forceload add 110064 109993 110087 110087

execute if score #scan_block_party switch.data matches 1 run data modify storage switch:maps to_scan.block_party set value 2b
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_x_block_party switch.data 109994
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_y_block_party switch.data -62
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #start_z_block_party switch.data 109994
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_x_block_party switch.data 110086
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_y_block_party switch.data 116
execute if score #scan_block_party switch.data matches 1 run scoreboard players set #end_z_block_party switch.data 110086
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_x_block_party switch.data = #start_x_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_y_block_party switch.data = #start_y_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run scoreboard players operation #curr_z_block_party switch.data = #start_z_block_party switch.data
execute if score #scan_block_party switch.data matches 1 run data modify storage switch:doors block_party set value []

execute if score #scan_block_party switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_block_party switch.data matches 30.. summon marker run function switch:maps/survival/block_party/scan_doors_on_marker

execute if score #scan_block_party switch.data matches 340 in minecraft:overworld run forceload remove 109993 109993 110016 110087
execute if score #scan_block_party switch.data matches 340 in switch:game run forceload remove 109993 109993 110016 110087

execute if score #scan_block_party switch.data matches 340 in minecraft:overworld run forceload remove 110016 109993 110040 110087
execute if score #scan_block_party switch.data matches 340 in switch:game run forceload remove 110016 109993 110040 110087

execute if score #scan_block_party switch.data matches 340 in minecraft:overworld run forceload remove 110040 109993 110064 110087
execute if score #scan_block_party switch.data matches 340 in switch:game run forceload remove 110040 109993 110064 110087

execute if score #scan_block_party switch.data matches 340 in minecraft:overworld run forceload remove 110064 109993 110087 110087
execute if score #scan_block_party switch.data matches 340 in switch:game run forceload remove 110064 109993 110087 110087

execute if score #scan_block_party switch.data matches 340 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"block_party","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_block_party switch.data matches 340 run data remove storage switch:maps to_scan.block_party
execute if score #scan_block_party switch.data matches 340 run scoreboard players reset #scan_block_party switch.data

execute if score #scan_block_party switch.data matches 1.. run schedule function switch:maps/survival/block_party/scan_doors 1t

