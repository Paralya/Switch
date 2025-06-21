
#> switch:maps/survival/spruce_dojo/scan_doors
#
# @within	switch:maps/survival/spruce_dojo/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_spruce_dojo switch.data 1

execute if score #scan_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84000 84000 84028 84069
execute if score #scan_spruce_dojo switch.data matches 1 in switch:game run forceload add 84000 84000 84028 84069

execute if score #scan_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84028 84000 84055 84069
execute if score #scan_spruce_dojo switch.data matches 1 in switch:game run forceload add 84028 84000 84055 84069

execute if score #scan_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84055 84000 84083 84069
execute if score #scan_spruce_dojo switch.data matches 1 in switch:game run forceload add 84055 84000 84083 84069

execute if score #scan_spruce_dojo switch.data matches 1 run data modify storage switch:maps to_scan.spruce_dojo set value 2b
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #start_x_spruce_dojo switch.data 84001
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #start_y_spruce_dojo switch.data 1
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #start_z_spruce_dojo switch.data 84001
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #end_x_spruce_dojo switch.data 84082
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #end_y_spruce_dojo switch.data 34
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players set #end_z_spruce_dojo switch.data 84068
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players operation #curr_x_spruce_dojo switch.data = #start_x_spruce_dojo switch.data
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players operation #curr_y_spruce_dojo switch.data = #start_y_spruce_dojo switch.data
execute if score #scan_spruce_dojo switch.data matches 1 run scoreboard players operation #curr_z_spruce_dojo switch.data = #start_z_spruce_dojo switch.data
execute if score #scan_spruce_dojo switch.data matches 1 run data modify storage switch:doors spruce_dojo set value []

execute if score #scan_spruce_dojo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_spruce_dojo switch.data matches 30.. summon marker run function switch:maps/survival/spruce_dojo/scan_doors_on_marker

execute if score #scan_spruce_dojo switch.data matches 68 in minecraft:overworld run forceload remove 84000 84000 84028 84069
execute if score #scan_spruce_dojo switch.data matches 68 in switch:game run forceload remove 84000 84000 84028 84069

execute if score #scan_spruce_dojo switch.data matches 68 in minecraft:overworld run forceload remove 84028 84000 84055 84069
execute if score #scan_spruce_dojo switch.data matches 68 in switch:game run forceload remove 84028 84000 84055 84069

execute if score #scan_spruce_dojo switch.data matches 68 in minecraft:overworld run forceload remove 84055 84000 84083 84069
execute if score #scan_spruce_dojo switch.data matches 68 in switch:game run forceload remove 84055 84000 84083 84069

execute if score #scan_spruce_dojo switch.data matches 68 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"spruce_dojo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_spruce_dojo switch.data matches 68 run data remove storage switch:maps to_scan.spruce_dojo
execute if score #scan_spruce_dojo switch.data matches 68 run scoreboard players reset #scan_spruce_dojo switch.data

execute if score #scan_spruce_dojo switch.data matches 1.. run schedule function switch:maps/survival/spruce_dojo/scan_doors 1t

