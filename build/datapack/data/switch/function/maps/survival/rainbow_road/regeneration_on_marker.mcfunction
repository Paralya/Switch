
#> switch:maps/survival/rainbow_road/regeneration_on_marker
#
# @within	switch:maps/survival/rainbow_road/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_rainbow_road_y switch.data

execute if score #rg_rainbow_road_mod switch.data matches 0 at @s in switch:game run particle cloud 24008 ~0.5 24068 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 0 at @s run clone from minecraft:overworld 24000 ~ 24000 24017 ~ 24137 to switch:game 24000 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 1 at @s in switch:game run particle cloud 24026 ~0.5 24068 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 1 at @s run clone from minecraft:overworld 24017 ~ 24000 24035 ~ 24137 to switch:game 24017 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 2 at @s in switch:game run particle cloud 24043 ~0.5 24068 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 2 at @s run clone from minecraft:overworld 24035 ~ 24000 24052 ~ 24137 to switch:game 24035 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 3 at @s in switch:game run particle cloud 24061 ~0.5 24068 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 3 at @s run clone from minecraft:overworld 24052 ~ 24000 24070 ~ 24137 to switch:game 24052 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 4 at @s in switch:game run particle cloud 24078 ~0.5 24068 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 4 at @s run clone from minecraft:overworld 24070 ~ 24000 24087 ~ 24137 to switch:game 24070 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 5 at @s in switch:game run particle cloud 24096 ~0.5 24068 9 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 5 at @s run clone from minecraft:overworld 24087 ~ 24000 24105 ~ 24137 to switch:game 24087 ~0 24000 replace force

execute if score #rg_rainbow_road_mod switch.data matches 6 at @s in switch:game run particle cloud 24113 ~0.5 24068 8 0 34 0 250 force
execute if score #rg_rainbow_road_mod switch.data matches 6 at @s run clone from minecraft:overworld 24105 ~ 24000 24122 ~ 24137 to switch:game 24105 ~0 24000 replace force

scoreboard players add #rg_rainbow_road_mod switch.data 1
execute if score #rg_rainbow_road_mod switch.data matches 7 in switch:game run kill @e[type=item,x=24061,y=100,z=24068,distance=..1000]
execute if score #rg_rainbow_road_mod switch.data matches 7 run scoreboard players add #rg_rainbow_road_y switch.data 1
execute if score #rg_rainbow_road_mod switch.data matches 7 run scoreboard players set #rg_rainbow_road_mod switch.data 0

kill @s

