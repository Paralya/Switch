
#> switch:maps/survival/snowball_painter/regeneration_on_marker
#
# @within	switch:maps/survival/snowball_painter/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snowball_painter_y switch.data

execute if score #rg_snowball_painter_mod switch.data matches 0 at @s in switch:game run particle cloud 112011 ~100.5 112021 11 0 10 0 250 force
execute if score #rg_snowball_painter_mod switch.data matches 0 at @s run clone from minecraft:overworld 112000 ~ 112000 112022 ~ 112042 to switch:game 112000 ~100 112000 replace force

execute if score #rg_snowball_painter_mod switch.data matches 1 at @s in switch:game run particle cloud 112032 ~100.5 112021 10 0 10 0 250 force
execute if score #rg_snowball_painter_mod switch.data matches 1 at @s run clone from minecraft:overworld 112022 ~ 112000 112043 ~ 112042 to switch:game 112022 ~100 112000 replace force

scoreboard players add #rg_snowball_painter_mod switch.data 1
execute if score #rg_snowball_painter_mod switch.data matches 2 in switch:game run kill @e[type=item,x=112021,y=0,z=112021,distance=..1000]
execute if score #rg_snowball_painter_mod switch.data matches 2 run scoreboard players add #rg_snowball_painter_y switch.data 1
execute if score #rg_snowball_painter_mod switch.data matches 2 run scoreboard players set #rg_snowball_painter_mod switch.data 0

kill @s

