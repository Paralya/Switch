
#> switch:maps/survival/friends_pvpbox_end/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_end/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_end_y switch.data

execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s in switch:game run particle cloud 11 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ 4000 23 ~ 4090 to switch:game 0 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s in switch:game run particle cloud 34 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 1 at @s run clone from minecraft:overworld 23 ~ 4000 46 ~ 4090 to switch:game 23 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s in switch:game run particle cloud 57 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 2 at @s run clone from minecraft:overworld 46 ~ 4000 68 ~ 4090 to switch:game 46 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s in switch:game run particle cloud 79 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_end_mod switch.data matches 3 at @s run clone from minecraft:overworld 68 ~ 4000 91 ~ 4090 to switch:game 68 ~0 4000 strict replace force

scoreboard players add #rg_friends_pvpbox_end_mod switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 in switch:game run kill @e[type=item,x=45,y=100,z=4045,distance=..1000]
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_end_y switch.data 1
execute if score #rg_friends_pvpbox_end_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0

kill @s

