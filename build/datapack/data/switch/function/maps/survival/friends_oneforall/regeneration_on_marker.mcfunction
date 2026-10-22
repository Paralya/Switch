
#> switch:maps/survival/friends_oneforall/regeneration_on_marker
#
# @within	switch:maps/survival/friends_oneforall/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_oneforall_y switch.data

execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s in switch:game run particle cloud 4012 ~0.5 -1976 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ -2000 4024 ~ -1952 to switch:game 4000 ~0 -2000 strict replace force

execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s in switch:game run particle cloud 4036 ~0.5 -1976 12 0 12 0 250 force
execute if score #rg_friends_oneforall_mod switch.data matches 1 at @s run clone from minecraft:overworld 4024 ~ -2000 4048 ~ -1952 to switch:game 4024 ~0 -2000 strict replace force

scoreboard players add #rg_friends_oneforall_mod switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 in switch:game run kill @e[type=item,x=4024,y=100,z=-1976,distance=..1000]
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players add #rg_friends_oneforall_y switch.data 1
execute if score #rg_friends_oneforall_mod switch.data matches 2 run scoreboard players set #rg_friends_oneforall_mod switch.data 0

kill @s

