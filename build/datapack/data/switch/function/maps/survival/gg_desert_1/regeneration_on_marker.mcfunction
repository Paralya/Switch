
#> switch:maps/survival/gg_desert_1/regeneration_on_marker
#
# @within	switch:maps/survival/gg_desert_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gg_desert_1_y switch.data

execute if score #rg_gg_desert_1_mod switch.data matches 0 at @s in switch:game run particle cloud 10134 ~16.5 8069 10 0 11 0 250 force
execute if score #rg_gg_desert_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 10124 ~ 8047 10144 ~ 8092 to switch:game 10124 ~16 8047 strict replace force

execute if score #rg_gg_desert_1_mod switch.data matches 1 at @s in switch:game run particle cloud 10154 ~16.5 8069 10 0 11 0 250 force
execute if score #rg_gg_desert_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 10144 ~ 8047 10164 ~ 8092 to switch:game 10144 ~16 8047 strict replace force

scoreboard players add #rg_gg_desert_1_mod switch.data 1
execute if score #rg_gg_desert_1_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10144,y=84,z=8069,distance=..1000]
execute if score #rg_gg_desert_1_mod switch.data matches 2 run scoreboard players add #rg_gg_desert_1_y switch.data 1
execute if score #rg_gg_desert_1_mod switch.data matches 2 run scoreboard players set #rg_gg_desert_1_mod switch.data 0

kill @s

