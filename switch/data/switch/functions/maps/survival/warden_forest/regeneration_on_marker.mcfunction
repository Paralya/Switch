
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_forest_y switch.data

execute if score #rg_warden_forest_mod switch.data matches 0 at @s run particle cloud 9950 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 0 at @s run clone 9940 ~ 9940 9960 ~ 10060 9940 ~100 9940 replace force
execute if score #rg_warden_forest_mod switch.data matches 1 at @s run particle cloud 9970 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 1 at @s run clone 9960 ~ 9940 9980 ~ 10060 9960 ~100 9940 replace force
execute if score #rg_warden_forest_mod switch.data matches 2 at @s run particle cloud 9990 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 2 at @s run clone 9980 ~ 9940 10000 ~ 10060 9980 ~100 9940 replace force
execute if score #rg_warden_forest_mod switch.data matches 3 at @s run particle cloud 10010 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 3 at @s run clone 10000 ~ 9940 10020 ~ 10060 10000 ~100 9940 replace force
execute if score #rg_warden_forest_mod switch.data matches 4 at @s run particle cloud 10030 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 4 at @s run clone 10020 ~ 9940 10040 ~ 10060 10020 ~100 9940 replace force
execute if score #rg_warden_forest_mod switch.data matches 5 at @s run particle cloud 10050 ~100.5 10000 10 0 30 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 5 at @s run clone 10040 ~ 9940 10060 ~ 10060 10040 ~100 9940 replace force

execute if score #rg_warden_forest_mod switch.data matches 6 run kill @e[type=item,x=10000,y=0,z=10000,distance=..1000]
scoreboard players add #rg_warden_forest_mod switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 6 run scoreboard players add #rg_warden_forest_y switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 6 run scoreboard players set #rg_warden_forest_mod switch.data 0

kill @s

