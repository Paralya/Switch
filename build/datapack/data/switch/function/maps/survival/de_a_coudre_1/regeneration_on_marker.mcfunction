
#> switch:maps/survival/de_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/de_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_de_a_coudre_1_y switch.data

execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 28982 ~0.5 29001 14 0 15 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 28968 ~ 28971 28996 ~ 29031 to switch:game 28968 ~0 28971 replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 29009 ~0.5 29001 13 0 15 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 28996 ~ 28971 29023 ~ 29031 to switch:game 28996 ~0 28971 replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 29037 ~0.5 29001 14 0 15 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 29023 ~ 28971 29051 ~ 29031 to switch:game 29023 ~0 28971 replace force

scoreboard players add #rg_de_a_coudre_1_mod switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 in switch:game run kill @e[type=item,x=29009,y=95,z=29001,distance=..1000]
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players add #rg_de_a_coudre_1_y switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0

kill @s

