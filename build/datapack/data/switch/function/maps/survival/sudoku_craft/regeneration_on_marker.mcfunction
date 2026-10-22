
#> switch:maps/survival/sudoku_craft/regeneration_on_marker
#
# @within	switch:maps/survival/sudoku_craft/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sudoku_craft_y switch.data

execute if score #rg_sudoku_craft_mod switch.data matches 0 at @s in switch:game run particle cloud -1992 ~0.5 -7931 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ -8000 -1983 ~ -7862 to switch:game -2000 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 1 at @s in switch:game run particle cloud -1974 ~0.5 -7931 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 1 at @s run clone from minecraft:overworld -1983 ~ -8000 -1965 ~ -7862 to switch:game -1983 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 2 at @s in switch:game run particle cloud -1957 ~0.5 -7931 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 2 at @s run clone from minecraft:overworld -1965 ~ -8000 -1948 ~ -7862 to switch:game -1965 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 3 at @s in switch:game run particle cloud -1939 ~0.5 -7931 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 3 at @s run clone from minecraft:overworld -1948 ~ -8000 -1930 ~ -7862 to switch:game -1948 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 4 at @s in switch:game run particle cloud -1922 ~0.5 -7931 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 4 at @s run clone from minecraft:overworld -1930 ~ -8000 -1913 ~ -7862 to switch:game -1930 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 5 at @s in switch:game run particle cloud -1904 ~0.5 -7931 9 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 5 at @s run clone from minecraft:overworld -1913 ~ -8000 -1895 ~ -7862 to switch:game -1913 ~0 -8000 strict replace force

execute if score #rg_sudoku_craft_mod switch.data matches 6 at @s in switch:game run particle cloud -1887 ~0.5 -7931 8 0 34 0 250 force
execute if score #rg_sudoku_craft_mod switch.data matches 6 at @s run clone from minecraft:overworld -1895 ~ -8000 -1878 ~ -7862 to switch:game -1895 ~0 -8000 strict replace force

scoreboard players add #rg_sudoku_craft_mod switch.data 1
execute if score #rg_sudoku_craft_mod switch.data matches 7 in switch:game run kill @e[type=item,x=-1939,y=100,z=-7931,distance=..1000]
execute if score #rg_sudoku_craft_mod switch.data matches 7 run scoreboard players add #rg_sudoku_craft_y switch.data 1
execute if score #rg_sudoku_craft_mod switch.data matches 7 run scoreboard players set #rg_sudoku_craft_mod switch.data 0

kill @s

