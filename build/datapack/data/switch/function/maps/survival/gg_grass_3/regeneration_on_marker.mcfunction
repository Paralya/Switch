
#> switch:maps/survival/gg_grass_3/regeneration_on_marker
#
# @within	switch:maps/survival/gg_grass_3/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_grass_3_y switch.data

execute if score #rg_gg_grass_3_mod switch.data matches 0 at @s in switch:game run particle cloud 124134 ~16.5 124115 10 0 11 0 250 force
execute if score #rg_gg_grass_3_mod switch.data matches 0 at @s run clone from minecraft:overworld 124124 ~ 124093 124144 ~ 124138 to switch:game 124124 ~16 124093 replace force

execute if score #rg_gg_grass_3_mod switch.data matches 1 at @s in switch:game run particle cloud 124154 ~16.5 124115 10 0 11 0 250 force
execute if score #rg_gg_grass_3_mod switch.data matches 1 at @s run clone from minecraft:overworld 124144 ~ 124093 124164 ~ 124138 to switch:game 124144 ~16 124093 replace force

scoreboard players add #rg_gg_grass_3_mod switch.data 1
execute if score #rg_gg_grass_3_mod switch.data matches 2 in switch:game run kill @e[type=item,x=124144,y=84,z=124115,distance=..1000]
execute if score #rg_gg_grass_3_mod switch.data matches 2 run scoreboard players add #rg_gg_grass_3_y switch.data 1
execute if score #rg_gg_grass_3_mod switch.data matches 2 run scoreboard players set #rg_gg_grass_3_mod switch.data 0

kill @s

