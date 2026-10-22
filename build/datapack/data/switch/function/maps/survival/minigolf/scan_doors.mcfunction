
#> switch:maps/survival/minigolf/scan_doors
#
# @within	switch:maps/survival/minigolf/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_minigolf switch.data 1

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10000 8000 10018 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10000 8000 10018 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10018 8000 10037 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10018 8000 10037 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10037 8000 10055 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10037 8000 10055 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10055 8000 10074 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10055 8000 10074 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10074 8000 10092 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10074 8000 10092 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10092 8000 10111 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10092 8000 10111 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10111 8000 10129 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10111 8000 10129 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10129 8000 10148 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10129 8000 10148 8140

execute if score #scan_minigolf switch.data matches 1 in minecraft:overworld run forceload add 10148 8000 10166 8140
execute if score #scan_minigolf switch.data matches 1 in switch:game run forceload add 10148 8000 10166 8140

execute if score #scan_minigolf switch.data matches 1 run data modify storage switch:maps to_scan.minigolf set value 2b
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_x_minigolf switch.data 10001
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_y_minigolf switch.data 85
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #start_z_minigolf switch.data 8001
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_x_minigolf switch.data 10165
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_y_minigolf switch.data 135
execute if score #scan_minigolf switch.data matches 1 run scoreboard players set #end_z_minigolf switch.data 8139
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_x_minigolf switch.data = #start_x_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_y_minigolf switch.data = #start_y_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run scoreboard players operation #curr_z_minigolf switch.data = #start_z_minigolf switch.data
execute if score #scan_minigolf switch.data matches 1 run data modify storage switch:doors minigolf set value []

execute if score #scan_minigolf switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_minigolf switch.data matches 30.. summon marker run function switch:maps/survival/minigolf/scan_doors_on_marker

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10000 8000 10018 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10000 8000 10018 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10018 8000 10037 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10018 8000 10037 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10037 8000 10055 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10037 8000 10055 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10055 8000 10074 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10055 8000 10074 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10074 8000 10092 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10074 8000 10092 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10092 8000 10111 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10092 8000 10111 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10111 8000 10129 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10111 8000 10129 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10129 8000 10148 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10129 8000 10148 8140

execute if score #scan_minigolf switch.data matches 264 in minecraft:overworld run forceload remove 10148 8000 10166 8140
execute if score #scan_minigolf switch.data matches 264 in switch:game run forceload remove 10148 8000 10166 8140

execute if score #scan_minigolf switch.data matches 264 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"minigolf","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_minigolf switch.data matches 264 run data remove storage switch:maps to_scan.minigolf
execute if score #scan_minigolf switch.data matches 264 run scoreboard players reset #scan_minigolf switch.data

execute if score #scan_minigolf switch.data matches 1.. run schedule function switch:maps/survival/minigolf/scan_doors 1t

