
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_dirigeables_y switch.data

execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run particle cloud 100008 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 0 at @s run clone 100000 ~ 100000 100017 ~ 100158 100000 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run particle cloud 100026 ~163.5 100079 9 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 1 at @s run clone 100017 ~ 100000 100035 ~ 100158 100017 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run particle cloud 100043 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 2 at @s run clone 100035 ~ 100000 100052 ~ 100158 100035 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run particle cloud 100061 ~163.5 100079 9 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 3 at @s run clone 100052 ~ 100000 100070 ~ 100158 100052 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run particle cloud 100078 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 4 at @s run clone 100070 ~ 100000 100087 ~ 100158 100070 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 at @s run particle cloud 100096 ~163.5 100079 9 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 5 at @s run clone 100087 ~ 100000 100105 ~ 100158 100087 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 6 at @s run particle cloud 100113 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 6 at @s run clone 100105 ~ 100000 100122 ~ 100158 100105 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 7 at @s run particle cloud 100131 ~163.5 100079 9 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 7 at @s run clone 100122 ~ 100000 100140 ~ 100158 100122 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 8 at @s run particle cloud 100148 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 8 at @s run clone 100140 ~ 100000 100157 ~ 100158 100140 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 9 at @s run particle cloud 100166 ~163.5 100079 9 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 9 at @s run clone 100157 ~ 100000 100175 ~ 100158 100157 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 10 at @s run particle cloud 100183 ~163.5 100079 8 0 39 0 250 force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 10 at @s run clone 100175 ~ 100000 100192 ~ 100158 100175 ~163 100000 replace force
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 11 run kill @e[type=item,x=100096,y=-63,z=100079,distance=..1000]

scoreboard players add #rg_sheepwars_dirigeables_mod switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 11 run scoreboard players add #rg_sheepwars_dirigeables_y switch.data 1
execute if score #rg_sheepwars_dirigeables_mod switch.data matches 11 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0

kill @s

