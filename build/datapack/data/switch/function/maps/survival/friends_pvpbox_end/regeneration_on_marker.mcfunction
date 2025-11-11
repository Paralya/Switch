
#> switch:maps/survival/friends_pvpbox_end/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_end/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_end_y switch.data

execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s in switch:game run particle cloud 13011 ~0.5 13045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s run clone from minecraft:overworld 13000 ~ 13000 13023 ~ 13090 to switch:game 13000 ~0 13000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s in switch:game run particle cloud 13034 ~0.5 13045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s run clone from minecraft:overworld 13023 ~ 13000 13046 ~ 13090 to switch:game 13023 ~0 13000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s in switch:game run particle cloud 13057 ~0.5 13045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s run clone from minecraft:overworld 13046 ~ 13000 13068 ~ 13090 to switch:game 13046 ~0 13000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s in switch:game run particle cloud 13079 ~0.5 13045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s run clone from minecraft:overworld 13068 ~ 13000 13091 ~ 13090 to switch:game 13068 ~0 13000 strict replace force

scoreboard players add #rg_friends_pvpbox_end_mod switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 in switch:game run kill @e[type=item,x=13045,y=100,z=13045,distance=..1000]
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_end_y switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0

kill @s

