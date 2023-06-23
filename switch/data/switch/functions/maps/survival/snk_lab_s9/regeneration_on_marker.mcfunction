
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snk_lab_s9_y switch.data

execute if score #rg_snk_lab_s9_mod switch.data matches 0 at @s run particle cloud 75011 ~100.5 75038 11 0 19 0 250 force
execute if score #rg_snk_lab_s9_mod switch.data matches 0 at @s run clone 75000 ~ 75000 75022 ~ 75076 75000 ~100 75000 replace force
execute if score #rg_snk_lab_s9_mod switch.data matches 1 at @s run particle cloud 75033 ~100.5 75038 11 0 19 0 250 force
execute if score #rg_snk_lab_s9_mod switch.data matches 1 at @s run clone 75022 ~ 75000 75044 ~ 75076 75022 ~100 75000 replace force
execute if score #rg_snk_lab_s9_mod switch.data matches 2 at @s run particle cloud 75055 ~100.5 75038 11 0 19 0 250 force
execute if score #rg_snk_lab_s9_mod switch.data matches 2 at @s run clone 75044 ~ 75000 75067 ~ 75076 75044 ~100 75000 replace force
execute if score #rg_snk_lab_s9_mod switch.data matches 3 at @s run particle cloud 75078 ~100.5 75038 11 0 19 0 250 force
execute if score #rg_snk_lab_s9_mod switch.data matches 3 at @s run clone 75067 ~ 75000 75089 ~ 75076 75067 ~100 75000 replace force

execute if score #rg_snk_lab_s9_mod switch.data matches 4 run kill @e[type=item,x=75044,y=0,z=75038,distance=..1000]
scoreboard players add #rg_snk_lab_s9_mod switch.data 1
execute if score #rg_snk_lab_s9_mod switch.data matches 4 run scoreboard players add #rg_snk_lab_s9_y switch.data 1
execute if score #rg_snk_lab_s9_mod switch.data matches 4 run scoreboard players set #rg_snk_lab_s9_mod switch.data 0

kill @s

