
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_enchanting_island_y switch.data

execute if score #rg_enchanting_island_mod switch.data matches 0 at @s run particle cloud 6980 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 0 at @s run clone 6970 ~ 6970 6990 ~ 7030 6970 ~100 6970 replace force
execute if score #rg_enchanting_island_mod switch.data matches 1 at @s run particle cloud 7000 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 1 at @s run clone 6990 ~ 6970 7010 ~ 7030 6990 ~100 6970 replace force
execute if score #rg_enchanting_island_mod switch.data matches 2 at @s run particle cloud 7020 ~100.5 7000 10 0 15 0 250 force
execute if score #rg_enchanting_island_mod switch.data matches 2 at @s run clone 7010 ~ 6970 7030 ~ 7030 7010 ~100 6970 replace force

execute if score #rg_enchanting_island_mod switch.data matches 3 run kill @e[type=item,x=7000,y=0,z=7000,distance=..1000]
scoreboard players add #rg_enchanting_island_mod switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players add #rg_enchanting_island_y switch.data 1
execute if score #rg_enchanting_island_mod switch.data matches 3 run scoreboard players set #rg_enchanting_island_mod switch.data 0

kill @s

