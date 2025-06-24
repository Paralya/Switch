
#> switch:maps/survival/boat_race_2/regeneration_on_marker
#
# @within	switch:maps/survival/boat_race_2/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_boat_race_2_y switch.data

execute if score #rg_boat_race_2_mod switch.data matches 0 at @s in switch:game run particle cloud 51010 ~0.5 51061 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 0 at @s run clone from minecraft:overworld 51000 ~ 51000 51020 ~ 51123 to switch:game 51000 ~0 51000 replace force

execute if score #rg_boat_race_2_mod switch.data matches 1 at @s in switch:game run particle cloud 51030 ~0.5 51061 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 1 at @s run clone from minecraft:overworld 51020 ~ 51000 51040 ~ 51123 to switch:game 51020 ~0 51000 replace force

execute if score #rg_boat_race_2_mod switch.data matches 2 at @s in switch:game run particle cloud 51049 ~0.5 51061 9 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 2 at @s run clone from minecraft:overworld 51040 ~ 51000 51059 ~ 51123 to switch:game 51040 ~0 51000 replace force

execute if score #rg_boat_race_2_mod switch.data matches 3 at @s in switch:game run particle cloud 51069 ~0.5 51061 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 3 at @s run clone from minecraft:overworld 51059 ~ 51000 51079 ~ 51123 to switch:game 51059 ~0 51000 replace force

execute if score #rg_boat_race_2_mod switch.data matches 4 at @s in switch:game run particle cloud 51089 ~0.5 51061 10 0 30 0 250 force
execute if score #rg_boat_race_2_mod switch.data matches 4 at @s run clone from minecraft:overworld 51079 ~ 51000 51099 ~ 51123 to switch:game 51079 ~0 51000 replace force

scoreboard players add #rg_boat_race_2_mod switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 in switch:game run kill @e[type=item,x=51049,y=100,z=51061,distance=..1000]
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players add #rg_boat_race_2_y switch.data 1
execute if score #rg_boat_race_2_mod switch.data matches 5 run scoreboard players set #rg_boat_race_2_mod switch.data 0

kill @s

