
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mushroom_plains_y switch.data

execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s run particle cloud 3949 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 0 at @s run clone 3939 ~ 3939 3959 ~ 4061 3939 ~100 3939 replace force
execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s run particle cloud 3969 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 1 at @s run clone 3959 ~ 3939 3980 ~ 4061 3959 ~100 3939 replace force
execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s run particle cloud 3990 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 2 at @s run clone 3980 ~ 3939 4000 ~ 4061 3980 ~100 3939 replace force
execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s run particle cloud 4010 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 3 at @s run clone 4000 ~ 3939 4020 ~ 4061 4000 ~100 3939 replace force
execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s run particle cloud 4030 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 4 at @s run clone 4020 ~ 3939 4041 ~ 4061 4020 ~100 3939 replace force
execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s run particle cloud 4051 ~100.5 4000 10 0 30 0 250 force
execute if score #rg_mushroom_plains_mod switch.data matches 5 at @s run clone 4041 ~ 3939 4061 ~ 4061 4041 ~100 3939 replace force

execute if score #rg_mushroom_plains_mod switch.data matches 6 run kill @e[type=item,x=4000,y=0,z=4000,distance=..1000]
scoreboard players add #rg_mushroom_plains_mod switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players add #rg_mushroom_plains_y switch.data 1
execute if score #rg_mushroom_plains_mod switch.data matches 6 run scoreboard players set #rg_mushroom_plains_mod switch.data 0

kill @s

