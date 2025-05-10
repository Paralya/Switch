
#> switch:maps/survival/friends_cube_lobby/regeneration_on_marker
#
# @within	switch:maps/survival/friends_cube_lobby/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_cube_lobby_y switch.data

execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s in switch:game run particle cloud 17010 ~0.5 17040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s run clone from minecraft:overworld 17000 ~ 17000 17020 ~ 17080 to switch:game 17000 ~0 17000 replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s in switch:game run particle cloud 17030 ~0.5 17040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s run clone from minecraft:overworld 17020 ~ 17000 17040 ~ 17080 to switch:game 17020 ~0 17000 replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s in switch:game run particle cloud 17050 ~0.5 17040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s run clone from minecraft:overworld 17040 ~ 17000 17060 ~ 17080 to switch:game 17040 ~0 17000 replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s in switch:game run particle cloud 17070 ~0.5 17040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s run clone from minecraft:overworld 17060 ~ 17000 17080 ~ 17080 to switch:game 17060 ~0 17000 replace force

scoreboard players add #rg_friends_cube_lobby_mod switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 in switch:game run kill @e[type=item,x=17040,y=100,z=17040,distance=..1000]
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players add #rg_friends_cube_lobby_y switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0

kill @s

