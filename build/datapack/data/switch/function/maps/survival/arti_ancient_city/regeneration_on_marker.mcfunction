
#> switch:maps/survival/arti_ancient_city/regeneration_on_marker
#
# @within	switch:maps/survival/arti_ancient_city/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_ancient_city_y switch.data

execute if score #rg_arti_ancient_city_mod switch.data matches 0 at @s in switch:game run particle cloud 157009 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 0 at @s run clone from minecraft:overworld 157000 ~ 157000 157018 ~ 157117 to switch:game 157000 ~100 157000 replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 1 at @s in switch:game run particle cloud 157027 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 1 at @s run clone from minecraft:overworld 157018 ~ 157000 157037 ~ 157117 to switch:game 157018 ~100 157000 replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 2 at @s in switch:game run particle cloud 157046 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 2 at @s run clone from minecraft:overworld 157037 ~ 157000 157056 ~ 157117 to switch:game 157037 ~100 157000 replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 3 at @s in switch:game run particle cloud 157065 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 3 at @s run clone from minecraft:overworld 157056 ~ 157000 157074 ~ 157117 to switch:game 157056 ~100 157000 replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 4 at @s in switch:game run particle cloud 157083 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 4 at @s run clone from minecraft:overworld 157074 ~ 157000 157092 ~ 157117 to switch:game 157074 ~100 157000 replace force

execute if score #rg_arti_ancient_city_mod switch.data matches 5 at @s in switch:game run particle cloud 157101 ~100.5 157058 9 0 29 0 250 force
execute if score #rg_arti_ancient_city_mod switch.data matches 5 at @s run clone from minecraft:overworld 157092 ~ 157000 157111 ~ 157117 to switch:game 157092 ~100 157000 replace force

scoreboard players add #rg_arti_ancient_city_mod switch.data 1
execute if score #rg_arti_ancient_city_mod switch.data matches 6 in switch:game run kill @e[type=item,x=157055,y=0,z=157058,distance=..1000]
execute if score #rg_arti_ancient_city_mod switch.data matches 6 run scoreboard players add #rg_arti_ancient_city_y switch.data 1
execute if score #rg_arti_ancient_city_mod switch.data matches 6 run scoreboard players set #rg_arti_ancient_city_mod switch.data 0

kill @s

