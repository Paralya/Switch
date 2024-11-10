
#> switch:maps/survival/ghost_town/scan_doors
#
# @within	switch:maps/survival/ghost_town/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ghost_town switch.data 1

execute if score #scan_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42000 42000 42023 42056
execute if score #scan_ghost_town switch.data matches 1 in switch:game run forceload add 42000 42000 42023 42056

execute if score #scan_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42023 42000 42047 42056
execute if score #scan_ghost_town switch.data matches 1 in switch:game run forceload add 42023 42000 42047 42056

execute if score #scan_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42047 42000 42070 42056
execute if score #scan_ghost_town switch.data matches 1 in switch:game run forceload add 42047 42000 42070 42056

execute if score #scan_ghost_town switch.data matches 1 run data modify storage switch:maps to_scan.ghost_town set value 2b
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #start_x_ghost_town switch.data 42001
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #start_y_ghost_town switch.data 1
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #start_z_ghost_town switch.data 42001
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #end_x_ghost_town switch.data 42069
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #end_y_ghost_town switch.data 24
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players set #end_z_ghost_town switch.data 42055
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players operation #curr_x_ghost_town switch.data = #start_x_ghost_town switch.data
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players operation #curr_y_ghost_town switch.data = #start_y_ghost_town switch.data
execute if score #scan_ghost_town switch.data matches 1 run scoreboard players operation #curr_z_ghost_town switch.data = #start_z_ghost_town switch.data
execute if score #scan_ghost_town switch.data matches 1 run data modify storage switch:doors ghost_town set value []


execute if score #scan_ghost_town switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ghost_town switch.data matches 30.. summon marker run function switch:maps/survival/ghost_town/scan_doors_on_marker

execute if score #scan_ghost_town switch.data matches 49 in minecraft:overworld run forceload remove 42000 42000 42023 42056
execute if score #scan_ghost_town switch.data matches 49 in switch:game run forceload remove 42000 42000 42023 42056

execute if score #scan_ghost_town switch.data matches 49 in minecraft:overworld run forceload remove 42023 42000 42047 42056
execute if score #scan_ghost_town switch.data matches 49 in switch:game run forceload remove 42023 42000 42047 42056

execute if score #scan_ghost_town switch.data matches 49 in minecraft:overworld run forceload remove 42047 42000 42070 42056
execute if score #scan_ghost_town switch.data matches 49 in switch:game run forceload remove 42047 42000 42070 42056

execute if score #scan_ghost_town switch.data matches 49 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ghost_town","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ghost_town switch.data matches 49 run data remove storage switch:maps to_scan.ghost_town
execute if score #scan_ghost_town switch.data matches 49 run scoreboard players reset #scan_ghost_town switch.data

execute if score #scan_ghost_town switch.data matches 1.. run schedule function switch:maps/survival/ghost_town/scan_doors 1t

