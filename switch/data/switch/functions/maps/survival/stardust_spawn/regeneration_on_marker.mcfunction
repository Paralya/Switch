
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_spawn_y switch.data

execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s run particle cloud 101010 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s run clone 101000 ~ 101000 101020 ~ 101120 101000 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s run particle cloud 101030 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s run clone 101020 ~ 101000 101040 ~ 101120 101020 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s run particle cloud 101050 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s run clone 101040 ~ 101000 101060 ~ 101120 101040 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s run particle cloud 101070 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s run clone 101060 ~ 101000 101080 ~ 101120 101060 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s run particle cloud 101090 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s run clone 101080 ~ 101000 101100 ~ 101120 101080 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s run particle cloud 101110 ~100.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s run clone 101100 ~ 101000 101120 ~ 101120 101100 ~100 101000 replace force
execute if score #rg_stardust_spawn_mod switch.data matches 6 run kill @e[type=item,x=101060,y=0,z=101060,distance=..1000]

scoreboard players add #rg_stardust_spawn_mod switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players add #rg_stardust_spawn_y switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players set #rg_stardust_spawn_mod switch.data 0

kill @s

