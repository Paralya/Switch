
#> switch:maps/survival/sudoku_craft/scan_doors
#
# @within	switch:maps/survival/sudoku_craft/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_sudoku_craft switch.data 1

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -2000 -8000 -1983 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -2000 -8000 -1983 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1983 -8000 -1965 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1983 -8000 -1965 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1965 -8000 -1948 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1965 -8000 -1948 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1948 -8000 -1930 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1948 -8000 -1930 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1930 -8000 -1913 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1930 -8000 -1913 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1913 -8000 -1895 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1913 -8000 -1895 -7862

execute if score #scan_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1895 -8000 -1878 -7862
execute if score #scan_sudoku_craft switch.data matches 1 in switch:game run forceload add -1895 -8000 -1878 -7862

execute if score #scan_sudoku_craft switch.data matches 1 run data modify storage switch:maps to_scan.sudoku_craft set value 2b
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_x_sudoku_craft switch.data -1999
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_y_sudoku_craft switch.data 101
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #start_z_sudoku_craft switch.data -7999
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_x_sudoku_craft switch.data -1879
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_y_sudoku_craft switch.data 216
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players set #end_z_sudoku_craft switch.data -7863
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_x_sudoku_craft switch.data = #start_x_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_y_sudoku_craft switch.data = #start_y_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run scoreboard players operation #curr_z_sudoku_craft switch.data = #start_z_sudoku_craft switch.data
execute if score #scan_sudoku_craft switch.data matches 1 run data modify storage switch:doors sudoku_craft set value []

execute if score #scan_sudoku_craft switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_sudoku_craft switch.data matches 30.. summon marker run function switch:maps/survival/sudoku_craft/scan_doors_on_marker

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -2000 -8000 -1983 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -2000 -8000 -1983 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1983 -8000 -1965 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1983 -8000 -1965 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1965 -8000 -1948 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1965 -8000 -1948 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1948 -8000 -1930 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1948 -8000 -1930 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1930 -8000 -1913 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1930 -8000 -1913 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1913 -8000 -1895 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1913 -8000 -1895 -7862

execute if score #scan_sudoku_craft switch.data matches 415 in minecraft:overworld run forceload remove -1895 -8000 -1878 -7862
execute if score #scan_sudoku_craft switch.data matches 415 in switch:game run forceload remove -1895 -8000 -1878 -7862

execute if score #scan_sudoku_craft switch.data matches 415 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"sudoku_craft","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_sudoku_craft switch.data matches 415 run data remove storage switch:maps to_scan.sudoku_craft
execute if score #scan_sudoku_craft switch.data matches 415 run scoreboard players reset #scan_sudoku_craft switch.data

execute if score #scan_sudoku_craft switch.data matches 1.. run schedule function switch:maps/survival/sudoku_craft/scan_doors 1t

