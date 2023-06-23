
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_colliseum_y switch.data

execute if score #rg_colliseum_mod switch.data matches 0 at @s run particle cloud 59010 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 0 at @s run clone 59000 ~ 59000 59020 ~ 59124 59000 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 1 at @s run particle cloud 59030 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 1 at @s run clone 59020 ~ 59000 59040 ~ 59124 59020 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 2 at @s run particle cloud 59050 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 2 at @s run clone 59040 ~ 59000 59060 ~ 59124 59040 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 3 at @s run particle cloud 59070 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 3 at @s run clone 59060 ~ 59000 59080 ~ 59124 59060 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 4 at @s run particle cloud 59090 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 4 at @s run clone 59080 ~ 59000 59100 ~ 59124 59080 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 5 at @s run particle cloud 59110 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 5 at @s run clone 59100 ~ 59000 59120 ~ 59124 59100 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 6 at @s run particle cloud 59130 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 6 at @s run clone 59120 ~ 59000 59140 ~ 59124 59120 ~100 59000 replace force
execute if score #rg_colliseum_mod switch.data matches 7 at @s run particle cloud 59150 ~100.5 59062 10 0 31 0 250 force
execute if score #rg_colliseum_mod switch.data matches 7 at @s run clone 59140 ~ 59000 59160 ~ 59124 59140 ~100 59000 replace force

execute if score #rg_colliseum_mod switch.data matches 8 run kill @e[type=item,x=59080,y=0,z=59062,distance=..1000]
scoreboard players add #rg_colliseum_mod switch.data 1
execute if score #rg_colliseum_mod switch.data matches 8 run scoreboard players add #rg_colliseum_y switch.data 1
execute if score #rg_colliseum_mod switch.data matches 8 run scoreboard players set #rg_colliseum_mod switch.data 0

kill @s

