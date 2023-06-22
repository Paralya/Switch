
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zone_51_y switch.data

execute if score #rg_zone_51_mod switch.data matches 0 at @s run particle cloud 1956 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 0 at @s run clone 1947 ~ 1937 1965 ~ 2063 1947 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 1 at @s run particle cloud 1974 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 1 at @s run clone 1965 ~ 1937 1983 ~ 2063 1965 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 2 at @s run particle cloud 1992 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 2 at @s run clone 1983 ~ 1937 2001 ~ 2063 1983 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 3 at @s run particle cloud 2010 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 3 at @s run clone 2001 ~ 1937 2019 ~ 2063 2001 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 4 at @s run particle cloud 2028 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 4 at @s run clone 2019 ~ 1937 2037 ~ 2063 2019 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 5 at @s run particle cloud 2046 ~100.5 2000 9 0 31 0 250 force
execute if score #rg_zone_51_mod switch.data matches 5 at @s run clone 2037 ~ 1937 2055 ~ 2063 2037 ~100 1937 replace force
execute if score #rg_zone_51_mod switch.data matches 6 run kill @e[type=item,x=2001,y=0,z=2000,distance=..1000]

scoreboard players add #rg_zone_51_mod switch.data 1
execute if score #rg_zone_51_mod switch.data matches 6 run scoreboard players add #rg_zone_51_y switch.data 1
execute if score #rg_zone_51_mod switch.data matches 6 run scoreboard players set #rg_zone_51_mod switch.data 0

kill @s

