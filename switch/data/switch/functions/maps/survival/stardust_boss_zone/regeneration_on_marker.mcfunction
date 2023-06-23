
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_boss_zone_y switch.data

execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s run particle cloud 103008 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s run clone 103000 ~ 103000 103016 ~ 103165 103000 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s run particle cloud 103024 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s run clone 103016 ~ 103000 103033 ~ 103165 103016 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s run particle cloud 103041 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s run clone 103033 ~ 103000 103050 ~ 103165 103033 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s run particle cloud 103058 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s run clone 103050 ~ 103000 103066 ~ 103165 103050 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s run particle cloud 103074 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s run clone 103066 ~ 103000 103082 ~ 103165 103066 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s run particle cloud 103090 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s run clone 103082 ~ 103000 103099 ~ 103165 103082 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s run particle cloud 103107 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s run clone 103099 ~ 103000 103116 ~ 103165 103099 ~164 103000 replace force
execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s run particle cloud 103124 ~164.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s run clone 103116 ~ 103000 103132 ~ 103165 103116 ~164 103000 replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run kill @e[type=item,x=103066,y=-64,z=103082,distance=..1000]
scoreboard players add #rg_stardust_boss_zone_mod switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players add #rg_stardust_boss_zone_y switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players set #rg_stardust_boss_zone_mod switch.data 0

kill @s

