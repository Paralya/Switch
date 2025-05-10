
#> switch:maps/survival/friends_oneforall/regeneration_on_marker
#
# @within	switch:maps/survival/friends_oneforall/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_oneforall_y switch.data

execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s in switch:game run particle cloud 8012 ~0.5 8024 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ 8000 8024 ~ 8048 to switch:game 8000 ~0 8000 replace force

execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s in switch:game run particle cloud 8036 ~0.5 8024 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s run clone from minecraft:overworld 8024 ~ 8000 8048 ~ 8048 to switch:game 8024 ~0 8000 replace force

scoreboard players add #rg_friends_oneforall_mod switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 in switch:game run kill @e[type=item,x=8024,y=100,z=8024,distance=..1000]
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players add #rg_friends_oneforall_y switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players set #rg_friends_oneforall_mod switch.data 0

kill @s

