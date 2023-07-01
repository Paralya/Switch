
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_dirigeables_y switch.data

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run particle cloud 100012 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run clone 100000 ~ 100000 100024 ~ 100103 100000 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run particle cloud 100036 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run clone 100024 ~ 100000 100048 ~ 100103 100024 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run particle cloud 100060 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run clone 100048 ~ 100000 100072 ~ 100103 100048 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run particle cloud 100084 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run clone 100072 ~ 100000 100096 ~ 100103 100072 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run particle cloud 100108 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run clone 100096 ~ 100000 100120 ~ 100103 100096 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 at @s run particle cloud 100132 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 at @s run clone 100120 ~ 100000 100144 ~ 100103 100120 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 6 at @s run particle cloud 100156 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 6 at @s run clone 100144 ~ 100000 100168 ~ 100103 100144 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 7 at @s run particle cloud 100180 ~163.5 100051 12 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 7 at @s run clone 100168 ~ 100000 100192 ~ 100103 100168 ~163 100000 replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 8 run kill @e[type=item,x=100096,y=-63,z=100051,distance=..1000]
scoreboard players add #rg_sheepwars_dirigeables_mod switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 8 run scoreboard players add #rg_sheepwars_dirigeables_y switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 8 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0

kill @s

