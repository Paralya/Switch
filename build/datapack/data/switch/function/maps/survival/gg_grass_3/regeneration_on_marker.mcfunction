
#> switch:maps/survival/gg_grass_3/regeneration_on_marker
#
# @within	switch:maps/survival/gg_grass_3/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_grass_3_y switch.data

execute if score #rg_gg_grass_3_mod switch.data matches 0 at @s in switch:game run particle cloud 10134 ~16.5 8115 10 0 11 0 250 force
execute if score #rg_gg_grass_3_mod switch.data matches 0 at @s run clone from minecraft:overworld 10124 ~ 8093 10144 ~ 8138 to switch:game 10124 ~16 8093 strict replace force

execute if score #rg_gg_grass_3_mod switch.data matches 1 at @s in switch:game run particle cloud 10154 ~16.5 8115 10 0 11 0 250 force
execute if score #rg_gg_grass_3_mod switch.data matches 1 at @s run clone from minecraft:overworld 10144 ~ 8093 10164 ~ 8138 to switch:game 10144 ~16 8093 strict replace force

scoreboard players add #rg_gg_grass_3_mod switch.data 1
execute if score #rg_gg_grass_3_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10144,y=84,z=8115,distance=..1000]
execute if score #rg_gg_grass_3_mod switch.data matches 2 run scoreboard players add #rg_gg_grass_3_y switch.data 1
execute if score #rg_gg_grass_3_mod switch.data matches 2 run scoreboard players set #rg_gg_grass_3_mod switch.data 0

kill @s

