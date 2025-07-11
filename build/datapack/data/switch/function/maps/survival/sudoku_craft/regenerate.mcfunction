
#> switch:maps/survival/sudoku_craft/regenerate
#
# @within	switch:maps/survival/sudoku_craft/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sudoku_craft switch.data 1
execute if score #rg_sudoku_craft switch.data matches 1 run data modify storage switch:maps to_regenerate.sudoku_craft set value 2b
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55000 55000 55017 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55000 55000 55017 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55017 55000 55035 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55017 55000 55035 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55035 55000 55052 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55035 55000 55052 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55052 55000 55070 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55052 55000 55070 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55070 55000 55087 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55070 55000 55087 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55087 55000 55105 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55087 55000 55105 55138
execute if score #rg_sudoku_craft switch.data matches 1 in minecraft:overworld run forceload add 55105 55000 55122 55138
execute if score #rg_sudoku_craft switch.data matches 1 in switch:game run forceload add 55105 55000 55122 55138

execute if score #rg_sudoku_craft switch.data matches 1 run scoreboard players set #rg_sudoku_craft_y switch.data 100
execute if score #rg_sudoku_craft switch.data matches 1 run scoreboard players set #rg_sudoku_craft_mod switch.data 0
execute if score #rg_sudoku_craft switch.data matches ..826 summon marker run function switch:maps/survival/sudoku_craft/regeneration_on_marker

execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run kill @e[type=item,x=55061,y=100,z=55069,distance=..1000]
execute if score #rg_sudoku_craft switch.data matches 827.. run data remove storage switch:maps to_regenerate.sudoku_craft

execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55000 55000 55017 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55000 55000 55017 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55017 55000 55035 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55017 55000 55035 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55035 55000 55052 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55035 55000 55052 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55052 55000 55070 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55052 55000 55070 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55070 55000 55087 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55070 55000 55087 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55087 55000 55105 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55087 55000 55105 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in minecraft:overworld run forceload remove 55105 55000 55122 55138
execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run forceload remove 55105 55000 55122 55138

execute if score #rg_sudoku_craft switch.data matches 827.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sudoku Craft","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sudoku_craft switch.data matches 827.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Sudoku Craft` just regenerated!"}'
execute if score #rg_sudoku_craft switch.data matches 827.. run function switch:engine/log_message/apply

execute if score #rg_sudoku_craft switch.data matches 827.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sudoku_craft"}
execute if score #rg_sudoku_craft switch.data matches 827.. run scoreboard players reset #rg_sudoku_craft switch.data
execute if score #rg_sudoku_craft switch.data matches 1.. run schedule function switch:maps/survival/sudoku_craft/regenerate 1t

