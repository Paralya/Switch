
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_cube_lobby_y switch.data

execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s run particle cloud 16970 ~100.5 17000 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s run clone 16960 ~ 16960 16980 ~ 17040 16960 ~100 16960 replace force
execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s run particle cloud 16990 ~100.5 17000 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s run clone 16980 ~ 16960 17000 ~ 17040 16980 ~100 16960 replace force
execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s run particle cloud 17010 ~100.5 17000 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s run clone 17000 ~ 16960 17020 ~ 17040 17000 ~100 16960 replace force
execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s run particle cloud 17030 ~100.5 17000 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s run clone 17020 ~ 16960 17040 ~ 17040 17020 ~100 16960 replace force
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run kill @e[type=item,x=17000,y=0,z=17000,distance=..1000]

scoreboard players add #rg_friends_cube_lobby_mod switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players add #rg_friends_cube_lobby_y switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0

kill @s

