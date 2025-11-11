
#> switch:maps/survival/gg_chamber/regeneration_on_marker
#
# @within	switch:maps/survival/gg_chamber/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_chamber_y switch.data

execute if score #rg_gg_chamber_mod switch.data matches 0 at @s in switch:game run particle cloud 124052 ~16.5 124116 10 0 11 0 250 force
execute if score #rg_gg_chamber_mod switch.data matches 0 at @s run clone from minecraft:overworld 124042 ~ 124094 124062 ~ 124138 to switch:game 124042 ~16 124094 strict replace force

execute if score #rg_gg_chamber_mod switch.data matches 1 at @s in switch:game run particle cloud 124071 ~16.5 124116 9 0 11 0 250 force
execute if score #rg_gg_chamber_mod switch.data matches 1 at @s run clone from minecraft:overworld 124062 ~ 124094 124081 ~ 124138 to switch:game 124062 ~16 124094 strict replace force

scoreboard players add #rg_gg_chamber_mod switch.data 1
execute if score #rg_gg_chamber_mod switch.data matches 2 in switch:game run kill @e[type=item,x=124061,y=84,z=124116,distance=..1000]
execute if score #rg_gg_chamber_mod switch.data matches 2 run scoreboard players add #rg_gg_chamber_y switch.data 1
execute if score #rg_gg_chamber_mod switch.data matches 2 run scoreboard players set #rg_gg_chamber_mod switch.data 0

kill @s

