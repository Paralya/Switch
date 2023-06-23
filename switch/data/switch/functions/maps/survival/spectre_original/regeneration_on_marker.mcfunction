
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spectre_original_y switch.data

execute if score #rg_spectre_original_mod switch.data matches 0 at @s run particle cloud 2469 ~100.5 2499 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 0 at @s run clone 2459 ~ 2452 2480 ~ 2547 2459 ~100 2452 replace force
execute if score #rg_spectre_original_mod switch.data matches 1 at @s run particle cloud 2491 ~100.5 2499 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 1 at @s run clone 2480 ~ 2452 2502 ~ 2547 2480 ~100 2452 replace force
execute if score #rg_spectre_original_mod switch.data matches 2 at @s run particle cloud 2513 ~100.5 2499 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 2 at @s run clone 2502 ~ 2452 2524 ~ 2547 2502 ~100 2452 replace force
execute if score #rg_spectre_original_mod switch.data matches 3 at @s run particle cloud 2534 ~100.5 2499 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 3 at @s run clone 2524 ~ 2452 2545 ~ 2547 2524 ~100 2452 replace force

execute if score #rg_spectre_original_mod switch.data matches 4 run kill @e[type=item,x=2502,y=0,z=2499,distance=..1000]
scoreboard players add #rg_spectre_original_mod switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players add #rg_spectre_original_y switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players set #rg_spectre_original_mod switch.data 0

kill @s

