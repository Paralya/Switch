
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_scary_labyrinth_y switch.data

execute if score #rg_scary_labyrinth_mod switch.data matches 0 at @s run particle cloud 60018 ~100.5 60033 18 0 16 0 250 force
execute if score #rg_scary_labyrinth_mod switch.data matches 0 at @s run clone 60000 ~ 60000 60037 ~ 60066 60000 ~100 60000 replace force
execute if score #rg_scary_labyrinth_mod switch.data matches 1 at @s run particle cloud 60055 ~100.5 60033 18 0 16 0 250 force
execute if score #rg_scary_labyrinth_mod switch.data matches 1 at @s run clone 60037 ~ 60000 60074 ~ 60066 60037 ~100 60000 replace force
execute if score #rg_scary_labyrinth_mod switch.data matches 2 at @s run particle cloud 60092 ~100.5 60033 18 0 16 0 250 force
execute if score #rg_scary_labyrinth_mod switch.data matches 2 at @s run clone 60074 ~ 60000 60110 ~ 60066 60074 ~100 60000 replace force
execute if score #rg_scary_labyrinth_mod switch.data matches 3 at @s run particle cloud 60128 ~100.5 60033 18 0 16 0 250 force
execute if score #rg_scary_labyrinth_mod switch.data matches 3 at @s run clone 60110 ~ 60000 60147 ~ 60066 60110 ~100 60000 replace force
execute if score #rg_scary_labyrinth_mod switch.data matches 4 at @s run particle cloud 60165 ~100.5 60033 18 0 16 0 250 force
execute if score #rg_scary_labyrinth_mod switch.data matches 4 at @s run clone 60147 ~ 60000 60184 ~ 60066 60147 ~100 60000 replace force

execute if score #rg_scary_labyrinth_mod switch.data matches 5 run kill @e[type=item,x=60092,y=0,z=60033,distance=..1000]
scoreboard players add #rg_scary_labyrinth_mod switch.data 1
execute if score #rg_scary_labyrinth_mod switch.data matches 5 run scoreboard players add #rg_scary_labyrinth_y switch.data 1
execute if score #rg_scary_labyrinth_mod switch.data matches 5 run scoreboard players set #rg_scary_labyrinth_mod switch.data 0

kill @s

