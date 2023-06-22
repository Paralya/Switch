
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_whity_lab_y switch.data

execute if score #rg_whity_lab_mod switch.data matches 0 at @s run particle cloud 91010 ~100.5 91051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 0 at @s run clone 91000 ~ 91000 91020 ~ 91102 91000 ~100 91000 replace force
execute if score #rg_whity_lab_mod switch.data matches 1 at @s run particle cloud 91030 ~100.5 91051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 1 at @s run clone 91020 ~ 91000 91041 ~ 91102 91020 ~100 91000 replace force
execute if score #rg_whity_lab_mod switch.data matches 2 at @s run particle cloud 91051 ~100.5 91051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 2 at @s run clone 91041 ~ 91000 91061 ~ 91102 91041 ~100 91000 replace force
execute if score #rg_whity_lab_mod switch.data matches 3 at @s run particle cloud 91071 ~100.5 91051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 3 at @s run clone 91061 ~ 91000 91082 ~ 91102 91061 ~100 91000 replace force
execute if score #rg_whity_lab_mod switch.data matches 4 at @s run particle cloud 91092 ~100.5 91051 10 0 25 0 250 force
execute if score #rg_whity_lab_mod switch.data matches 4 at @s run clone 91082 ~ 91000 91102 ~ 91102 91082 ~100 91000 replace force
execute if score #rg_whity_lab_mod switch.data matches 5 run kill @e[type=item,x=91051,y=0,z=91051,distance=..1000]

scoreboard players add #rg_whity_lab_mod switch.data 1
execute if score #rg_whity_lab_mod switch.data matches 5 run scoreboard players add #rg_whity_lab_y switch.data 1
execute if score #rg_whity_lab_mod switch.data matches 5 run scoreboard players set #rg_whity_lab_mod switch.data 0

kill @s

