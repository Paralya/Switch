
#> switch:maps/survival/mushroom_plains/regeneration_on_marker
#
# @within	switch:maps/survival/mushroom_plains/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mushroom_plains_y switch.data

execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s in switch:game run particle cloud -1990 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ -4000 -1980 ~ -3878 to switch:game -2000 ~0 -4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s in switch:game run particle cloud -1970 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s run clone from minecraft:overworld -1980 ~ -4000 -1959 ~ -3878 to switch:game -1980 ~0 -4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s in switch:game run particle cloud -1949 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s run clone from minecraft:overworld -1959 ~ -4000 -1939 ~ -3878 to switch:game -1959 ~0 -4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s in switch:game run particle cloud -1929 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s run clone from minecraft:overworld -1939 ~ -4000 -1919 ~ -3878 to switch:game -1939 ~0 -4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s in switch:game run particle cloud -1909 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s run clone from minecraft:overworld -1919 ~ -4000 -1898 ~ -3878 to switch:game -1919 ~0 -4000 strict replace force

execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s in switch:game run particle cloud -1888 ~0.5 -3939 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s run clone from minecraft:overworld -1898 ~ -4000 -1878 ~ -3878 to switch:game -1898 ~0 -4000 strict replace force

scoreboard players add #rg_mushroom_plains_mod switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 in switch:game run kill @e[type=item,x=-1939,y=100,z=-3939,distance=..1000]
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players add #rg_mushroom_plains_y switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players set #rg_mushroom_plains_mod switch.data 0

kill @s

