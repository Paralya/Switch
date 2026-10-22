
#> switch:maps/survival/gg_grass_2/regeneration_on_marker
#
# @within	switch:maps/survival/gg_grass_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_grass_2_y switch.data

execute if score #rg_gg_grass_2_mod switch.data matches 0 at @s in switch:game run particle cloud 10011 ~16.5 8023 10 0 11 0 250 force
execute if score #rg_gg_grass_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 10001 ~ 8001 10021 ~ 8046 to switch:game 10001 ~16 8001 strict replace force

execute if score #rg_gg_grass_2_mod switch.data matches 1 at @s in switch:game run particle cloud 10031 ~16.5 8023 10 0 11 0 250 force
execute if score #rg_gg_grass_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 10021 ~ 8001 10041 ~ 8046 to switch:game 10021 ~16 8001 strict replace force

scoreboard players add #rg_gg_grass_2_mod switch.data 1
execute if score #rg_gg_grass_2_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10021,y=84,z=8023,distance=..1000]
execute if score #rg_gg_grass_2_mod switch.data matches 2 run scoreboard players add #rg_gg_grass_2_y switch.data 1
execute if score #rg_gg_grass_2_mod switch.data matches 2 run scoreboard players set #rg_gg_grass_2_mod switch.data 0

kill @s

