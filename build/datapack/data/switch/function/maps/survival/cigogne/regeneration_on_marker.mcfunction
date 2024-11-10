
#> switch:maps/survival/cigogne/regeneration_on_marker
#
# @within	switch:maps/survival/cigogne/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cigogne_y switch.data

execute if score #rg_cigogne_mod switch.data matches 0 at @s in switch:game run particle cloud 126011 ~100.5 126054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 0 at @s run clone from minecraft:overworld 126000 ~ 126000 126022 ~ 126108 to switch:game 126000 ~100 126000 replace force

execute if score #rg_cigogne_mod switch.data matches 1 at @s in switch:game run particle cloud 126032 ~100.5 126054 10 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 1 at @s run clone from minecraft:overworld 126022 ~ 126000 126043 ~ 126108 to switch:game 126022 ~100 126000 replace force

execute if score #rg_cigogne_mod switch.data matches 2 at @s in switch:game run particle cloud 126054 ~100.5 126054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 2 at @s run clone from minecraft:overworld 126043 ~ 126000 126065 ~ 126108 to switch:game 126043 ~100 126000 replace force

execute if score #rg_cigogne_mod switch.data matches 3 at @s in switch:game run particle cloud 126075 ~100.5 126054 10 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 3 at @s run clone from minecraft:overworld 126065 ~ 126000 126086 ~ 126108 to switch:game 126065 ~100 126000 replace force

execute if score #rg_cigogne_mod switch.data matches 4 at @s in switch:game run particle cloud 126097 ~100.5 126054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 4 at @s run clone from minecraft:overworld 126086 ~ 126000 126108 ~ 126108 to switch:game 126086 ~100 126000 replace force

scoreboard players add #rg_cigogne_mod switch.data 1
execute if score #rg_cigogne_mod switch.data matches 5 in switch:game run kill @e[type=item,x=126054,y=0,z=126054,distance=..1000]
execute if score #rg_cigogne_mod switch.data matches 5 run scoreboard players add #rg_cigogne_y switch.data 1
execute if score #rg_cigogne_mod switch.data matches 5 run scoreboard players set #rg_cigogne_mod switch.data 0

kill @s

