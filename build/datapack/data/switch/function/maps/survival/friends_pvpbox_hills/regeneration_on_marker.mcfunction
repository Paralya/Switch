
#> switch:maps/survival/friends_pvpbox_hills/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_hills_y switch.data

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 2011 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ 4000 2022 ~ 4090 to switch:game 2000 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 2033 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 2022 ~ 4000 2045 ~ 4090 to switch:game 2022 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 2056 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 2045 ~ 4000 2068 ~ 4090 to switch:game 2045 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 2079 ~0.5 4045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 2068 ~ 4000 2090 ~ 4090 to switch:game 2068 ~0 4000 strict replace force

scoreboard players add #rg_friends_pvpbox_hills_mod switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 in switch:game run kill @e[type=item,x=2045,y=100,z=4045,distance=..1000]
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_hills_y switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_hills_mod switch.data 0

kill @s

