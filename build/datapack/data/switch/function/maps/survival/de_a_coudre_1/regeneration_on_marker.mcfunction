
#> switch:maps/survival/de_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/de_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_de_a_coudre_1_y switch.data

execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 29014 ~0.5 29024 14 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 29000 ~ 29000 29028 ~ 29049 to switch:game 29000 ~0 29000 replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 29041 ~0.5 29024 13 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 29028 ~ 29000 29055 ~ 29049 to switch:game 29028 ~0 29000 replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 29069 ~0.5 29024 14 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 29055 ~ 29000 29083 ~ 29049 to switch:game 29055 ~0 29000 replace force

scoreboard players add #rg_de_a_coudre_1_mod switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 in switch:game run kill @e[type=item,x=29041,y=100,z=29024,distance=..1000]
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players add #rg_de_a_coudre_1_y switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0

kill @s

