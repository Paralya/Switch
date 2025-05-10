
#> switch:maps/survival/shoot_da_sheep/regeneration_on_marker
#
# @within	switch:maps/survival/shoot_da_sheep/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_shoot_da_sheep_y switch.data

execute if score #rg_shoot_da_sheep_mod switch.data matches 0 at @s in switch:game run particle cloud 122990 ~3.5 123000 10 0 10 0 250 force
execute if score #rg_shoot_da_sheep_mod switch.data matches 0 at @s run clone from minecraft:overworld 122980 ~ 122980 123000 ~ 123020 to switch:game 122980 ~3 122980 replace force

execute if score #rg_shoot_da_sheep_mod switch.data matches 1 at @s in switch:game run particle cloud 123010 ~3.5 123000 10 0 10 0 250 force
execute if score #rg_shoot_da_sheep_mod switch.data matches 1 at @s run clone from minecraft:overworld 123000 ~ 122980 123020 ~ 123020 to switch:game 123000 ~3 122980 replace force

scoreboard players add #rg_shoot_da_sheep_mod switch.data 1
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 in switch:game run kill @e[type=item,x=123000,y=97,z=123000,distance=..1000]
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 run scoreboard players add #rg_shoot_da_sheep_y switch.data 1
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 run scoreboard players set #rg_shoot_da_sheep_mod switch.data 0

kill @s

