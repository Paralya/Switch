
#> switch:maps/survival/snowball_painter/regeneration_on_marker
#
# @within	switch:maps/survival/snowball_painter/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snowball_painter_y switch.data

execute if score #rg_snowball_painter_mod switch.data matches 0 at @s in switch:game run particle cloud 8011 ~0.5 -9979 11 0 10 0 250 force
execute if score #rg_snowball_painter_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ -10000 8022 ~ -9958 to switch:game 8000 ~0 -10000 strict replace force

execute if score #rg_snowball_painter_mod switch.data matches 1 at @s in switch:game run particle cloud 8032 ~0.5 -9979 10 0 10 0 250 force
execute if score #rg_snowball_painter_mod switch.data matches 1 at @s run clone from minecraft:overworld 8022 ~ -10000 8043 ~ -9958 to switch:game 8022 ~0 -10000 strict replace force

scoreboard players add #rg_snowball_painter_mod switch.data 1
execute if score #rg_snowball_painter_mod switch.data matches 2 in switch:game run kill @e[type=item,x=8021,y=100,z=-9979,distance=..1000]
execute if score #rg_snowball_painter_mod switch.data matches 2 run scoreboard players add #rg_snowball_painter_y switch.data 1
execute if score #rg_snowball_painter_mod switch.data matches 2 run scoreboard players set #rg_snowball_painter_mod switch.data 0

kill @s

