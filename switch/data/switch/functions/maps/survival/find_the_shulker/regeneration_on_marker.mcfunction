
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_find_the_shulker_y switch.data

execute if score #rg_find_the_shulker_mod switch.data matches 0 at @s run particle cloud 57009 ~100.5 57056 9 0 28 0 250 force
execute if score #rg_find_the_shulker_mod switch.data matches 0 at @s run clone 57000 ~ 57000 57018 ~ 57113 57000 ~100 57000 replace force
execute if score #rg_find_the_shulker_mod switch.data matches 1 at @s run particle cloud 57027 ~100.5 57056 9 0 28 0 250 force
execute if score #rg_find_the_shulker_mod switch.data matches 1 at @s run clone 57018 ~ 57000 57037 ~ 57113 57018 ~100 57000 replace force
execute if score #rg_find_the_shulker_mod switch.data matches 2 at @s run particle cloud 57046 ~100.5 57056 9 0 28 0 250 force
execute if score #rg_find_the_shulker_mod switch.data matches 2 at @s run clone 57037 ~ 57000 57056 ~ 57113 57037 ~100 57000 replace force
execute if score #rg_find_the_shulker_mod switch.data matches 3 at @s run particle cloud 57065 ~100.5 57056 9 0 28 0 250 force
execute if score #rg_find_the_shulker_mod switch.data matches 3 at @s run clone 57056 ~ 57000 57074 ~ 57113 57056 ~100 57000 replace force
execute if score #rg_find_the_shulker_mod switch.data matches 4 run kill @e[type=item,x=57037,y=0,z=57056,distance=..1000]

scoreboard players add #rg_find_the_shulker_mod switch.data 1
execute if score #rg_find_the_shulker_mod switch.data matches 4 run scoreboard players add #rg_find_the_shulker_y switch.data 1
execute if score #rg_find_the_shulker_mod switch.data matches 4 run scoreboard players set #rg_find_the_shulker_mod switch.data 0

kill @s

