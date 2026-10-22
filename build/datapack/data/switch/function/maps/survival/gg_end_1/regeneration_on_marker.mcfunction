
#> switch:maps/survival/gg_end_1/regeneration_on_marker
#
# @within	switch:maps/survival/gg_end_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_end_1_y switch.data

execute if score #rg_gg_end_1_mod switch.data matches 0 at @s in switch:game run particle cloud 10093 ~16.5 8115 10 0 11 0 250 force
execute if score #rg_gg_end_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 10083 ~ 8093 10103 ~ 8138 to switch:game 10083 ~16 8093 strict replace force

execute if score #rg_gg_end_1_mod switch.data matches 1 at @s in switch:game run particle cloud 10113 ~16.5 8115 10 0 11 0 250 force
execute if score #rg_gg_end_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 10103 ~ 8093 10123 ~ 8138 to switch:game 10103 ~16 8093 strict replace force

scoreboard players add #rg_gg_end_1_mod switch.data 1
execute if score #rg_gg_end_1_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10103,y=84,z=8115,distance=..1000]
execute if score #rg_gg_end_1_mod switch.data matches 2 run scoreboard players add #rg_gg_end_1_y switch.data 1
execute if score #rg_gg_end_1_mod switch.data matches 2 run scoreboard players set #rg_gg_end_1_mod switch.data 0

kill @s

