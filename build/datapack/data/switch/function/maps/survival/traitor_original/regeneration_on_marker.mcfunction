
#> switch:maps/survival/traitor_original/regeneration_on_marker
#
# @within	switch:maps/survival/traitor_original/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_traitor_original_y switch.data

execute if score #rg_traitor_original_mod switch.data matches 0 at @s in switch:game run particle cloud 1509 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 0 at @s run clone from minecraft:overworld 1500 ~ 1500 1518 ~ 1655 to switch:game 1500 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 1 at @s in switch:game run particle cloud 1527 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 1 at @s run clone from minecraft:overworld 1518 ~ 1500 1537 ~ 1655 to switch:game 1518 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 2 at @s in switch:game run particle cloud 1546 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 2 at @s run clone from minecraft:overworld 1537 ~ 1500 1555 ~ 1655 to switch:game 1537 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 3 at @s in switch:game run particle cloud 1564 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 3 at @s run clone from minecraft:overworld 1555 ~ 1500 1574 ~ 1655 to switch:game 1555 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 4 at @s in switch:game run particle cloud 1583 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 4 at @s run clone from minecraft:overworld 1574 ~ 1500 1592 ~ 1655 to switch:game 1574 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 5 at @s in switch:game run particle cloud 1601 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 5 at @s run clone from minecraft:overworld 1592 ~ 1500 1610 ~ 1655 to switch:game 1592 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 6 at @s in switch:game run particle cloud 1619 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 6 at @s run clone from minecraft:overworld 1610 ~ 1500 1629 ~ 1655 to switch:game 1610 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 7 at @s in switch:game run particle cloud 1638 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 7 at @s run clone from minecraft:overworld 1629 ~ 1500 1647 ~ 1655 to switch:game 1629 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 8 at @s in switch:game run particle cloud 1656 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 8 at @s run clone from minecraft:overworld 1647 ~ 1500 1666 ~ 1655 to switch:game 1647 ~0 1500 replace force

execute if score #rg_traitor_original_mod switch.data matches 9 at @s in switch:game run particle cloud 1675 ~0.5 1577 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 9 at @s run clone from minecraft:overworld 1666 ~ 1500 1684 ~ 1655 to switch:game 1666 ~0 1500 replace force

scoreboard players add #rg_traitor_original_mod switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 in switch:game run kill @e[type=item,x=1592,y=100,z=1577,distance=..1000]
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players add #rg_traitor_original_y switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players set #rg_traitor_original_mod switch.data 0

kill @s

