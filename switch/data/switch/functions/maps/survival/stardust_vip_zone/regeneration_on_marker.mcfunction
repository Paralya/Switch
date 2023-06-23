
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_vip_zone_y switch.data

execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s run particle cloud 107011 ~100.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s run clone 107000 ~ 107000 107023 ~ 107085 107000 ~100 107000 replace force
execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s run particle cloud 107034 ~100.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s run clone 107023 ~ 107000 107045 ~ 107085 107023 ~100 107000 replace force
execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s run particle cloud 107056 ~100.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s run clone 107045 ~ 107000 107068 ~ 107085 107045 ~100 107000 replace force
execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s run particle cloud 107079 ~100.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s run clone 107068 ~ 107000 107090 ~ 107085 107068 ~100 107000 replace force
execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s run particle cloud 107101 ~100.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s run clone 107090 ~ 107000 107113 ~ 107085 107090 ~100 107000 replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run kill @e[type=item,x=107056,y=0,z=107042,distance=..1000]
scoreboard players add #rg_stardust_vip_zone_mod switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players add #rg_stardust_vip_zone_y switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players set #rg_stardust_vip_zone_mod switch.data 0

kill @s

