
#> switch:maps/survival/minigolf/scan_doors
#
# @within	switch:maps/survival/minigolf/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_minigolf switch.data 1

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124000 124000 124018 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124000 124000 124018 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124018 124000 124037 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124018 124000 124037 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124037 124000 124055 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124037 124000 124055 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124055 124000 124074 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124055 124000 124074 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124074 124000 124092 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124074 124000 124092 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124092 124000 124111 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124092 124000 124111 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124111 124000 124129 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124111 124000 124129 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124129 124000 124148 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124129 124000 124148 124140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124148 124000 124166 124140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 124148 124000 124166 124140

execute if score #scan_minigolf switch.data matches 1 run data modify storage switch:maps to_scan.minigolf set value 2b
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_x_minigolf switch.data 124001
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_y_minigolf switch.data 85
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_z_minigolf switch.data 124001
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_x_minigolf switch.data 124165
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_y_minigolf switch.data 135
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_z_minigolf switch.data 124139
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_x_minigolf switch.data = #start_x_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_y_minigolf switch.data = #start_y_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_z_minigolf switch.data = #start_z_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run data modify storage switch:doors minigolf set value []


execute if score #scan_minigolf switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_minigolf switch.data matches 30.. summon marker run function switch:maps/survival/minigolf/scan_doors_on_marker

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124000 124000 124018 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124000 124000 124018 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124018 124000 124037 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124018 124000 124037 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124037 124000 124055 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124037 124000 124055 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124055 124000 124074 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124055 124000 124074 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124074 124000 124092 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124074 124000 124092 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124092 124000 124111 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124092 124000 124111 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124111 124000 124129 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124111 124000 124129 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124129 124000 124148 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124129 124000 124148 124140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 124148 124000 124166 124140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 124148 124000 124166 124140

execute if score #scan_minigolf switch.data matches 264 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"minigolf","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_minigolf switch.data matches 264 run data remove storage switch:maps to_scan.minigolf
execute if score #scan_minigolf switch.data matches 264 run scoreboard players reset #scan_minigolf switch.data

execute if score #scan_minigolf switch.data matches 1.. run schedule function switch:maps/survival/minigolf/scan_doors 1t

