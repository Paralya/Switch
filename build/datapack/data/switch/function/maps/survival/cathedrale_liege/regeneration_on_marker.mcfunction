
#> switch:maps/survival/cathedrale_liege/regeneration_on_marker
#
# @within	switch:maps/survival/cathedrale_liege/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cathedrale_liege_y switch.data

execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s in switch:game run particle cloud 26014 ~0.5 26042 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 0 at @s run clone from minecraft:overworld 26000 ~ 26000 26028 ~ 26084 to switch:game 26000 ~0 26000 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s in switch:game run particle cloud 26041 ~0.5 26042 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 1 at @s run clone from minecraft:overworld 26028 ~ 26000 26055 ~ 26084 to switch:game 26028 ~0 26000 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s in switch:game run particle cloud 26069 ~0.5 26042 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 2 at @s run clone from minecraft:overworld 26055 ~ 26000 26083 ~ 26084 to switch:game 26055 ~0 26000 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s in switch:game run particle cloud 26096 ~0.5 26042 13 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 3 at @s run clone from minecraft:overworld 26083 ~ 26000 26110 ~ 26084 to switch:game 26083 ~0 26000 replace force

execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s in switch:game run particle cloud 26124 ~0.5 26042 14 0 21 0 250 force
execute if score #rg_cathedrale_liege_mod switch.data matches 4 at @s run clone from minecraft:overworld 26110 ~ 26000 26138 ~ 26084 to switch:game 26110 ~0 26000 replace force

scoreboard players add #rg_cathedrale_liege_mod switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 in switch:game run kill @e[type=item,x=26069,y=100,z=26042,distance=..1000]
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players add #rg_cathedrale_liege_y switch.data 1
execute if score #rg_cathedrale_liege_mod switch.data matches 5 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0

kill @s

