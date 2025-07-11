
#> switch:maps/survival/sudoku_craft/regeneration_on_marker
#
# @within	switch:maps/survival/sudoku_craft/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sudoku_craft_y switch.data

execute if score #rg_sudoku_craft_mod switch.data matches 0 at @s in switch:game run particle cloud 55008 ~0.5 55069 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 0 at @s run clone from minecraft:overworld 55000 ~ 55000 55017 ~ 55138 to switch:game 55000 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 1 at @s in switch:game run particle cloud 55026 ~0.5 55069 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 1 at @s run clone from minecraft:overworld 55017 ~ 55000 55035 ~ 55138 to switch:game 55017 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 2 at @s in switch:game run particle cloud 55043 ~0.5 55069 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 2 at @s run clone from minecraft:overworld 55035 ~ 55000 55052 ~ 55138 to switch:game 55035 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 3 at @s in switch:game run particle cloud 55061 ~0.5 55069 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 3 at @s run clone from minecraft:overworld 55052 ~ 55000 55070 ~ 55138 to switch:game 55052 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 4 at @s in switch:game run particle cloud 55078 ~0.5 55069 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 4 at @s run clone from minecraft:overworld 55070 ~ 55000 55087 ~ 55138 to switch:game 55070 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 5 at @s in switch:game run particle cloud 55096 ~0.5 55069 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 5 at @s run clone from minecraft:overworld 55087 ~ 55000 55105 ~ 55138 to switch:game 55087 ~0 55000 replace force

execute if score #rg_sudoku_craft_mod switch.data matches 6 at @s in switch:game run particle cloud 55113 ~0.5 55069 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 6 at @s run clone from minecraft:overworld 55105 ~ 55000 55122 ~ 55138 to switch:game 55105 ~0 55000 replace force

scoreboard players add #rg_sudoku_craft_mod switch.data 1
execute if score #rg_sudoku_craft_mod switch.data matches 7 in switch:game run kill @e[type=item,x=55061,y=100,z=55069,distance=..1000]
execute if score #rg_sudoku_craft_mod switch.data matches 7 run scoreboard players add #rg_sudoku_craft_y switch.data 1
execute if score #rg_sudoku_craft_mod switch.data matches 7 run scoreboard players set #rg_sudoku_craft_mod switch.data 0

kill @s

