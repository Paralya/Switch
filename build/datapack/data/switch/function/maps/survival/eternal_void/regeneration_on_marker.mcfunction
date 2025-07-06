
#> switch:maps/survival/eternal_void/regeneration_on_marker
#
# @within	switch:maps/survival/eternal_void/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_eternal_void_y switch.data

execute if score #rg_eternal_void_mod switch.data matches 0 at @s in switch:game run particle cloud 61010 ~0.5 61050 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 0 at @s run clone from minecraft:overworld 61000 ~ 61000 61020 ~ 61100 to switch:game 61000 ~0 61000 replace force

execute if score #rg_eternal_void_mod switch.data matches 1 at @s in switch:game run particle cloud 61030 ~0.5 61050 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 1 at @s run clone from minecraft:overworld 61020 ~ 61000 61040 ~ 61100 to switch:game 61020 ~0 61000 replace force

execute if score #rg_eternal_void_mod switch.data matches 2 at @s in switch:game run particle cloud 61050 ~0.5 61050 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 2 at @s run clone from minecraft:overworld 61040 ~ 61000 61060 ~ 61100 to switch:game 61040 ~0 61000 replace force

execute if score #rg_eternal_void_mod switch.data matches 3 at @s in switch:game run particle cloud 61070 ~0.5 61050 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 3 at @s run clone from minecraft:overworld 61060 ~ 61000 61080 ~ 61100 to switch:game 61060 ~0 61000 replace force

execute if score #rg_eternal_void_mod switch.data matches 4 at @s in switch:game run particle cloud 61090 ~0.5 61050 10 0 25 0 250 force
execute if score #rg_eternal_void_mod switch.data matches 4 at @s run clone from minecraft:overworld 61080 ~ 61000 61100 ~ 61100 to switch:game 61080 ~0 61000 replace force

scoreboard players add #rg_eternal_void_mod switch.data 1
execute if score #rg_eternal_void_mod switch.data matches 5 in switch:game run kill @e[type=item,x=61050,y=100,z=61050,distance=..1000]
execute if score #rg_eternal_void_mod switch.data matches 5 run scoreboard players add #rg_eternal_void_y switch.data 1
execute if score #rg_eternal_void_mod switch.data matches 5 run scoreboard players set #rg_eternal_void_mod switch.data 0

kill @s

