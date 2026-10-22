
#> switch:maps/survival/de_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/de_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_de_a_coudre_1_y switch.data

execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 4014 ~0.5 -5976 14 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ -6000 4028 ~ -5951 to switch:game 4000 ~0 -6000 strict replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 4041 ~0.5 -5976 13 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 4028 ~ -6000 4055 ~ -5951 to switch:game 4028 ~0 -6000 strict replace force

execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 4069 ~0.5 -5976 14 0 12 0 250 force
execute if score #rg_de_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 4055 ~ -6000 4083 ~ -5951 to switch:game 4055 ~0 -6000 strict replace force

scoreboard players add #rg_de_a_coudre_1_mod switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 in switch:game run kill @e[type=item,x=4041,y=100,z=-5975,distance=..1000]
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players add #rg_de_a_coudre_1_y switch.data 1
execute if score #rg_de_a_coudre_1_mod switch.data matches 3 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0

kill @s

