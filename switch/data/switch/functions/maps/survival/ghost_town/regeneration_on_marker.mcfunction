
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ghost_town_y switch.data

execute if score #rg_ghost_town_mod switch.data matches 0 at @s run particle cloud 41946 ~100.5 42000 11 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 0 at @s run clone 41935 ~ 41942 41957 ~ 42058 41935 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 1 at @s run particle cloud 41967 ~100.5 42000 10 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 1 at @s run clone 41957 ~ 41942 41978 ~ 42058 41957 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 2 at @s run particle cloud 41989 ~100.5 42000 11 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 2 at @s run clone 41978 ~ 41942 42000 ~ 42058 41978 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 3 at @s run particle cloud 42011 ~100.5 42000 11 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 3 at @s run clone 42000 ~ 41942 42022 ~ 42058 42000 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 4 at @s run particle cloud 42032 ~100.5 42000 10 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 4 at @s run clone 42022 ~ 41942 42043 ~ 42058 42022 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 5 at @s run particle cloud 42054 ~100.5 42000 11 0 29 0 250 force
execute if score #rg_ghost_town_mod switch.data matches 5 at @s run clone 42043 ~ 41942 42065 ~ 42058 42043 ~100 41942 replace force
execute if score #rg_ghost_town_mod switch.data matches 6 run kill @e[type=item,x=42000,y=0,z=42000,distance=..1000]

scoreboard players add #rg_ghost_town_mod switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 6 run scoreboard players add #rg_ghost_town_y switch.data 1
execute if score #rg_ghost_town_mod switch.data matches 6 run scoreboard players set #rg_ghost_town_mod switch.data 0

kill @s

