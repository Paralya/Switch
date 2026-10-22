
#> switch:maps/survival/friends_pvpbox_ice/regeneration_on_marker
#
# @within	switch:maps/survival/friends_pvpbox_ice/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_friends_pvpbox_ice_y switch.data

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s in switch:game run particle cloud 4011 ~0.5 4032 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ 4000 4022 ~ 4065 to switch:game 4000 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s in switch:game run particle cloud 4032 ~0.5 4032 10 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 1 at @s run clone from minecraft:overworld 4022 ~ 4000 4043 ~ 4065 to switch:game 4022 ~0 4000 strict replace force

execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s in switch:game run particle cloud 4054 ~0.5 4032 11 0 16 0 250 force
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 2 at @s run clone from minecraft:overworld 4043 ~ 4000 4065 ~ 4065 to switch:game 4043 ~0 4000 strict replace force

scoreboard players add #rg_friends_pvpbox_ice_mod switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 in switch:game run kill @e[type=item,x=4032,y=100,z=4032,distance=..1000]
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players add #rg_friends_pvpbox_ice_y switch.data 1
execute if score #rg_friends_pvpbox_ice_mod switch.data matches 3 run scoreboard players set #rg_friends_pvpbox_ice_mod switch.data 0

kill @s

