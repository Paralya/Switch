
#> switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_abandoned_city_spawn_circle_y switch.data

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s in switch:game run particle cloud -5990 ~0.5 4041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 4000 -5980 ~ 4082 to switch:game -6000 ~0 4000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s in switch:game run particle cloud -5970 ~0.5 4041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 1 at @s run clone from minecraft:overworld -5980 ~ 4000 -5959 ~ 4082 to switch:game -5980 ~0 4000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s in switch:game run particle cloud -5949 ~0.5 4041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 2 at @s run clone from minecraft:overworld -5959 ~ 4000 -5938 ~ 4082 to switch:game -5959 ~0 4000 strict replace force

execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s in switch:game run particle cloud -5928 ~0.5 4041 10 0 20 0 250 force
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 3 at @s run clone from minecraft:overworld -5938 ~ 4000 -5918 ~ 4082 to switch:game -5938 ~0 4000 strict replace force

scoreboard players add #rg_abandoned_city_spawn_circle_mod switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-5959,y=100,z=4041,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players add #rg_abandoned_city_spawn_circle_y switch.data 1
execute if score #rg_abandoned_city_spawn_circle_mod switch.data matches 4 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0

kill @s

