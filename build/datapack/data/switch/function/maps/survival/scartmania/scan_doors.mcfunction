
#> switch:maps/survival/scartmania/scan_doors
#
# @within	switch:maps/survival/scartmania/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_scartmania switch.data 1

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58000 58000 58015 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58000 58000 58015 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58015 58000 58029 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58015 58000 58029 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58029 58000 58044 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58029 58000 58044 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58044 58000 58058 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58044 58000 58058 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58058 58000 58073 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58058 58000 58073 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58073 58000 58087 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58073 58000 58087 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58087 58000 58102 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58087 58000 58102 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58102 58000 58116 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58102 58000 58116 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58116 58000 58131 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58116 58000 58131 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58131 58000 58145 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58131 58000 58145 58188

execute if score #scan_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58145 58000 58160 58188
execute if score #scan_scartmania switch.data matches 1 in switch:game run forceload add 58145 58000 58160 58188

execute if score #scan_scartmania switch.data matches 1 run data modify storage switch:maps to_scan.scartmania set value 2b
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_x_scartmania switch.data 58001
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_y_scartmania switch.data 1
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #start_z_scartmania switch.data 58001
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_x_scartmania switch.data 58159
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_y_scartmania switch.data 90
execute if score #scan_scartmania switch.data matches 1 run scoreboard players set #end_z_scartmania switch.data 58187
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_x_scartmania switch.data = #start_x_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_y_scartmania switch.data = #start_y_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run scoreboard players operation #curr_z_scartmania switch.data = #start_z_scartmania switch.data
execute if score #scan_scartmania switch.data matches 1 run data modify storage switch:doors scartmania set value []


execute if score #scan_scartmania switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_scartmania switch.data matches 30.. summon marker run function switch:maps/survival/scartmania/scan_doors_on_marker

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58000 58000 58015 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58000 58000 58015 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58015 58000 58029 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58015 58000 58029 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58029 58000 58044 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58029 58000 58044 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58044 58000 58058 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58044 58000 58058 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58058 58000 58073 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58058 58000 58073 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58073 58000 58087 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58073 58000 58087 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58087 58000 58102 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58087 58000 58102 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58102 58000 58116 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58102 58000 58116 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58116 58000 58131 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58116 58000 58131 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58131 58000 58145 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58131 58000 58145 58188

execute if score #scan_scartmania switch.data matches 566 in minecraft:overworld run forceload remove 58145 58000 58160 58188
execute if score #scan_scartmania switch.data matches 566 in switch:game run forceload remove 58145 58000 58160 58188

execute if score #scan_scartmania switch.data matches 566 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"scartmania","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_scartmania switch.data matches 566 run data remove storage switch:maps to_scan.scartmania
execute if score #scan_scartmania switch.data matches 566 run scoreboard players reset #scan_scartmania switch.data

execute if score #scan_scartmania switch.data matches 1.. run schedule function switch:maps/survival/scartmania/scan_doors 1t

