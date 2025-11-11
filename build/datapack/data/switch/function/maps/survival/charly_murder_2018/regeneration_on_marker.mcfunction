
#> switch:maps/survival/charly_murder_2018/regeneration_on_marker
#
# @within	switch:maps/survival/charly_murder_2018/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_charly_murder_2018_y switch.data

execute if score #rg_charly_murder_2018_mod switch.data matches 0 at @s in switch:game run particle cloud 136013 ~0.5 136026 13 0 13 0 250 force
execute if score #rg_charly_murder_2018_mod switch.data matches 0 at @s run clone from minecraft:overworld 136000 ~ 136000 136026 ~ 136053 to switch:game 136000 ~0 136000 strict replace force

execute if score #rg_charly_murder_2018_mod switch.data matches 1 at @s in switch:game run particle cloud 136039 ~0.5 136026 13 0 13 0 250 force
execute if score #rg_charly_murder_2018_mod switch.data matches 1 at @s run clone from minecraft:overworld 136026 ~ 136000 136052 ~ 136053 to switch:game 136026 ~0 136000 strict replace force

scoreboard players add #rg_charly_murder_2018_mod switch.data 1
execute if score #rg_charly_murder_2018_mod switch.data matches 2 in switch:game run kill @e[type=item,x=136026,y=100,z=136026,distance=..1000]
execute if score #rg_charly_murder_2018_mod switch.data matches 2 run scoreboard players add #rg_charly_murder_2018_y switch.data 1
execute if score #rg_charly_murder_2018_mod switch.data matches 2 run scoreboard players set #rg_charly_murder_2018_mod switch.data 0

kill @s

