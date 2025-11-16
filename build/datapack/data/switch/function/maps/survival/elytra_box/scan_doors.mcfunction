
#> switch:maps/survival/elytra_box/scan_doors
#
# @within	switch:maps/survival/elytra_box/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_elytra_box switch.data 1

execute if score #scan_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6000 6000 6012 6159
execute if score #scan_elytra_box switch.data matches 1 in switch:game run forceload add 6000 6000 6012 6159

execute if score #scan_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6012 6000 6025 6159
execute if score #scan_elytra_box switch.data matches 1 in switch:game run forceload add 6012 6000 6025 6159

execute if score #scan_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6025 6000 6037 6159
execute if score #scan_elytra_box switch.data matches 1 in switch:game run forceload add 6025 6000 6037 6159

execute if score #scan_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6037 6000 6050 6159
execute if score #scan_elytra_box switch.data matches 1 in switch:game run forceload add 6037 6000 6050 6159

execute if score #scan_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6050 6000 6062 6159
execute if score #scan_elytra_box switch.data matches 1 in switch:game run forceload add 6050 6000 6062 6159

execute if score #scan_elytra_box switch.data matches 1 run data modify storage switch:maps to_scan.elytra_box set value 2b
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #start_x_elytra_box switch.data 6001
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #start_y_elytra_box switch.data 101
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #start_z_elytra_box switch.data 6001
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #end_x_elytra_box switch.data 6061
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #end_y_elytra_box switch.data 129
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players set #end_z_elytra_box switch.data 6158
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players operation #curr_x_elytra_box switch.data = #start_x_elytra_box switch.data
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players operation #curr_y_elytra_box switch.data = #start_y_elytra_box switch.data
execute if score #scan_elytra_box switch.data matches 1 run scoreboard players operation #curr_z_elytra_box switch.data = #start_z_elytra_box switch.data
execute if score #scan_elytra_box switch.data matches 1 run data modify storage switch:doors elytra_box set value []

execute if score #scan_elytra_box switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_elytra_box switch.data matches 30.. summon marker run function switch:maps/survival/elytra_box/scan_doors_on_marker

execute if score #scan_elytra_box switch.data matches 86 in minecraft:overworld run forceload remove 6000 6000 6012 6159
execute if score #scan_elytra_box switch.data matches 86 in switch:game run forceload remove 6000 6000 6012 6159

execute if score #scan_elytra_box switch.data matches 86 in minecraft:overworld run forceload remove 6012 6000 6025 6159
execute if score #scan_elytra_box switch.data matches 86 in switch:game run forceload remove 6012 6000 6025 6159

execute if score #scan_elytra_box switch.data matches 86 in minecraft:overworld run forceload remove 6025 6000 6037 6159
execute if score #scan_elytra_box switch.data matches 86 in switch:game run forceload remove 6025 6000 6037 6159

execute if score #scan_elytra_box switch.data matches 86 in minecraft:overworld run forceload remove 6037 6000 6050 6159
execute if score #scan_elytra_box switch.data matches 86 in switch:game run forceload remove 6037 6000 6050 6159

execute if score #scan_elytra_box switch.data matches 86 in minecraft:overworld run forceload remove 6050 6000 6062 6159
execute if score #scan_elytra_box switch.data matches 86 in switch:game run forceload remove 6050 6000 6062 6159

execute if score #scan_elytra_box switch.data matches 86 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"elytra_box","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_elytra_box switch.data matches 86 run data remove storage switch:maps to_scan.elytra_box
execute if score #scan_elytra_box switch.data matches 86 run scoreboard players reset #scan_elytra_box switch.data

execute if score #scan_elytra_box switch.data matches 1.. run schedule function switch:maps/survival/elytra_box/scan_doors 1t

