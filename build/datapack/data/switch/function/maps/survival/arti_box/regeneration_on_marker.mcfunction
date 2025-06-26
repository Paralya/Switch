
#> switch:maps/survival/arti_box/regeneration_on_marker
#
# @within	switch:maps/survival/arti_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_box_y switch.data

execute if score #rg_arti_box_mod switch.data matches 0 at @s in switch:game run particle cloud 119012 ~0.5 119023 12 0 11 0 250 force
execute if score #rg_arti_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 119000 ~ 119000 119024 ~ 119047 to switch:game 119000 ~0 119000 replace force

execute if score #rg_arti_box_mod switch.data matches 1 at @s in switch:game run particle cloud 119035 ~0.5 119023 11 0 11 0 250 force
execute if score #rg_arti_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 119024 ~ 119000 119047 ~ 119047 to switch:game 119024 ~0 119000 replace force

scoreboard players add #rg_arti_box_mod switch.data 1
execute if score #rg_arti_box_mod switch.data matches 2 in switch:game run kill @e[type=item,x=119023,y=100,z=119023,distance=..1000]
execute if score #rg_arti_box_mod switch.data matches 2 run scoreboard players add #rg_arti_box_y switch.data 1
execute if score #rg_arti_box_mod switch.data matches 2 run scoreboard players set #rg_arti_box_mod switch.data 0

kill @s

