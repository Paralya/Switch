
#> switch:maps/survival/adraik_big_ball/regeneration_on_marker
#
# @within	switch:maps/survival/adraik_big_ball/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_adraik_big_ball_y switch.data

execute if score #rg_adraik_big_ball_mod switch.data matches 0 at @s in switch:game run particle cloud 33007 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 0 at @s run clone from minecraft:overworld 33000 ~ 33000 33014 ~ 33205 to switch:game 33000 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 1 at @s in switch:game run particle cloud 33020 ~0.5 33102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 1 at @s run clone from minecraft:overworld 33014 ~ 33000 33027 ~ 33205 to switch:game 33014 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 2 at @s in switch:game run particle cloud 33034 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 2 at @s run clone from minecraft:overworld 33027 ~ 33000 33041 ~ 33205 to switch:game 33027 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 3 at @s in switch:game run particle cloud 33048 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 3 at @s run clone from minecraft:overworld 33041 ~ 33000 33055 ~ 33205 to switch:game 33041 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 4 at @s in switch:game run particle cloud 33062 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 4 at @s run clone from minecraft:overworld 33055 ~ 33000 33069 ~ 33205 to switch:game 33055 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 5 at @s in switch:game run particle cloud 33075 ~0.5 33102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 5 at @s run clone from minecraft:overworld 33069 ~ 33000 33082 ~ 33205 to switch:game 33069 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 6 at @s in switch:game run particle cloud 33089 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 6 at @s run clone from minecraft:overworld 33082 ~ 33000 33096 ~ 33205 to switch:game 33082 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 7 at @s in switch:game run particle cloud 33103 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 7 at @s run clone from minecraft:overworld 33096 ~ 33000 33110 ~ 33205 to switch:game 33096 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 8 at @s in switch:game run particle cloud 33117 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 8 at @s run clone from minecraft:overworld 33110 ~ 33000 33124 ~ 33205 to switch:game 33110 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 9 at @s in switch:game run particle cloud 33130 ~0.5 33102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 9 at @s run clone from minecraft:overworld 33124 ~ 33000 33137 ~ 33205 to switch:game 33124 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 10 at @s in switch:game run particle cloud 33144 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 10 at @s run clone from minecraft:overworld 33137 ~ 33000 33151 ~ 33205 to switch:game 33137 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 11 at @s in switch:game run particle cloud 33158 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 11 at @s run clone from minecraft:overworld 33151 ~ 33000 33165 ~ 33205 to switch:game 33151 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 12 at @s in switch:game run particle cloud 33172 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 12 at @s run clone from minecraft:overworld 33165 ~ 33000 33179 ~ 33205 to switch:game 33165 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 13 at @s in switch:game run particle cloud 33185 ~0.5 33102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 13 at @s run clone from minecraft:overworld 33179 ~ 33000 33192 ~ 33205 to switch:game 33179 ~0 33000 replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 14 at @s in switch:game run particle cloud 33199 ~0.5 33102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 14 at @s run clone from minecraft:overworld 33192 ~ 33000 33206 ~ 33205 to switch:game 33192 ~0 33000 replace force

scoreboard players add #rg_adraik_big_ball_mod switch.data 1
execute if score #rg_adraik_big_ball_mod switch.data matches 15 in switch:game run kill @e[type=item,x=33103,y=100,z=33102,distance=..1000]
execute if score #rg_adraik_big_ball_mod switch.data matches 15 run scoreboard players add #rg_adraik_big_ball_y switch.data 1
execute if score #rg_adraik_big_ball_mod switch.data matches 15 run scoreboard players set #rg_adraik_big_ball_mod switch.data 0

kill @s

