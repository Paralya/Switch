
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_ice_y switch.data

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s run particle cloud 10975 ~100.5 11000 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s run clone 10964 ~ 10968 10986 ~ 11033 10964 ~100 10968 replace force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s run particle cloud 10996 ~100.5 11000 10 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s run clone 10986 ~ 10968 11007 ~ 11033 10986 ~100 10968 replace force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s run particle cloud 11018 ~100.5 11000 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s run clone 11007 ~ 10968 11029 ~ 11033 11007 ~100 10968 replace force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run kill @e[type=item,x=10996,y=0,z=11000,distance=..1000]

scoreboard players add #rg_friends_pvpbox_ice_mod switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players add #rg_friends_pvpbox_ice_y switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players set #rg_friends_pvpbox_ice_mod switch.data 0

kill @s

