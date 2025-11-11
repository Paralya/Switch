
#> switch:maps/survival/pitchout_1/regeneration_on_marker
#
# @within	switch:maps/survival/pitchout_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_1_y switch.data

execute if score #rg_pitchout_1_mod switch.data matches 0 at @s in switch:game run particle cloud 1010 ~0.5 1050 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 1000 ~ 1000 1020 ~ 1100 to switch:game 1000 ~0 1000 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 1 at @s in switch:game run particle cloud 1030 ~0.5 1050 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 1020 ~ 1000 1040 ~ 1100 to switch:game 1020 ~0 1000 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 2 at @s in switch:game run particle cloud 1050 ~0.5 1050 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 1040 ~ 1000 1060 ~ 1100 to switch:game 1040 ~0 1000 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 3 at @s in switch:game run particle cloud 1070 ~0.5 1050 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 1060 ~ 1000 1080 ~ 1100 to switch:game 1060 ~0 1000 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 4 at @s in switch:game run particle cloud 1090 ~0.5 1050 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 4 at @s run clone from minecraft:overworld 1080 ~ 1000 1100 ~ 1100 to switch:game 1080 ~0 1000 strict replace force

scoreboard players add #rg_pitchout_1_mod switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 in switch:game run kill @e[type=item,x=1050,y=100,z=1050,distance=..1000]
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players add #rg_pitchout_1_y switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players set #rg_pitchout_1_mod switch.data 0

kill @s

