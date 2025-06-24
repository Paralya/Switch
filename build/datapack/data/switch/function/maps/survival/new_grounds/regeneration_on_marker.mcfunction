
#> switch:maps/survival/new_grounds/regeneration_on_marker
#
# @within	switch:maps/survival/new_grounds/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_new_grounds_y switch.data

execute if score #rg_new_grounds_mod switch.data matches 0 at @s in switch:game run particle cloud 48011 ~0.5 48046 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 0 at @s run clone from minecraft:overworld 48000 ~ 48000 48023 ~ 48093 to switch:game 48000 ~0 48000 replace force

execute if score #rg_new_grounds_mod switch.data matches 1 at @s in switch:game run particle cloud 48034 ~0.5 48046 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 1 at @s run clone from minecraft:overworld 48023 ~ 48000 48046 ~ 48093 to switch:game 48023 ~0 48000 replace force

execute if score #rg_new_grounds_mod switch.data matches 2 at @s in switch:game run particle cloud 48058 ~0.5 48046 12 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 2 at @s run clone from minecraft:overworld 48046 ~ 48000 48070 ~ 48093 to switch:game 48046 ~0 48000 replace force

execute if score #rg_new_grounds_mod switch.data matches 3 at @s in switch:game run particle cloud 48081 ~0.5 48046 11 0 23 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 3 at @s run clone from minecraft:overworld 48070 ~ 48000 48093 ~ 48093 to switch:game 48070 ~0 48000 replace force

scoreboard players add #rg_new_grounds_mod switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 4 in switch:game run kill @e[type=item,x=48046,y=100,z=48046,distance=..1000]
execute if score #rg_new_grounds_mod switch.data matches 4 run scoreboard players add #rg_new_grounds_y switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 4 run scoreboard players set #rg_new_grounds_mod switch.data 0

kill @s

