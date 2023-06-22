
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_1_y switch.data

execute if score #rg_pitchout_1_mod switch.data matches 0 at @s run particle cloud 960 ~95.5 1100 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 0 at @s run clone 950 ~ 1050 970 ~ 1150 950 ~95 1050 replace force
execute if score #rg_pitchout_1_mod switch.data matches 1 at @s run particle cloud 980 ~95.5 1100 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 1 at @s run clone 970 ~ 1050 990 ~ 1150 970 ~95 1050 replace force
execute if score #rg_pitchout_1_mod switch.data matches 2 at @s run particle cloud 1000 ~95.5 1100 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 2 at @s run clone 990 ~ 1050 1010 ~ 1150 990 ~95 1050 replace force
execute if score #rg_pitchout_1_mod switch.data matches 3 at @s run particle cloud 1020 ~95.5 1100 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 3 at @s run clone 1010 ~ 1050 1030 ~ 1150 1010 ~95 1050 replace force
execute if score #rg_pitchout_1_mod switch.data matches 4 at @s run particle cloud 1040 ~95.5 1100 10 0 25 0 250 force
execute if score #rg_pitchout_1_mod switch.data matches 4 at @s run clone 1030 ~ 1050 1050 ~ 1150 1030 ~95 1050 replace force
execute if score #rg_pitchout_1_mod switch.data matches 5 run kill @e[type=item,x=1000,y=0,z=1100,distance=..1000]

scoreboard players add #rg_pitchout_1_mod switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players add #rg_pitchout_1_y switch.data 1
execute if score #rg_pitchout_1_mod switch.data matches 5 run scoreboard players set #rg_pitchout_1_mod switch.data 0

kill @s

