
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitch_creep_2_y switch.data

execute if score #rg_pitch_creep_2_mod switch.data matches 0 at @s run particle cloud 37993 ~100.5 38000 7 0 13 0 250 force
execute if score #rg_pitch_creep_2_mod switch.data matches 0 at @s run clone 37986 ~ 37974 38000 ~ 38026 37986 ~100 37974 replace force
execute if score #rg_pitch_creep_2_mod switch.data matches 1 at @s run particle cloud 38007 ~100.5 38000 7 0 13 0 250 force
execute if score #rg_pitch_creep_2_mod switch.data matches 1 at @s run clone 38000 ~ 37974 38014 ~ 38026 38000 ~100 37974 replace force

execute if score #rg_pitch_creep_2_mod switch.data matches 2 run kill @e[type=item,x=38000,y=0,z=38000,distance=..1000]
scoreboard players add #rg_pitch_creep_2_mod switch.data 1
execute if score #rg_pitch_creep_2_mod switch.data matches 2 run scoreboard players add #rg_pitch_creep_2_y switch.data 1
execute if score #rg_pitch_creep_2_mod switch.data matches 2 run scoreboard players set #rg_pitch_creep_2_mod switch.data 0

kill @s

