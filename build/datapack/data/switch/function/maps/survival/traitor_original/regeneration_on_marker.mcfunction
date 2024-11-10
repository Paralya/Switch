
#> switch:maps/survival/traitor_original/regeneration_on_marker
#
# @within	switch:maps/survival/traitor_original/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_traitor_original_y switch.data

execute if score #rg_traitor_original_mod switch.data matches 0 at @s in switch:game run particle cloud 1417 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 0 at @s run clone from minecraft:overworld 1408 ~ 1423 1426 ~ 1578 to switch:game 1408 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 1 at @s in switch:game run particle cloud 1435 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 1 at @s run clone from minecraft:overworld 1426 ~ 1423 1445 ~ 1578 to switch:game 1426 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 2 at @s in switch:game run particle cloud 1454 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 2 at @s run clone from minecraft:overworld 1445 ~ 1423 1463 ~ 1578 to switch:game 1445 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 3 at @s in switch:game run particle cloud 1472 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 3 at @s run clone from minecraft:overworld 1463 ~ 1423 1482 ~ 1578 to switch:game 1463 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 4 at @s in switch:game run particle cloud 1491 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 4 at @s run clone from minecraft:overworld 1482 ~ 1423 1500 ~ 1578 to switch:game 1482 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 5 at @s in switch:game run particle cloud 1509 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 5 at @s run clone from minecraft:overworld 1500 ~ 1423 1518 ~ 1578 to switch:game 1500 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 6 at @s in switch:game run particle cloud 1527 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 6 at @s run clone from minecraft:overworld 1518 ~ 1423 1537 ~ 1578 to switch:game 1518 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 7 at @s in switch:game run particle cloud 1546 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 7 at @s run clone from minecraft:overworld 1537 ~ 1423 1555 ~ 1578 to switch:game 1537 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 8 at @s in switch:game run particle cloud 1564 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 8 at @s run clone from minecraft:overworld 1555 ~ 1423 1574 ~ 1578 to switch:game 1555 ~114 1423 replace force

execute if score #rg_traitor_original_mod switch.data matches 9 at @s in switch:game run particle cloud 1583 ~114.5 1500 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 9 at @s run clone from minecraft:overworld 1574 ~ 1423 1592 ~ 1578 to switch:game 1574 ~114 1423 replace force

scoreboard players add #rg_traitor_original_mod switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 in switch:game run kill @e[type=item,x=1500,y=0,z=1500,distance=..1000]
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players add #rg_traitor_original_y switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players set #rg_traitor_original_mod switch.data 0

kill @s

