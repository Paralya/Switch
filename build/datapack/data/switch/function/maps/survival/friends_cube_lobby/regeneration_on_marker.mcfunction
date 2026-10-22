
#> switch:maps/survival/friends_cube_lobby/regeneration_on_marker
#
# @within	switch:maps/survival/friends_cube_lobby/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_cube_lobby_y switch.data

execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s in switch:game run particle cloud -3990 ~0.5 4040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ 4000 -3980 ~ 4080 to switch:game -4000 ~0 4000 strict replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s in switch:game run particle cloud -3970 ~0.5 4040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 1 at @s run clone from minecraft:overworld -3980 ~ 4000 -3960 ~ 4080 to switch:game -3980 ~0 4000 strict replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s in switch:game run particle cloud -3950 ~0.5 4040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 2 at @s run clone from minecraft:overworld -3960 ~ 4000 -3940 ~ 4080 to switch:game -3960 ~0 4000 strict replace force

execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s in switch:game run particle cloud -3930 ~0.5 4040 10 0 20 0 250 force
execute if score #rg_friends_cube_lobby_mod switch.data matches 3 at @s run clone from minecraft:overworld -3940 ~ 4000 -3920 ~ 4080 to switch:game -3940 ~0 4000 strict replace force

scoreboard players add #rg_friends_cube_lobby_mod switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-3960,y=100,z=4040,distance=..1000]
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players add #rg_friends_cube_lobby_y switch.data 1
execute if score #rg_friends_cube_lobby_mod switch.data matches 4 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0

kill @s

