
#> switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_abandoned_city_spawn_circle_y switch.data

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s in switch:game run particle cloud 43010 ~0.5 43041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s run clone from minecraft:overworld 43000 ~ 43000 43020 ~ 43082 to switch:game 43000 ~0 43000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s in switch:game run particle cloud 43030 ~0.5 43041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s run clone from minecraft:overworld 43020 ~ 43000 43041 ~ 43082 to switch:game 43020 ~0 43000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s in switch:game run particle cloud 43051 ~0.5 43041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s run clone from minecraft:overworld 43041 ~ 43000 43062 ~ 43082 to switch:game 43041 ~0 43000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s in switch:game run particle cloud 43072 ~0.5 43041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s run clone from minecraft:overworld 43062 ~ 43000 43082 ~ 43082 to switch:game 43062 ~0 43000 strict replace force

scoreboard players add #rg_abandoned_city_spawn_circle_mod switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 in switch:game run kill @e[type=item,x=43041,y=100,z=43041,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players add #rg_abandoned_city_spawn_circle_y switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0

kill @s

