
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_new_grounds_y switch.data

execute if score #rg_new_grounds_mod switch.data matches 0 at @s run particle cloud 47939 ~100.5 48000 9 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 0 at @s run clone 47930 ~ 47930 47948 ~ 48070 47930 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 1 at @s run particle cloud 47956 ~100.5 48000 8 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 1 at @s run clone 47948 ~ 47930 47965 ~ 48070 47948 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 2 at @s run particle cloud 47973 ~100.5 48000 8 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 2 at @s run clone 47965 ~ 47930 47982 ~ 48070 47965 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 3 at @s run particle cloud 47991 ~100.5 48000 9 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 3 at @s run clone 47982 ~ 47930 48000 ~ 48070 47982 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 4 at @s run particle cloud 48009 ~100.5 48000 9 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 4 at @s run clone 48000 ~ 47930 48018 ~ 48070 48000 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 5 at @s run particle cloud 48026 ~100.5 48000 8 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 5 at @s run clone 48018 ~ 47930 48035 ~ 48070 48018 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 6 at @s run particle cloud 48043 ~100.5 48000 8 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 6 at @s run clone 48035 ~ 47930 48052 ~ 48070 48035 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 7 at @s run particle cloud 48061 ~100.5 48000 9 0 35 0 250 force
execute if score #rg_new_grounds_mod switch.data matches 7 at @s run clone 48052 ~ 47930 48070 ~ 48070 48052 ~100 47930 replace force
execute if score #rg_new_grounds_mod switch.data matches 8 run kill @e[type=item,x=48000,y=0,z=48000,distance=..1000]

scoreboard players add #rg_new_grounds_mod switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 8 run scoreboard players add #rg_new_grounds_y switch.data 1
execute if score #rg_new_grounds_mod switch.data matches 8 run scoreboard players set #rg_new_grounds_mod switch.data 0

kill @s
