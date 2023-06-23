
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_plucky_penguins_y switch.data

execute if score #rg_plucky_penguins_mod switch.data matches 0 at @s run particle cloud 68006 ~100.5 68015 6 0 7 0 250 force
execute if score #rg_plucky_penguins_mod switch.data matches 0 at @s run clone 68000 ~ 68000 68012 ~ 68031 68000 ~100 68000 replace force
execute if score #rg_plucky_penguins_mod switch.data matches 1 at @s run particle cloud 68018 ~100.5 68015 6 0 7 0 250 force
execute if score #rg_plucky_penguins_mod switch.data matches 1 at @s run clone 68012 ~ 68000 68024 ~ 68031 68012 ~100 68000 replace force

execute if score #rg_plucky_penguins_mod switch.data matches 2 run kill @e[type=item,x=68012,y=0,z=68015,distance=..1000]
scoreboard players add #rg_plucky_penguins_mod switch.data 1
execute if score #rg_plucky_penguins_mod switch.data matches 2 run scoreboard players add #rg_plucky_penguins_y switch.data 1
execute if score #rg_plucky_penguins_mod switch.data matches 2 run scoreboard players set #rg_plucky_penguins_mod switch.data 0

kill @s

