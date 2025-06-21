
#> switch:maps/survival/cigogne/scan_doors
#
# @within	switch:maps/survival/cigogne/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_cigogne switch.data 1

execute if score #scan_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126000 126000 126022 126108
execute if score #scan_cigogne switch.data matches 1 in switch:game run forceload add 126000 126000 126022 126108

execute if score #scan_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126022 126000 126043 126108
execute if score #scan_cigogne switch.data matches 1 in switch:game run forceload add 126022 126000 126043 126108

execute if score #scan_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126043 126000 126065 126108
execute if score #scan_cigogne switch.data matches 1 in switch:game run forceload add 126043 126000 126065 126108

execute if score #scan_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126065 126000 126086 126108
execute if score #scan_cigogne switch.data matches 1 in switch:game run forceload add 126065 126000 126086 126108

execute if score #scan_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126086 126000 126108 126108
execute if score #scan_cigogne switch.data matches 1 in switch:game run forceload add 126086 126000 126108 126108

execute if score #scan_cigogne switch.data matches 1 run data modify storage switch:maps to_scan.cigogne set value 2b
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #start_x_cigogne switch.data 126001
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #start_y_cigogne switch.data 1
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #start_z_cigogne switch.data 126001
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #end_x_cigogne switch.data 126107
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #end_y_cigogne switch.data 46
execute if score #scan_cigogne switch.data matches 1 run scoreboard players set #end_z_cigogne switch.data 126107
execute if score #scan_cigogne switch.data matches 1 run scoreboard players operation #curr_x_cigogne switch.data = #start_x_cigogne switch.data
execute if score #scan_cigogne switch.data matches 1 run scoreboard players operation #curr_y_cigogne switch.data = #start_y_cigogne switch.data
execute if score #scan_cigogne switch.data matches 1 run scoreboard players operation #curr_z_cigogne switch.data = #start_z_cigogne switch.data
execute if score #scan_cigogne switch.data matches 1 run data modify storage switch:doors cigogne set value []

execute if score #scan_cigogne switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_cigogne switch.data matches 30.. summon marker run function switch:maps/survival/cigogne/scan_doors_on_marker

execute if score #scan_cigogne switch.data matches 136 in minecraft:overworld run forceload remove 126000 126000 126022 126108
execute if score #scan_cigogne switch.data matches 136 in switch:game run forceload remove 126000 126000 126022 126108

execute if score #scan_cigogne switch.data matches 136 in minecraft:overworld run forceload remove 126022 126000 126043 126108
execute if score #scan_cigogne switch.data matches 136 in switch:game run forceload remove 126022 126000 126043 126108

execute if score #scan_cigogne switch.data matches 136 in minecraft:overworld run forceload remove 126043 126000 126065 126108
execute if score #scan_cigogne switch.data matches 136 in switch:game run forceload remove 126043 126000 126065 126108

execute if score #scan_cigogne switch.data matches 136 in minecraft:overworld run forceload remove 126065 126000 126086 126108
execute if score #scan_cigogne switch.data matches 136 in switch:game run forceload remove 126065 126000 126086 126108

execute if score #scan_cigogne switch.data matches 136 in minecraft:overworld run forceload remove 126086 126000 126108 126108
execute if score #scan_cigogne switch.data matches 136 in switch:game run forceload remove 126086 126000 126108 126108

execute if score #scan_cigogne switch.data matches 136 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"cigogne","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_cigogne switch.data matches 136 run data remove storage switch:maps to_scan.cigogne
execute if score #scan_cigogne switch.data matches 136 run scoreboard players reset #scan_cigogne switch.data

execute if score #scan_cigogne switch.data matches 1.. run schedule function switch:maps/survival/cigogne/scan_doors 1t

