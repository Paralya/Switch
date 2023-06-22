
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_highland_mansion_y switch.data

execute if score #rg_highland_mansion_mod switch.data matches 0 at @s run particle cloud 85009 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 0 at @s run clone 85000 ~ 85000 85019 ~ 85142 85000 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 1 at @s run particle cloud 85028 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 1 at @s run clone 85019 ~ 85000 85038 ~ 85142 85019 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 2 at @s run particle cloud 85047 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 2 at @s run clone 85038 ~ 85000 85056 ~ 85142 85038 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 3 at @s run particle cloud 85065 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 3 at @s run clone 85056 ~ 85000 85075 ~ 85142 85056 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 4 at @s run particle cloud 85084 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 4 at @s run clone 85075 ~ 85000 85094 ~ 85142 85075 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 5 at @s run particle cloud 85103 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 5 at @s run clone 85094 ~ 85000 85112 ~ 85142 85094 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 6 at @s run particle cloud 85121 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 6 at @s run clone 85112 ~ 85000 85131 ~ 85142 85112 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 7 at @s run particle cloud 85140 ~100.5 85071 9 0 35 0 250 force
execute if score #rg_highland_mansion_mod switch.data matches 7 at @s run clone 85131 ~ 85000 85150 ~ 85142 85131 ~100 85000 replace force
execute if score #rg_highland_mansion_mod switch.data matches 8 run kill @e[type=item,x=85075,y=0,z=85071,distance=..1000]

scoreboard players add #rg_highland_mansion_mod switch.data 1
execute if score #rg_highland_mansion_mod switch.data matches 8 run scoreboard players add #rg_highland_mansion_y switch.data 1
execute if score #rg_highland_mansion_mod switch.data matches 8 run scoreboard players set #rg_highland_mansion_mod switch.data 0

kill @s

