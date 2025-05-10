
#> switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_abandoned_city_spawn_circle_y switch.data

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s in switch:game run particle cloud 42969 ~9.5 43000 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s run clone from minecraft:overworld 42959 ~ 42959 42980 ~ 43041 to switch:game 42959 ~9 42959 replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s in switch:game run particle cloud 42990 ~9.5 43000 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s run clone from minecraft:overworld 42980 ~ 42959 43000 ~ 43041 to switch:game 42980 ~9 42959 replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s in switch:game run particle cloud 43010 ~9.5 43000 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s run clone from minecraft:overworld 43000 ~ 42959 43020 ~ 43041 to switch:game 43000 ~9 42959 replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s in switch:game run particle cloud 43030 ~9.5 43000 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s run clone from minecraft:overworld 43020 ~ 42959 43041 ~ 43041 to switch:game 43020 ~9 42959 replace force

scoreboard players add #rg_abandoned_city_spawn_circle_mod switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 in switch:game run kill @e[type=item,x=43000,y=91,z=43000,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players add #rg_abandoned_city_spawn_circle_y switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0

kill @s

