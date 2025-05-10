
#> switch:maps/survival/boat_race_2/regeneration_on_marker
#
# @within	switch:maps/survival/boat_race_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_boat_race_2_y switch.data

execute if score #rg_boat_race_2_mod switch.data matches 0 at @s in switch:game run particle cloud 50973 ~20.5 51008 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 50963 ~ 50947 50983 ~ 51070 to switch:game 50963 ~20 50947 replace force

execute if score #rg_boat_race_2_mod switch.data matches 1 at @s in switch:game run particle cloud 50993 ~20.5 51008 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 50983 ~ 50947 51003 ~ 51070 to switch:game 50983 ~20 50947 replace force

execute if score #rg_boat_race_2_mod switch.data matches 2 at @s in switch:game run particle cloud 51012 ~20.5 51008 9 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 2 at @s run clone from minecraft:overworld 51003 ~ 50947 51022 ~ 51070 to switch:game 51003 ~20 50947 replace force

execute if score #rg_boat_race_2_mod switch.data matches 3 at @s in switch:game run particle cloud 51032 ~20.5 51008 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 3 at @s run clone from minecraft:overworld 51022 ~ 50947 51042 ~ 51070 to switch:game 51022 ~20 50947 replace force

execute if score #rg_boat_race_2_mod switch.data matches 4 at @s in switch:game run particle cloud 51052 ~20.5 51008 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 4 at @s run clone from minecraft:overworld 51042 ~ 50947 51062 ~ 51070 to switch:game 51042 ~20 50947 replace force

scoreboard players add #rg_boat_race_2_mod switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 in switch:game run kill @e[type=item,x=51012,y=80,z=51008,distance=..1000]
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players add #rg_boat_race_2_y switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players set #rg_boat_race_2_mod switch.data 0

kill @s

