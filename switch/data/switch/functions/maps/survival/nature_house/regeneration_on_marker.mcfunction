
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nature_house_y switch.data

execute if score #rg_nature_house_mod switch.data matches 0 at @s run particle cloud 88011 ~100.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 0 at @s run clone 88000 ~ 88000 88023 ~ 88068 88000 ~100 88000 replace force
execute if score #rg_nature_house_mod switch.data matches 1 at @s run particle cloud 88034 ~100.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 1 at @s run clone 88023 ~ 88000 88045 ~ 88068 88023 ~100 88000 replace force
execute if score #rg_nature_house_mod switch.data matches 2 at @s run particle cloud 88056 ~100.5 88034 11 0 17 0 250 force
execute if score #rg_nature_house_mod switch.data matches 2 at @s run clone 88045 ~ 88000 88068 ~ 88068 88045 ~100 88000 replace force
execute if score #rg_nature_house_mod switch.data matches 3 run kill @e[type=item,x=88034,y=0,z=88034,distance=..1000]

scoreboard players add #rg_nature_house_mod switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players add #rg_nature_house_y switch.data 1
execute if score #rg_nature_house_mod switch.data matches 3 run scoreboard players set #rg_nature_house_mod switch.data 0

kill @s

