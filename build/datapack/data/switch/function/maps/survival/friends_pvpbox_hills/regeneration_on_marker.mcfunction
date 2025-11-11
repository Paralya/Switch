
#> switch:maps/survival/friends_pvpbox_hills/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_hills_y switch.data

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 12011 ~0.5 12045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 12000 ~ 12000 12022 ~ 12090 to switch:game 12000 ~0 12000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 12033 ~0.5 12045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 12022 ~ 12000 12045 ~ 12090 to switch:game 12022 ~0 12000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 12056 ~0.5 12045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 12045 ~ 12000 12068 ~ 12090 to switch:game 12045 ~0 12000 strict replace force

execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 12079 ~0.5 12045 11 0 22 0 250 force
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 12068 ~ 12000 12090 ~ 12090 to switch:game 12068 ~0 12000 strict replace force

scoreboard players add #rg_friends_pvpbox_hills_mod switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 in switch:game run kill @e[type=item,x=12045,y=100,z=12045,distance=..1000]
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players add #rg_friends_pvpbox_hills_y switch.data 1
execute if score #rg_friends_pvpbox_hills_mod switch.data matches 4 run scoreboard players set #rg_friends_pvpbox_hills_mod switch.data 0

kill @s

