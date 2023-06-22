
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_uhc_lobbies_y switch.data

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s run particle cloud 98011 ~100.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s run clone 98000 ~ 98000 98022 ~ 98090 98000 ~100 98000 replace force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s run particle cloud 98033 ~100.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s run clone 98022 ~ 98000 98045 ~ 98090 98022 ~100 98000 replace force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s run particle cloud 98056 ~100.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s run clone 98045 ~ 98000 98068 ~ 98090 98045 ~100 98000 replace force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s run particle cloud 98079 ~100.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s run clone 98068 ~ 98000 98090 ~ 98090 98068 ~100 98000 replace force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run kill @e[type=item,x=98045,y=0,z=98045,distance=..1000]

scoreboard players add #rg_paralya_uhc_lobbies_mod switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players add #rg_paralya_uhc_lobbies_y switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players set #rg_paralya_uhc_lobbies_mod switch.data 0

kill @s

