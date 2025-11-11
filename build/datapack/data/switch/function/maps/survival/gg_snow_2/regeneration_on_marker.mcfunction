
#> switch:maps/survival/gg_snow_2/regeneration_on_marker
#
# @within	switch:maps/survival/gg_snow_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_snow_2_y switch.data

execute if score #rg_gg_snow_2_mod switch.data matches 0 at @s in switch:game run particle cloud 124052 ~16.5 124069 10 0 11 0 250 force
execute if score #rg_gg_snow_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 124042 ~ 124047 124062 ~ 124092 to switch:game 124042 ~16 124047 strict replace force

execute if score #rg_gg_snow_2_mod switch.data matches 1 at @s in switch:game run particle cloud 124072 ~16.5 124069 10 0 11 0 250 force
execute if score #rg_gg_snow_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 124062 ~ 124047 124082 ~ 124092 to switch:game 124062 ~16 124047 strict replace force

scoreboard players add #rg_gg_snow_2_mod switch.data 1
execute if score #rg_gg_snow_2_mod switch.data matches 2 in switch:game run kill @e[type=item,x=124062,y=84,z=124069,distance=..1000]
execute if score #rg_gg_snow_2_mod switch.data matches 2 run scoreboard players add #rg_gg_snow_2_y switch.data 1
execute if score #rg_gg_snow_2_mod switch.data matches 2 run scoreboard players set #rg_gg_snow_2_mod switch.data 0

kill @s

