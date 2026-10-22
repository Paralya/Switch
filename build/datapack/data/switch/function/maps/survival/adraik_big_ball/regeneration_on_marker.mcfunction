
#> switch:maps/survival/adraik_big_ball/regeneration_on_marker
#
# @within	switch:maps/survival/adraik_big_ball/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_adraik_big_ball_y switch.data

execute if score #rg_adraik_big_ball_mod switch.data matches 0 at @s in switch:game run particle cloud 6007 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 2000 6014 ~ 2205 to switch:game 6000 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 1 at @s in switch:game run particle cloud 6020 ~0.5 2102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 1 at @s run clone from minecraft:overworld 6014 ~ 2000 6027 ~ 2205 to switch:game 6014 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 2 at @s in switch:game run particle cloud 6034 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 2 at @s run clone from minecraft:overworld 6027 ~ 2000 6041 ~ 2205 to switch:game 6027 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 3 at @s in switch:game run particle cloud 6048 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 3 at @s run clone from minecraft:overworld 6041 ~ 2000 6055 ~ 2205 to switch:game 6041 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 4 at @s in switch:game run particle cloud 6062 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 4 at @s run clone from minecraft:overworld 6055 ~ 2000 6069 ~ 2205 to switch:game 6055 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 5 at @s in switch:game run particle cloud 6075 ~0.5 2102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 5 at @s run clone from minecraft:overworld 6069 ~ 2000 6082 ~ 2205 to switch:game 6069 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 6 at @s in switch:game run particle cloud 6089 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 6 at @s run clone from minecraft:overworld 6082 ~ 2000 6096 ~ 2205 to switch:game 6082 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 7 at @s in switch:game run particle cloud 6103 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 7 at @s run clone from minecraft:overworld 6096 ~ 2000 6110 ~ 2205 to switch:game 6096 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 8 at @s in switch:game run particle cloud 6117 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 8 at @s run clone from minecraft:overworld 6110 ~ 2000 6124 ~ 2205 to switch:game 6110 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 9 at @s in switch:game run particle cloud 6130 ~0.5 2102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 9 at @s run clone from minecraft:overworld 6124 ~ 2000 6137 ~ 2205 to switch:game 6124 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 10 at @s in switch:game run particle cloud 6144 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 10 at @s run clone from minecraft:overworld 6137 ~ 2000 6151 ~ 2205 to switch:game 6137 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 11 at @s in switch:game run particle cloud 6158 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 11 at @s run clone from minecraft:overworld 6151 ~ 2000 6165 ~ 2205 to switch:game 6151 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 12 at @s in switch:game run particle cloud 6172 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 12 at @s run clone from minecraft:overworld 6165 ~ 2000 6179 ~ 2205 to switch:game 6165 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 13 at @s in switch:game run particle cloud 6185 ~0.5 2102 6 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 13 at @s run clone from minecraft:overworld 6179 ~ 2000 6192 ~ 2205 to switch:game 6179 ~0 2000 strict replace force

execute if score #rg_adraik_big_ball_mod switch.data matches 14 at @s in switch:game run particle cloud 6199 ~0.5 2102 7 0 51 0 250 force
execute if score #rg_adraik_big_ball_mod switch.data matches 14 at @s run clone from minecraft:overworld 6192 ~ 2000 6206 ~ 2205 to switch:game 6192 ~0 2000 strict replace force

scoreboard players add #rg_adraik_big_ball_mod switch.data 1
execute if score #rg_adraik_big_ball_mod switch.data matches 15 in switch:game run kill @e[type=item,x=6103,y=100,z=2102,distance=..1000]
execute if score #rg_adraik_big_ball_mod switch.data matches 15 run scoreboard players add #rg_adraik_big_ball_y switch.data 1
execute if score #rg_adraik_big_ball_mod switch.data matches 15 run scoreboard players set #rg_adraik_big_ball_mod switch.data 0

kill @s

