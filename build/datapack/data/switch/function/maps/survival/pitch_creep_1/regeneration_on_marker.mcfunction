
#> switch:maps/survival/pitch_creep_1/regeneration_on_marker
#
# @within	switch:maps/survival/pitch_creep_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitch_creep_1_y switch.data

execute if score #rg_pitch_creep_1_mod switch.data matches 0 at @s in switch:game run particle cloud 3510 ~0.5 3520 10 0 10 0 250 force
execute if score #rg_pitch_creep_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 3500 ~ 3500 3520 ~ 3540 to switch:game 3500 ~0 3500 replace force

execute if score #rg_pitch_creep_1_mod switch.data matches 1 at @s in switch:game run particle cloud 3530 ~0.5 3520 10 0 10 0 250 force
execute if score #rg_pitch_creep_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 3520 ~ 3500 3540 ~ 3540 to switch:game 3520 ~0 3500 replace force

scoreboard players add #rg_pitch_creep_1_mod switch.data 1
execute if score #rg_pitch_creep_1_mod switch.data matches 2 in switch:game run kill @e[type=item,x=3520,y=100,z=3520,distance=..1000]
execute if score #rg_pitch_creep_1_mod switch.data matches 2 run scoreboard players add #rg_pitch_creep_1_y switch.data 1
execute if score #rg_pitch_creep_1_mod switch.data matches 2 run scoreboard players set #rg_pitch_creep_1_mod switch.data 0

kill @s

