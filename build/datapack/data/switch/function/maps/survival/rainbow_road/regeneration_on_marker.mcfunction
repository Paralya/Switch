
#> switch:maps/survival/rainbow_road/regeneration_on_marker
#
# @within	switch:maps/survival/rainbow_road/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_rainbow_road_y switch.data

execute if score #rg_rainbow_road_mod switch.data matches 0 at @s in switch:game run particle cloud -5992 ~0.5 -5932 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -6000 -5983 ~ -5863 to switch:game -6000 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 1 at @s in switch:game run particle cloud -5974 ~0.5 -5932 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 1 at @s run clone from minecraft:overworld -5983 ~ -6000 -5965 ~ -5863 to switch:game -5983 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 2 at @s in switch:game run particle cloud -5957 ~0.5 -5932 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 2 at @s run clone from minecraft:overworld -5965 ~ -6000 -5948 ~ -5863 to switch:game -5965 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 3 at @s in switch:game run particle cloud -5939 ~0.5 -5932 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 3 at @s run clone from minecraft:overworld -5948 ~ -6000 -5930 ~ -5863 to switch:game -5948 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 4 at @s in switch:game run particle cloud -5922 ~0.5 -5932 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 4 at @s run clone from minecraft:overworld -5930 ~ -6000 -5913 ~ -5863 to switch:game -5930 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 5 at @s in switch:game run particle cloud -5904 ~0.5 -5932 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 5 at @s run clone from minecraft:overworld -5913 ~ -6000 -5895 ~ -5863 to switch:game -5913 ~0 -6000 strict replace force

execute if score #rg_rainbow_road_mod switch.data matches 6 at @s in switch:game run particle cloud -5887 ~0.5 -5932 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 6 at @s run clone from minecraft:overworld -5895 ~ -6000 -5878 ~ -5863 to switch:game -5895 ~0 -6000 strict replace force

scoreboard players add #rg_rainbow_road_mod switch.data 1
execute if score #rg_rainbow_road_mod switch.data matches 7 in switch:game run kill @e[type=item,x=-5939,y=100,z=-5931,distance=..1000]
execute if score #rg_rainbow_road_mod switch.data matches 7 run scoreboard players add #rg_rainbow_road_y switch.data 1
execute if score #rg_rainbow_road_mod switch.data matches 7 run scoreboard players set #rg_rainbow_road_mod switch.data 0

kill @s

