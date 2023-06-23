
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snk_tower_y switch.data

execute if score #rg_snk_tower_mod switch.data matches 0 at @s run particle cloud 61014 ~100.5 61024 14 0 12 0 250 force
execute if score #rg_snk_tower_mod switch.data matches 0 at @s run clone 61000 ~ 61000 61028 ~ 61049 61000 ~100 61000 replace force
execute if score #rg_snk_tower_mod switch.data matches 1 at @s run particle cloud 61042 ~100.5 61024 14 0 12 0 250 force
execute if score #rg_snk_tower_mod switch.data matches 1 at @s run clone 61028 ~ 61000 61056 ~ 61049 61028 ~100 61000 replace force
execute if score #rg_snk_tower_mod switch.data matches 2 at @s run particle cloud 61070 ~100.5 61024 14 0 12 0 250 force
execute if score #rg_snk_tower_mod switch.data matches 2 at @s run clone 61056 ~ 61000 61084 ~ 61049 61056 ~100 61000 replace force

execute if score #rg_snk_tower_mod switch.data matches 3 run kill @e[type=item,x=61042,y=0,z=61024,distance=..1000]
scoreboard players add #rg_snk_tower_mod switch.data 1
execute if score #rg_snk_tower_mod switch.data matches 3 run scoreboard players add #rg_snk_tower_y switch.data 1
execute if score #rg_snk_tower_mod switch.data matches 3 run scoreboard players set #rg_snk_tower_mod switch.data 0

kill @s

