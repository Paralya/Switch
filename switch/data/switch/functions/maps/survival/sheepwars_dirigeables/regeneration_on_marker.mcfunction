
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_dirigeables_y switch.data

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run particle cloud 100038 ~163.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run clone 100028 ~ 100000 100049 ~ 100103 100028 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run particle cloud 100060 ~163.5 100051 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run clone 100049 ~ 100000 100071 ~ 100103 100049 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run particle cloud 100081 ~163.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run clone 100071 ~ 100000 100092 ~ 100103 100071 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run particle cloud 100103 ~163.5 100051 11 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run clone 100092 ~ 100000 100114 ~ 100103 100092 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run particle cloud 100124 ~163.5 100051 10 0 25 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run clone 100114 ~ 100000 100135 ~ 100103 100114 ~163 100000 replace force

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run kill @e[type=item,x=100081,y=-63,z=100051,distance=..1000]
scoreboard players add #rg_sheepwars_dirigeables_mod switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_dirigeables_y switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0

kill @s

