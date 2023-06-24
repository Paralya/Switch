
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_tnt_run_futuristic_y switch.data

execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s run particle cloud 109015 ~100.5 109023 15 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 0 at @s run clone 109000 ~ 109000 109030 ~ 109046 109000 ~100 109000 replace force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s run particle cloud 109044 ~100.5 109023 14 0 11 0 250 force
execute if score #rg_tnt_run_futuristic_mod switch.data matches 1 at @s run clone 109030 ~ 109000 109059 ~ 109046 109030 ~100 109000 replace force

execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run kill @e[type=item,x=109029,y=0,z=109023,distance=..1000]
scoreboard players add #rg_tnt_run_futuristic_mod switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players add #rg_tnt_run_futuristic_y switch.data 1
execute if score #rg_tnt_run_futuristic_mod switch.data matches 2 run scoreboard players set #rg_tnt_run_futuristic_mod switch.data 0

kill @s

