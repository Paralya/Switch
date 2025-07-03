
#> switch:maps/survival/gg_snow_1/regeneration_on_marker
#
# @within	switch:maps/survival/gg_snow_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_snow_1_y switch.data

execute if score #rg_gg_snow_1_mod switch.data matches 0 at @s in switch:game run particle cloud 124052 ~16.5 124023 10 0 11 0 250 force
execute if score #rg_gg_snow_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 124042 ~ 124001 124062 ~ 124046 to switch:game 124042 ~16 124001 replace force

execute if score #rg_gg_snow_1_mod switch.data matches 1 at @s in switch:game run particle cloud 124072 ~16.5 124023 10 0 11 0 250 force
execute if score #rg_gg_snow_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 124062 ~ 124001 124082 ~ 124046 to switch:game 124062 ~16 124001 replace force

scoreboard players add #rg_gg_snow_1_mod switch.data 1
execute if score #rg_gg_snow_1_mod switch.data matches 2 in switch:game run kill @e[type=item,x=124062,y=84,z=124023,distance=..1000]
execute if score #rg_gg_snow_1_mod switch.data matches 2 run scoreboard players add #rg_gg_snow_1_y switch.data 1
execute if score #rg_gg_snow_1_mod switch.data matches 2 run scoreboard players set #rg_gg_snow_1_mod switch.data 0

kill @s

