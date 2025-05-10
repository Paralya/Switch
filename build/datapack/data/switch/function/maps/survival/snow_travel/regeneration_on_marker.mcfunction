
#> switch:maps/survival/snow_travel/regeneration_on_marker
#
# @within	switch:maps/survival/snow_travel/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_travel_y switch.data

execute if score #rg_snow_travel_mod switch.data matches 0 at @s in switch:game run particle cloud 23007 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 0 at @s run clone from minecraft:overworld 23000 ~ 23000 23014 ~ 23205 to switch:game 23000 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 1 at @s in switch:game run particle cloud 23021 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 1 at @s run clone from minecraft:overworld 23014 ~ 23000 23028 ~ 23205 to switch:game 23014 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 2 at @s in switch:game run particle cloud 23034 ~0.5 23102 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 2 at @s run clone from minecraft:overworld 23028 ~ 23000 23041 ~ 23205 to switch:game 23028 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 3 at @s in switch:game run particle cloud 23048 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 3 at @s run clone from minecraft:overworld 23041 ~ 23000 23055 ~ 23205 to switch:game 23041 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 4 at @s in switch:game run particle cloud 23062 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 4 at @s run clone from minecraft:overworld 23055 ~ 23000 23069 ~ 23205 to switch:game 23055 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 5 at @s in switch:game run particle cloud 23076 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 5 at @s run clone from minecraft:overworld 23069 ~ 23000 23083 ~ 23205 to switch:game 23069 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 6 at @s in switch:game run particle cloud 23090 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 6 at @s run clone from minecraft:overworld 23083 ~ 23000 23097 ~ 23205 to switch:game 23083 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 7 at @s in switch:game run particle cloud 23103 ~0.5 23102 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 7 at @s run clone from minecraft:overworld 23097 ~ 23000 23110 ~ 23205 to switch:game 23097 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 8 at @s in switch:game run particle cloud 23117 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 8 at @s run clone from minecraft:overworld 23110 ~ 23000 23124 ~ 23205 to switch:game 23110 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 9 at @s in switch:game run particle cloud 23131 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 9 at @s run clone from minecraft:overworld 23124 ~ 23000 23138 ~ 23205 to switch:game 23124 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 10 at @s in switch:game run particle cloud 23145 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 10 at @s run clone from minecraft:overworld 23138 ~ 23000 23152 ~ 23205 to switch:game 23138 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 11 at @s in switch:game run particle cloud 23159 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 11 at @s run clone from minecraft:overworld 23152 ~ 23000 23166 ~ 23205 to switch:game 23152 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 12 at @s in switch:game run particle cloud 23172 ~0.5 23102 6 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 12 at @s run clone from minecraft:overworld 23166 ~ 23000 23179 ~ 23205 to switch:game 23166 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 13 at @s in switch:game run particle cloud 23186 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 13 at @s run clone from minecraft:overworld 23179 ~ 23000 23193 ~ 23205 to switch:game 23179 ~0 23000 replace force

execute if score #rg_snow_travel_mod switch.data matches 14 at @s in switch:game run particle cloud 23200 ~0.5 23102 7 0 51 0 250 force
execute if score #rg_snow_travel_mod switch.data matches 14 at @s run clone from minecraft:overworld 23193 ~ 23000 23207 ~ 23205 to switch:game 23193 ~0 23000 replace force

scoreboard players add #rg_snow_travel_mod switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 in switch:game run kill @e[type=item,x=23103,y=100,z=23102,distance=..1000]
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players add #rg_snow_travel_y switch.data 1
execute if score #rg_snow_travel_mod switch.data matches 15 run scoreboard players set #rg_snow_travel_mod switch.data 0

kill @s

