
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_end_y switch.data

execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s run particle cloud 12966 ~100.5 13000 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s run clone 12955 ~ 12955 12978 ~ 13045 12955 ~100 12955 replace force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s run particle cloud 12989 ~100.5 13000 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s run clone 12978 ~ 12955 13000 ~ 13045 12978 ~100 12955 replace force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s run particle cloud 13011 ~100.5 13000 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s run clone 13000 ~ 12955 13023 ~ 13045 13000 ~100 12955 replace force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s run particle cloud 13034 ~100.5 13000 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s run clone 13023 ~ 12955 13046 ~ 13045 13023 ~100 12955 replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run kill @e[type=item,x=13000,y=0,z=13000,distance=..1000]
scoreboard players add #rg_friends_pvpbox_end_mod switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_end_y switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0

kill @s

