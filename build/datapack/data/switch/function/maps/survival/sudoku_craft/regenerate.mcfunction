
#> switch:maps/survival/sudoku_craft/regenerate
#
# @within	switch:maps/survival/sudoku_craft/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sudoku_craft switch.data 1
execute if score #rg_sudoku_craft switch.data matches 1 run data modify storage switch:maps to_regenerate.sudoku_craft set value 2b
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -2000 -8000 -1983 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -2000 -8000 -1983 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1983 -8000 -1965 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1983 -8000 -1965 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1965 -8000 -1948 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1965 -8000 -1948 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1948 -8000 -1930 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1948 -8000 -1930 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1930 -8000 -1913 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1930 -8000 -1913 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1913 -8000 -1895 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1913 -8000 -1895 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add -1895 -8000 -1878 -7862
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add -1895 -8000 -1878 -7862

execute if score #rg_sudoku_craft switch.data matches 1 run scoreboard players set #rg_sudoku_craft_y switch.data 100
execute if score #rg_sudoku_craft switch.data matches 1 run scoreboard players set #rg_sudoku_craft_mod switch.data 0
execute if score #rg_sudoku_craft switch.data matches ..826 summon marker run function switch:maps/survival/sudoku_craft/regeneration_on_marker

execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run kill @e[type=item,x=-1939,y=100,z=-7931,distance=..1000]
execute if score #rg_sudoku_craft switch.data matches 827.. run data remove storage switch:maps to_regenerate.sudoku_craft

execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -2000 -8000 -1983 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -2000 -8000 -1983 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1983 -8000 -1965 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1983 -8000 -1965 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1965 -8000 -1948 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1965 -8000 -1948 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1948 -8000 -1930 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1948 -8000 -1930 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1930 -8000 -1913 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1930 -8000 -1913 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1913 -8000 -1895 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1913 -8000 -1895 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove -1895 -8000 -1878 -7862
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove -1895 -8000 -1878 -7862

execute if score #rg_sudoku_craft switch.data matches 827.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sudoku Craft","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sudoku_craft switch.data matches 827.. run function switch:engine/log_message/apply {message:"Map `Sudoku Craft` just regenerated!"}

execute if score #rg_sudoku_craft switch.data matches 827.. run scoreboard players reset #rg_sudoku_craft switch.data
execute if score #rg_sudoku_craft switch.data matches 1.. run schedule function switch:maps/survival/sudoku_craft/regenerate 1t

