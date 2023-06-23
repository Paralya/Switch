
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sky_tower_y switch.data

execute if score #rg_sky_tower_mod switch.data matches 0 at @s run particle cloud 80009 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 0 at @s run clone 80000 ~ 80000 80018 ~ 80142 80000 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 1 at @s run particle cloud 80027 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 1 at @s run clone 80018 ~ 80000 80036 ~ 80142 80018 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 2 at @s run particle cloud 80044 ~214.5 80071 8 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 2 at @s run clone 80036 ~ 80000 80053 ~ 80142 80036 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 3 at @s run particle cloud 80062 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 3 at @s run clone 80053 ~ 80000 80071 ~ 80142 80053 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 4 at @s run particle cloud 80080 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 4 at @s run clone 80071 ~ 80000 80089 ~ 80142 80071 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 5 at @s run particle cloud 80097 ~214.5 80071 8 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 5 at @s run clone 80089 ~ 80000 80106 ~ 80142 80089 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 6 at @s run particle cloud 80115 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 6 at @s run clone 80106 ~ 80000 80124 ~ 80142 80106 ~214 80000 replace force
execute if score #rg_sky_tower_mod switch.data matches 7 at @s run particle cloud 80133 ~214.5 80071 9 0 35 0 250 force
execute if score #rg_sky_tower_mod switch.data matches 7 at @s run clone 80124 ~ 80000 80142 ~ 80142 80124 ~214 80000 replace force

execute if score #rg_sky_tower_mod switch.data matches 8 run kill @e[type=item,x=80071,y=-64,z=80071,distance=..1000]
scoreboard players add #rg_sky_tower_mod switch.data 1
execute if score #rg_sky_tower_mod switch.data matches 8 run scoreboard players add #rg_sky_tower_y switch.data 1
execute if score #rg_sky_tower_mod switch.data matches 8 run scoreboard players set #rg_sky_tower_mod switch.data 0

kill @s

