
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spleef_1_y switch.data

execute if score #rg_spleef_1_mod switch.data matches 0 at @s run particle cloud 27979 ~24.5 28000 10 0 15 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 0 at @s run clone 27969 ~ 27969 27990 ~ 28031 27969 ~24 27969 replace force
execute if score #rg_spleef_1_mod switch.data matches 1 at @s run particle cloud 28000 ~24.5 28000 10 0 15 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 1 at @s run clone 27990 ~ 27969 28010 ~ 28031 27990 ~24 27969 replace force
execute if score #rg_spleef_1_mod switch.data matches 2 at @s run particle cloud 28020 ~24.5 28000 10 0 15 0 250 force
execute if score #rg_spleef_1_mod switch.data matches 2 at @s run clone 28010 ~ 27969 28031 ~ 28031 28010 ~24 27969 replace force

execute if score #rg_spleef_1_mod switch.data matches 3 run kill @e[type=item,x=28000,y=63,z=28000,distance=..1000]
scoreboard players add #rg_spleef_1_mod switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 3 run scoreboard players add #rg_spleef_1_y switch.data 1
execute if score #rg_spleef_1_mod switch.data matches 3 run scoreboard players set #rg_spleef_1_mod switch.data 0

kill @s

