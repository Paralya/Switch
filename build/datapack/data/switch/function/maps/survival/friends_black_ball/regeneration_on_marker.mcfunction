
#> switch:maps/survival/friends_black_ball/regeneration_on_marker
#
# @within	switch:maps/survival/friends_black_ball/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_black_ball_y switch.data

execute if score #rg_friends_black_ball_mod switch.data matches 0 at @s in switch:game run particle cloud 5943 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 0 at @s run clone from minecraft:overworld 5934 ~ 5933 5952 ~ 6067 to switch:game 5934 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 1 at @s in switch:game run particle cloud 5961 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 1 at @s run clone from minecraft:overworld 5952 ~ 5933 5971 ~ 6067 to switch:game 5952 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 2 at @s in switch:game run particle cloud 5980 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 2 at @s run clone from minecraft:overworld 5971 ~ 5933 5989 ~ 6067 to switch:game 5971 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 3 at @s in switch:game run particle cloud 5998 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 3 at @s run clone from minecraft:overworld 5989 ~ 5933 6008 ~ 6067 to switch:game 5989 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 4 at @s in switch:game run particle cloud 6017 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 4 at @s run clone from minecraft:overworld 6008 ~ 5933 6026 ~ 6067 to switch:game 6008 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 5 at @s in switch:game run particle cloud 6035 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 5 at @s run clone from minecraft:overworld 6026 ~ 5933 6045 ~ 6067 to switch:game 6026 ~100 5933 replace force

execute if score #rg_friends_black_ball_mod switch.data matches 6 at @s in switch:game run particle cloud 6054 ~100.5 6000 9 0 33 0 250 force
execute if score #rg_friends_black_ball_mod switch.data matches 6 at @s run clone from minecraft:overworld 6045 ~ 5933 6063 ~ 6067 to switch:game 6045 ~100 5933 replace force

scoreboard players add #rg_friends_black_ball_mod switch.data 1
execute if score #rg_friends_black_ball_mod switch.data matches 7 in switch:game run kill @e[type=item,x=5998,y=0,z=6000,distance=..1000]
execute if score #rg_friends_black_ball_mod switch.data matches 7 run scoreboard players add #rg_friends_black_ball_y switch.data 1
execute if score #rg_friends_black_ball_mod switch.data matches 7 run scoreboard players set #rg_friends_black_ball_mod switch.data 0

kill @s

