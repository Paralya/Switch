
#> switch:maps/survival/pitch_creep_nether/regeneration_on_marker
#
# @within	switch:maps/survival/pitch_creep_nether/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitch_creep_nether_y switch.data

execute if score #rg_pitch_creep_nether_mod switch.data matches 0 at @s in switch:game run particle cloud 120009 ~100.5 120010 9 0 5 0 250 force
execute if score #rg_pitch_creep_nether_mod switch.data matches 0 at @s run clone from minecraft:overworld 120000 ~ 120000 120018 ~ 120020 to switch:game 120000 ~100 120000 replace force

execute if score #rg_pitch_creep_nether_mod switch.data matches 1 at @s in switch:game run particle cloud 120027 ~100.5 120010 9 0 5 0 250 force
execute if score #rg_pitch_creep_nether_mod switch.data matches 1 at @s run clone from minecraft:overworld 120018 ~ 120000 120037 ~ 120020 to switch:game 120018 ~100 120000 replace force

scoreboard players add #rg_pitch_creep_nether_mod switch.data 1
execute if score #rg_pitch_creep_nether_mod switch.data matches 2 in switch:game run kill @e[type=item,x=120018,y=0,z=120010,distance=..1000]
execute if score #rg_pitch_creep_nether_mod switch.data matches 2 run scoreboard players add #rg_pitch_creep_nether_y switch.data 1
execute if score #rg_pitch_creep_nether_mod switch.data matches 2 run scoreboard players set #rg_pitch_creep_nether_mod switch.data 0

kill @s

