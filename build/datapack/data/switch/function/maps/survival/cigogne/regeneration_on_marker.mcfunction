
#> switch:maps/survival/cigogne/regeneration_on_marker
#
# @within	switch:maps/survival/cigogne/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cigogne_y switch.data

execute if score #rg_cigogne_mod switch.data matches 0 at @s in switch:game run particle cloud 8011 ~0.5 10054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ 10000 8022 ~ 10108 to switch:game 8000 ~0 10000 strict replace force

execute if score #rg_cigogne_mod switch.data matches 1 at @s in switch:game run particle cloud 8032 ~0.5 10054 10 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 1 at @s run clone from minecraft:overworld 8022 ~ 10000 8043 ~ 10108 to switch:game 8022 ~0 10000 strict replace force

execute if score #rg_cigogne_mod switch.data matches 2 at @s in switch:game run particle cloud 8054 ~0.5 10054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 2 at @s run clone from minecraft:overworld 8043 ~ 10000 8065 ~ 10108 to switch:game 8043 ~0 10000 strict replace force

execute if score #rg_cigogne_mod switch.data matches 3 at @s in switch:game run particle cloud 8075 ~0.5 10054 10 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 3 at @s run clone from minecraft:overworld 8065 ~ 10000 8086 ~ 10108 to switch:game 8065 ~0 10000 strict replace force

execute if score #rg_cigogne_mod switch.data matches 4 at @s in switch:game run particle cloud 8097 ~0.5 10054 11 0 27 0 250 force
execute if score #rg_cigogne_mod switch.data matches 4 at @s run clone from minecraft:overworld 8086 ~ 10000 8108 ~ 10108 to switch:game 8086 ~0 10000 strict replace force

scoreboard players add #rg_cigogne_mod switch.data 1
execute if score #rg_cigogne_mod switch.data matches 5 in switch:game run kill @e[type=item,x=8054,y=100,z=10054,distance=..1000]
execute if score #rg_cigogne_mod switch.data matches 5 run scoreboard players add #rg_cigogne_y switch.data 1
execute if score #rg_cigogne_mod switch.data matches 5 run scoreboard players set #rg_cigogne_mod switch.data 0

kill @s

