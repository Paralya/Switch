
#> switch:maps/survival/blindtest/scan_doors
#
# @within	switch:maps/survival/blindtest/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_blindtest switch.data 1

execute if score #scan_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62000 62000 62022 62093
execute if score #scan_blindtest switch.data matches 1 in switch:game run forceload add 62000 62000 62022 62093

execute if score #scan_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62022 62000 62044 62093
execute if score #scan_blindtest switch.data matches 1 in switch:game run forceload add 62022 62000 62044 62093

execute if score #scan_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62044 62000 62066 62093
execute if score #scan_blindtest switch.data matches 1 in switch:game run forceload add 62044 62000 62066 62093

execute if score #scan_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62066 62000 62088 62093
execute if score #scan_blindtest switch.data matches 1 in switch:game run forceload add 62066 62000 62088 62093

execute if score #scan_blindtest switch.data matches 1 run data modify storage switch:maps to_scan.blindtest set value 2b
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #start_x_blindtest switch.data 62001
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #start_y_blindtest switch.data 1
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #start_z_blindtest switch.data 62001
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #end_x_blindtest switch.data 62087
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #end_y_blindtest switch.data 58
execute if score #scan_blindtest switch.data matches 1 run scoreboard players set #end_z_blindtest switch.data 62092
execute if score #scan_blindtest switch.data matches 1 run scoreboard players operation #curr_x_blindtest switch.data = #start_x_blindtest switch.data
execute if score #scan_blindtest switch.data matches 1 run scoreboard players operation #curr_y_blindtest switch.data = #start_y_blindtest switch.data
execute if score #scan_blindtest switch.data matches 1 run scoreboard players operation #curr_z_blindtest switch.data = #start_z_blindtest switch.data
execute if score #scan_blindtest switch.data matches 1 run data modify storage switch:doors blindtest set value []

execute if score #scan_blindtest switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_blindtest switch.data matches 30.. summon marker run function switch:maps/survival/blindtest/scan_doors_on_marker

execute if score #scan_blindtest switch.data matches 123 in minecraft:overworld run forceload remove 62000 62000 62022 62093
execute if score #scan_blindtest switch.data matches 123 in switch:game run forceload remove 62000 62000 62022 62093

execute if score #scan_blindtest switch.data matches 123 in minecraft:overworld run forceload remove 62022 62000 62044 62093
execute if score #scan_blindtest switch.data matches 123 in switch:game run forceload remove 62022 62000 62044 62093

execute if score #scan_blindtest switch.data matches 123 in minecraft:overworld run forceload remove 62044 62000 62066 62093
execute if score #scan_blindtest switch.data matches 123 in switch:game run forceload remove 62044 62000 62066 62093

execute if score #scan_blindtest switch.data matches 123 in minecraft:overworld run forceload remove 62066 62000 62088 62093
execute if score #scan_blindtest switch.data matches 123 in switch:game run forceload remove 62066 62000 62088 62093

execute if score #scan_blindtest switch.data matches 123 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"blindtest","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_blindtest switch.data matches 123 run data remove storage switch:maps to_scan.blindtest
execute if score #scan_blindtest switch.data matches 123 run scoreboard players reset #scan_blindtest switch.data

execute if score #scan_blindtest switch.data matches 1.. run schedule function switch:maps/survival/blindtest/scan_doors 1t

