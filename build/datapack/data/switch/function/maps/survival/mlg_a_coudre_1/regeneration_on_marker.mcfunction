
#> switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mlg_a_coudre_1_y switch.data

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 31009 ~0.5 31045 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 31000 ~ 31000 31019 ~ 31090 to switch:game 31000 ~0 31000 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 31028 ~0.5 31045 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 31019 ~ 31000 31038 ~ 31090 to switch:game 31019 ~0 31000 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 31047 ~0.5 31045 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 31038 ~ 31000 31056 ~ 31090 to switch:game 31038 ~0 31000 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s in switch:game run particle cloud 31065 ~0.5 31045 9 0 22 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 31056 ~ 31000 31075 ~ 31090 to switch:game 31056 ~0 31000 replace force

scoreboard players add #rg_mlg_a_coudre_1_mod switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=31037,y=100,z=31045,distance=..1000]
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players add #rg_mlg_a_coudre_1_y switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0

kill @s

