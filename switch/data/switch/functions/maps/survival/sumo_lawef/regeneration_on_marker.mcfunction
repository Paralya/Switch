
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sumo_lawef_y switch.data

execute if score #rg_sumo_lawef_mod switch.data matches 0 at @s run particle cloud 54989 ~100.5 55016 10 0 10 0 250 force
execute if score #rg_sumo_lawef_mod switch.data matches 0 at @s run clone 54979 ~ 54996 55000 ~ 55037 54979 ~100 54996 replace force
execute if score #rg_sumo_lawef_mod switch.data matches 1 at @s run particle cloud 55010 ~100.5 55016 10 0 10 0 250 force
execute if score #rg_sumo_lawef_mod switch.data matches 1 at @s run clone 55000 ~ 54996 55020 ~ 55037 55000 ~100 54996 replace force

execute if score #rg_sumo_lawef_mod switch.data matches 2 run kill @e[type=item,x=54999,y=0,z=55016,distance=..1000]
scoreboard players add #rg_sumo_lawef_mod switch.data 1
execute if score #rg_sumo_lawef_mod switch.data matches 2 run scoreboard players add #rg_sumo_lawef_y switch.data 1
execute if score #rg_sumo_lawef_mod switch.data matches 2 run scoreboard players set #rg_sumo_lawef_mod switch.data 0

kill @s

