
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_kart_racer_relai_y switch.data

execute if score #rg_kart_racer_relai_mod switch.data matches 0 at @s run particle cloud 64010 ~100.5 64063 10 0 31 0 250 force
execute if score #rg_kart_racer_relai_mod switch.data matches 0 at @s run clone 64000 ~ 64000 64020 ~ 64126 64000 ~100 64000 replace force
execute if score #rg_kart_racer_relai_mod switch.data matches 1 at @s run particle cloud 64030 ~100.5 64063 10 0 31 0 250 force
execute if score #rg_kart_racer_relai_mod switch.data matches 1 at @s run clone 64020 ~ 64000 64040 ~ 64126 64020 ~100 64000 replace force
execute if score #rg_kart_racer_relai_mod switch.data matches 2 at @s run particle cloud 64050 ~100.5 64063 10 0 31 0 250 force
execute if score #rg_kart_racer_relai_mod switch.data matches 2 at @s run clone 64040 ~ 64000 64061 ~ 64126 64040 ~100 64000 replace force
execute if score #rg_kart_racer_relai_mod switch.data matches 3 at @s run particle cloud 64071 ~100.5 64063 10 0 31 0 250 force
execute if score #rg_kart_racer_relai_mod switch.data matches 3 at @s run clone 64061 ~ 64000 64081 ~ 64126 64061 ~100 64000 replace force
execute if score #rg_kart_racer_relai_mod switch.data matches 4 at @s run particle cloud 64091 ~100.5 64063 10 0 31 0 250 force
execute if score #rg_kart_racer_relai_mod switch.data matches 4 at @s run clone 64081 ~ 64000 64101 ~ 64126 64081 ~100 64000 replace force
execute if score #rg_kart_racer_relai_mod switch.data matches 5 run kill @e[type=item,x=64050,y=0,z=64063,distance=..1000]

scoreboard players add #rg_kart_racer_relai_mod switch.data 1
execute if score #rg_kart_racer_relai_mod switch.data matches 5 run scoreboard players add #rg_kart_racer_relai_y switch.data 1
execute if score #rg_kart_racer_relai_mod switch.data matches 5 run scoreboard players set #rg_kart_racer_relai_mod switch.data 0

kill @s

