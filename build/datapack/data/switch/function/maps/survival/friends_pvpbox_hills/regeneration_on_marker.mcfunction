
#> switch:maps/survival/friends_pvpbox_hills/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_hills_y switch.data

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 11968 ~100.5 12010 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 11957 ~ 11965 11980 ~ 12055 to switch:game 11957 ~100 11965 replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 11991 ~100.5 12010 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 11980 ~ 11965 12002 ~ 12055 to switch:game 11980 ~100 11965 replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 12013 ~100.5 12010 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 12002 ~ 11965 12024 ~ 12055 to switch:game 12002 ~100 11965 replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 12035 ~100.5 12010 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 12024 ~ 11965 12047 ~ 12055 to switch:game 12024 ~100 11965 replace force

scoreboard players add #rg_friends_pvpbox_hills_mod switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 in switch:game run kill @e[type=item,x=12002,y=0,z=12010,distance=..1000]
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_hills_y switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_hills_mod switch.data 0

kill @s

