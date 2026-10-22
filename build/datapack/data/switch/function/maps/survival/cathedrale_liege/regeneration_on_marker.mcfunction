
#> switch:maps/survival/cathedrale_liege/regeneration_on_marker
#
# @within	switch:maps/survival/cathedrale_liege/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cathedrale_liege_y switch.data

execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s in switch:game run particle cloud -1986 ~0.5 -5958 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ -6000 -1972 ~ -5916 to switch:game -2000 ~0 -6000 strict replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s in switch:game run particle cloud -1959 ~0.5 -5958 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s run clone from minecraft:overworld -1972 ~ -6000 -1945 ~ -5916 to switch:game -1972 ~0 -6000 strict replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s in switch:game run particle cloud -1931 ~0.5 -5958 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s run clone from minecraft:overworld -1945 ~ -6000 -1917 ~ -5916 to switch:game -1945 ~0 -6000 strict replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s in switch:game run particle cloud -1904 ~0.5 -5958 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s run clone from minecraft:overworld -1917 ~ -6000 -1890 ~ -5916 to switch:game -1917 ~0 -6000 strict replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s in switch:game run particle cloud -1876 ~0.5 -5958 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s run clone from minecraft:overworld -1890 ~ -6000 -1862 ~ -5916 to switch:game -1890 ~0 -6000 strict replace force

scoreboard players add #rg_cathedrale_liege_mod switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-1931,y=100,z=-5958,distance=..1000]
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players add #rg_cathedrale_liege_y switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0

kill @s

