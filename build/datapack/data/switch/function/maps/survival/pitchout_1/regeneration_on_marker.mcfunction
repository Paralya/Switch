
#> switch:maps/survival/pitchout_1/regeneration_on_marker
#
# @within	switch:maps/survival/pitchout_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_1_y switch.data

execute if score #rg_pitchout_1_mod switch.data matches 0 at @s in switch:game run particle cloud 2010 ~0.5 50 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ 0 2020 ~ 100 to switch:game 2000 ~0 0 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 1 at @s in switch:game run particle cloud 2030 ~0.5 50 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 2020 ~ 0 2040 ~ 100 to switch:game 2020 ~0 0 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 2 at @s in switch:game run particle cloud 2050 ~0.5 50 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 2040 ~ 0 2060 ~ 100 to switch:game 2040 ~0 0 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 3 at @s in switch:game run particle cloud 2070 ~0.5 50 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 2060 ~ 0 2080 ~ 100 to switch:game 2060 ~0 0 strict replace force

execute if score #rg_pitchout_1_mod switch.data matches 4 at @s in switch:game run particle cloud 2090 ~0.5 50 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 4 at @s run clone from minecraft:overworld 2080 ~ 0 2100 ~ 100 to switch:game 2080 ~0 0 strict replace force

scoreboard players add #rg_pitchout_1_mod switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 in switch:game run kill @e[type=item,x=2050,y=100,z=50,distance=..1000]
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players add #rg_pitchout_1_y switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players set #rg_pitchout_1_mod switch.data 0

kill @s

