
#> switch:maps/survival/enchanting_island/scan_doors
#
# @within	switch:maps/survival/enchanting_island/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_enchanting_island switch.data 1

execute if score #scan_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 4000 -4000 4020 -3940
execute if score #scan_enchanting_island switch.data matches 1 in switch:game run forceload add 4000 -4000 4020 -3940

execute if score #scan_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 4020 -4000 4040 -3940
execute if score #scan_enchanting_island switch.data matches 1 in switch:game run forceload add 4020 -4000 4040 -3940

execute if score #scan_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 4040 -4000 4060 -3940
execute if score #scan_enchanting_island switch.data matches 1 in switch:game run forceload add 4040 -4000 4060 -3940

execute if score #scan_enchanting_island switch.data matches 1 run data modify storage switch:maps to_scan.enchanting_island set value 2b
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #start_x_enchanting_island switch.data 4001
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #start_y_enchanting_island switch.data 101
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #start_z_enchanting_island switch.data -3999
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #end_x_enchanting_island switch.data 4059
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #end_y_enchanting_island switch.data 148
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players set #end_z_enchanting_island switch.data -3941
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players operation #curr_x_enchanting_island switch.data = #start_x_enchanting_island switch.data
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players operation #curr_y_enchanting_island switch.data = #start_y_enchanting_island switch.data
execute if score #scan_enchanting_island switch.data matches 1 run scoreboard players operation #curr_z_enchanting_island switch.data = #start_z_enchanting_island switch.data
execute if score #scan_enchanting_island switch.data matches 1 run data modify storage switch:doors enchanting_island set value []

execute if score #scan_enchanting_island switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_enchanting_island switch.data matches 30.. summon marker run function switch:maps/survival/enchanting_island/scan_doors_on_marker

execute if score #scan_enchanting_island switch.data matches 64 in minecraft:overworld run forceload remove 4000 -4000 4020 -3940
execute if score #scan_enchanting_island switch.data matches 64 in switch:game run forceload remove 4000 -4000 4020 -3940

execute if score #scan_enchanting_island switch.data matches 64 in minecraft:overworld run forceload remove 4020 -4000 4040 -3940
execute if score #scan_enchanting_island switch.data matches 64 in switch:game run forceload remove 4020 -4000 4040 -3940

execute if score #scan_enchanting_island switch.data matches 64 in minecraft:overworld run forceload remove 4040 -4000 4060 -3940
execute if score #scan_enchanting_island switch.data matches 64 in switch:game run forceload remove 4040 -4000 4060 -3940

execute if score #scan_enchanting_island switch.data matches 64 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"enchanting_island","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_enchanting_island switch.data matches 64 run data remove storage switch:maps to_scan.enchanting_island
execute if score #scan_enchanting_island switch.data matches 64 run scoreboard players reset #scan_enchanting_island switch.data

execute if score #scan_enchanting_island switch.data matches 1.. run schedule function switch:maps/survival/enchanting_island/scan_doors 1t

