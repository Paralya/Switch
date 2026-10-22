
#> switch:maps/survival/shoot_da_sheep/regeneration_on_marker
#
# @within	switch:maps/survival/shoot_da_sheep/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_shoot_da_sheep_y switch.data

execute if score #rg_shoot_da_sheep_mod switch.data matches 0 at @s in switch:game run particle cloud 10010 ~0.5 6020 10 0 10 0 250 force
execute if score #rg_shoot_da_sheep_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 6000 10020 ~ 6040 to switch:game 10000 ~0 6000 strict replace force

execute if score #rg_shoot_da_sheep_mod switch.data matches 1 at @s in switch:game run particle cloud 10030 ~0.5 6020 10 0 10 0 250 force
execute if score #rg_shoot_da_sheep_mod switch.data matches 1 at @s run clone from minecraft:overworld 10020 ~ 6000 10040 ~ 6040 to switch:game 10020 ~0 6000 strict replace force

scoreboard players add #rg_shoot_da_sheep_mod switch.data 1
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10020,y=100,z=6020,distance=..1000]
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 run scoreboard players add #rg_shoot_da_sheep_y switch.data 1
execute if score #rg_shoot_da_sheep_mod switch.data matches 2 run scoreboard players set #rg_shoot_da_sheep_mod switch.data 0

kill @s

