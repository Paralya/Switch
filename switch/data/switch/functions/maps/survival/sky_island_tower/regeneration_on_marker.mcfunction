
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sky_island_tower_y switch.data

execute if score #rg_sky_island_tower_mod switch.data matches 0 at @s run particle cloud 77012 ~164.5 77047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 0 at @s run clone 77000 ~ 77000 77024 ~ 77094 77000 ~164 77000 replace force
execute if score #rg_sky_island_tower_mod switch.data matches 1 at @s run particle cloud 77036 ~164.5 77047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 1 at @s run clone 77024 ~ 77000 77048 ~ 77094 77024 ~164 77000 replace force
execute if score #rg_sky_island_tower_mod switch.data matches 2 at @s run particle cloud 77060 ~164.5 77047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 2 at @s run clone 77048 ~ 77000 77073 ~ 77094 77048 ~164 77000 replace force
execute if score #rg_sky_island_tower_mod switch.data matches 3 at @s run particle cloud 77085 ~164.5 77047 12 0 23 0 250 force
execute if score #rg_sky_island_tower_mod switch.data matches 3 at @s run clone 77073 ~ 77000 77097 ~ 77094 77073 ~164 77000 replace force

execute if score #rg_sky_island_tower_mod switch.data matches 4 run kill @e[type=item,x=77048,y=-64,z=77047,distance=..1000]
scoreboard players add #rg_sky_island_tower_mod switch.data 1
execute if score #rg_sky_island_tower_mod switch.data matches 4 run scoreboard players add #rg_sky_island_tower_y switch.data 1
execute if score #rg_sky_island_tower_mod switch.data matches 4 run scoreboard players set #rg_sky_island_tower_mod switch.data 0

kill @s

