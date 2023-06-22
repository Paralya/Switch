
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snk_lab_s11_y switch.data

execute if score #rg_snk_lab_s11_mod switch.data matches 0 at @s run particle cloud 67011 ~100.5 67036 11 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 0 at @s run clone 67000 ~ 67000 67022 ~ 67073 67000 ~100 67000 replace force
execute if score #rg_snk_lab_s11_mod switch.data matches 1 at @s run particle cloud 67032 ~100.5 67036 10 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 1 at @s run clone 67022 ~ 67000 67043 ~ 67073 67022 ~100 67000 replace force
execute if score #rg_snk_lab_s11_mod switch.data matches 2 at @s run particle cloud 67054 ~100.5 67036 11 0 18 0 250 force
execute if score #rg_snk_lab_s11_mod switch.data matches 2 at @s run clone 67043 ~ 67000 67065 ~ 67073 67043 ~100 67000 replace force
execute if score #rg_snk_lab_s11_mod switch.data matches 3 run kill @e[type=item,x=67032,y=0,z=67036,distance=..1000]

scoreboard players add #rg_snk_lab_s11_mod switch.data 1
execute if score #rg_snk_lab_s11_mod switch.data matches 3 run scoreboard players add #rg_snk_lab_s11_y switch.data 1
execute if score #rg_snk_lab_s11_mod switch.data matches 3 run scoreboard players set #rg_snk_lab_s11_mod switch.data 0

kill @s

