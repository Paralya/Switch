
#> switch:maps/survival/friends_oneforall/regeneration_on_marker
#
# @within	switch:maps/survival/friends_oneforall/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_oneforall_y switch.data

execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s in switch:game run particle cloud 7989 ~100.5 8000 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s run clone from minecraft:overworld 7977 ~ 7976 8001 ~ 8024 to switch:game 7977 ~100 7976 replace force

execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s in switch:game run particle cloud 8013 ~100.5 8000 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s run clone from minecraft:overworld 8001 ~ 7976 8025 ~ 8024 to switch:game 8001 ~100 7976 replace force

scoreboard players add #rg_friends_oneforall_mod switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 in switch:game run kill @e[type=item,x=8001,y=0,z=8000,distance=..1000]
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players add #rg_friends_oneforall_y switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players set #rg_friends_oneforall_mod switch.data 0

kill @s

