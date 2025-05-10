
#> switch:maps/survival/friends_pvpbox_ice/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_ice/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_ice_y switch.data

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s in switch:game run particle cloud 11011 ~0.5 11032 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s run clone from minecraft:overworld 11000 ~ 11000 11022 ~ 11065 to switch:game 11000 ~0 11000 replace force

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s in switch:game run particle cloud 11032 ~0.5 11032 10 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s run clone from minecraft:overworld 11022 ~ 11000 11043 ~ 11065 to switch:game 11022 ~0 11000 replace force

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s in switch:game run particle cloud 11054 ~0.5 11032 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s run clone from minecraft:overworld 11043 ~ 11000 11065 ~ 11065 to switch:game 11043 ~0 11000 replace force

scoreboard players add #rg_friends_pvpbox_ice_mod switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 in switch:game run kill @e[type=item,x=11032,y=100,z=11032,distance=..1000]
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players add #rg_friends_pvpbox_ice_y switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players set #rg_friends_pvpbox_ice_mod switch.data 0

kill @s

