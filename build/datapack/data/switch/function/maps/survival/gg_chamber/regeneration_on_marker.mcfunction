
#> switch:maps/survival/gg_chamber/regeneration_on_marker
#
# @within	switch:maps/survival/gg_chamber/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_chamber_y switch.data

execute if score #rg_gg_chamber_mod switch.data matches 0 at @s in switch:game run particle cloud 10052 ~16.5 8116 10 0 11 0 250 force
execute if score #rg_gg_chamber_mod switch.data matches 0 at @s run clone from minecraft:overworld 10042 ~ 8094 10062 ~ 8138 to switch:game 10042 ~16 8094 strict replace force

execute if score #rg_gg_chamber_mod switch.data matches 1 at @s in switch:game run particle cloud 10071 ~16.5 8116 9 0 11 0 250 force
execute if score #rg_gg_chamber_mod switch.data matches 1 at @s run clone from minecraft:overworld 10062 ~ 8094 10081 ~ 8138 to switch:game 10062 ~16 8094 strict replace force

scoreboard players add #rg_gg_chamber_mod switch.data 1
execute if score #rg_gg_chamber_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10061,y=84,z=8116,distance=..1000]
execute if score #rg_gg_chamber_mod switch.data matches 2 run scoreboard players add #rg_gg_chamber_y switch.data 1
execute if score #rg_gg_chamber_mod switch.data matches 2 run scoreboard players set #rg_gg_chamber_mod switch.data 0

kill @s

