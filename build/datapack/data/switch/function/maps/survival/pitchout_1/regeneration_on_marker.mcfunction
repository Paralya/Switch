
#> switch:maps/survival/pitchout_1/regeneration_on_marker
#
# @within	switch:maps/survival/pitchout_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_1_y switch.data

execute if score #rg_pitchout_1_mod switch.data matches 0 at @s in switch:game run particle cloud 960 ~95.5 1000 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 950 ~ 950 970 ~ 1050 to switch:game 950 ~95 950 replace force

execute if score #rg_pitchout_1_mod switch.data matches 1 at @s in switch:game run particle cloud 980 ~95.5 1000 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 970 ~ 950 990 ~ 1050 to switch:game 970 ~95 950 replace force

execute if score #rg_pitchout_1_mod switch.data matches 2 at @s in switch:game run particle cloud 1000 ~95.5 1000 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 990 ~ 950 1010 ~ 1050 to switch:game 990 ~95 950 replace force

execute if score #rg_pitchout_1_mod switch.data matches 3 at @s in switch:game run particle cloud 1020 ~95.5 1000 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 1010 ~ 950 1030 ~ 1050 to switch:game 1010 ~95 950 replace force

execute if score #rg_pitchout_1_mod switch.data matches 4 at @s in switch:game run particle cloud 1040 ~95.5 1000 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 4 at @s run clone from minecraft:overworld 1030 ~ 950 1050 ~ 1050 to switch:game 1030 ~95 950 replace force

scoreboard players add #rg_pitchout_1_mod switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 in switch:game run kill @e[type=item,x=1000,y=0,z=1000,distance=..1000]
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players add #rg_pitchout_1_y switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players set #rg_pitchout_1_mod switch.data 0

kill @s

