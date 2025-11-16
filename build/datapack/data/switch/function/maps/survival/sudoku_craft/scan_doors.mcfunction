
#> switch:maps/survival/sudoku_craft/scan_doors
#
# @within	switch:maps/survival/sudoku_craft/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sudoku_craft switch.data 1

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55000 55000 55017 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55000 55000 55017 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55017 55000 55035 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55017 55000 55035 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55035 55000 55052 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55035 55000 55052 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55052 55000 55070 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55052 55000 55070 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55070 55000 55087 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55070 55000 55087 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55087 55000 55105 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55087 55000 55105 55138

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55105 55000 55122 55138
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add 55105 55000 55122 55138

execute if score #scan_sudoku_craft switch.data matches 1 run data modify storage switch:maps to_scan.sudoku_craft set value 2b
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_x_sudoku_craft switch.data 55001
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_y_sudoku_craft switch.data 101
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_z_sudoku_craft switch.data 55001
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_x_sudoku_craft switch.data 55121
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_y_sudoku_craft switch.data 216
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_z_sudoku_craft switch.data 55137
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_x_sudoku_craft switch.data = #start_x_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_y_sudoku_craft switch.data = #start_y_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_z_sudoku_craft switch.data = #start_z_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run data modify storage switch:doors sudoku_craft set value []

execute if score #scan_sudoku_craft switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sudoku_craft switch.data matches 30.. summon marker run function switch:maps/survival/sudoku_craft/scan_doors_on_marker

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55000 55000 55017 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55000 55000 55017 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55017 55000 55035 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55017 55000 55035 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55035 55000 55052 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55035 55000 55052 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55052 55000 55070 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55052 55000 55070 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55070 55000 55087 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55070 55000 55087 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55087 55000 55105 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55087 55000 55105 55138

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove 55105 55000 55122 55138
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove 55105 55000 55122 55138

execute if score #scan_sudoku_craft switch.data matches 415 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sudoku_craft","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sudoku_craft switch.data matches 415 run data remove storage switch:maps to_scan.sudoku_craft
execute if score #scan_sudoku_craft switch.data matches 415 run scoreboard players reset #scan_sudoku_craft switch.data

execute if score #scan_sudoku_craft switch.data matches 1.. run schedule function switch:maps/survival/sudoku_craft/scan_doors 1t

