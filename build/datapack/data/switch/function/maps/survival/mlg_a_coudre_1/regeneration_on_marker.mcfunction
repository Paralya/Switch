
#> switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mlg_a_coudre_1_y switch.data

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s in switch:game run particle cloud 30979 ~0.5 31002 11 0 23 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 30968 ~ 30955 30990 ~ 31049 to switch:game 30968 ~0 30955 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s in switch:game run particle cloud 31001 ~0.5 31002 11 0 23 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 30990 ~ 30955 31012 ~ 31049 to switch:game 30990 ~0 30955 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s in switch:game run particle cloud 31023 ~0.5 31002 11 0 23 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 31012 ~ 30955 31034 ~ 31049 to switch:game 31012 ~0 30955 replace force

execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s in switch:game run particle cloud 31045 ~0.5 31002 11 0 23 0 250 force
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 31034 ~ 30955 31056 ~ 31049 to switch:game 31034 ~0 30955 replace force

scoreboard players add #rg_mlg_a_coudre_1_mod switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 in switch:game run kill @e[type=item,x=31012,y=95,z=31002,distance=..1000]
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players add #rg_mlg_a_coudre_1_y switch.data 1
execute if score #rg_mlg_a_coudre_1_mod switch.data matches 4 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0

kill @s

