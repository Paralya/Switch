
#> switch:maps/survival/torg_arena/scan_doors
#
# @within	switch:maps/survival/torg_arena/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_torg_arena switch.data 1

execute if score #scan_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 65000 65000 65020 65100
execute if score #scan_torg_arena switch.data matches 1 in switch:game run forceload add 65000 65000 65020 65100

execute if score #scan_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 65020 65000 65040 65100
execute if score #scan_torg_arena switch.data matches 1 in switch:game run forceload add 65020 65000 65040 65100

execute if score #scan_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 65040 65000 65060 65100
execute if score #scan_torg_arena switch.data matches 1 in switch:game run forceload add 65040 65000 65060 65100

execute if score #scan_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 65060 65000 65080 65100
execute if score #scan_torg_arena switch.data matches 1 in switch:game run forceload add 65060 65000 65080 65100

execute if score #scan_torg_arena switch.data matches 1 in minecraft:overworld run forceload add 65080 65000 65100 65100
execute if score #scan_torg_arena switch.data matches 1 in switch:game run forceload add 65080 65000 65100 65100

execute if score #scan_torg_arena switch.data matches 1 run data modify storage switch:maps to_scan.torg_arena set value 2b
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #start_x_torg_arena switch.data 65001
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #start_y_torg_arena switch.data 101
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #start_z_torg_arena switch.data 65001
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #end_x_torg_arena switch.data 65099
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #end_y_torg_arena switch.data 125
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players set #end_z_torg_arena switch.data 65099
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players operation #curr_x_torg_arena switch.data = #start_x_torg_arena switch.data
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players operation #curr_y_torg_arena switch.data = #start_y_torg_arena switch.data
execute if score #scan_torg_arena switch.data matches 1 run scoreboard players operation #curr_z_torg_arena switch.data = #start_z_torg_arena switch.data
execute if score #scan_torg_arena switch.data matches 1 run data modify storage switch:doors torg_arena set value []

execute if score #scan_torg_arena switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_torg_arena switch.data matches 30.. summon marker run function switch:maps/survival/torg_arena/scan_doors_on_marker

execute if score #scan_torg_arena switch.data matches 80 in minecraft:overworld run forceload remove 65000 65000 65020 65100
execute if score #scan_torg_arena switch.data matches 80 in switch:game run forceload remove 65000 65000 65020 65100

execute if score #scan_torg_arena switch.data matches 80 in minecraft:overworld run forceload remove 65020 65000 65040 65100
execute if score #scan_torg_arena switch.data matches 80 in switch:game run forceload remove 65020 65000 65040 65100

execute if score #scan_torg_arena switch.data matches 80 in minecraft:overworld run forceload remove 65040 65000 65060 65100
execute if score #scan_torg_arena switch.data matches 80 in switch:game run forceload remove 65040 65000 65060 65100

execute if score #scan_torg_arena switch.data matches 80 in minecraft:overworld run forceload remove 65060 65000 65080 65100
execute if score #scan_torg_arena switch.data matches 80 in switch:game run forceload remove 65060 65000 65080 65100

execute if score #scan_torg_arena switch.data matches 80 in minecraft:overworld run forceload remove 65080 65000 65100 65100
execute if score #scan_torg_arena switch.data matches 80 in switch:game run forceload remove 65080 65000 65100 65100

execute if score #scan_torg_arena switch.data matches 80 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"torg_arena","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_torg_arena switch.data matches 80 run data remove storage switch:maps to_scan.torg_arena
execute if score #scan_torg_arena switch.data matches 80 run scoreboard players reset #scan_torg_arena switch.data

execute if score #scan_torg_arena switch.data matches 1.. run schedule function switch:maps/survival/torg_arena/scan_doors 1t

