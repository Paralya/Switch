
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spruce_dojo_y switch.data

execute if score #rg_spruce_dojo_mod switch.data matches 0 at @s run particle cloud 84014 ~100.5 84034 14 0 17 0 250 force
execute if score #rg_spruce_dojo_mod switch.data matches 0 at @s run clone 84000 ~ 84000 84028 ~ 84069 84000 ~100 84000 replace force
execute if score #rg_spruce_dojo_mod switch.data matches 1 at @s run particle cloud 84041 ~100.5 84034 13 0 17 0 250 force
execute if score #rg_spruce_dojo_mod switch.data matches 1 at @s run clone 84028 ~ 84000 84055 ~ 84069 84028 ~100 84000 replace force
execute if score #rg_spruce_dojo_mod switch.data matches 2 at @s run particle cloud 84069 ~100.5 84034 14 0 17 0 250 force
execute if score #rg_spruce_dojo_mod switch.data matches 2 at @s run clone 84055 ~ 84000 84083 ~ 84069 84055 ~100 84000 replace force
execute if score #rg_spruce_dojo_mod switch.data matches 3 run kill @e[type=item,x=84041,y=0,z=84034,distance=..1000]

scoreboard players add #rg_spruce_dojo_mod switch.data 1
execute if score #rg_spruce_dojo_mod switch.data matches 3 run scoreboard players add #rg_spruce_dojo_y switch.data 1
execute if score #rg_spruce_dojo_mod switch.data matches 3 run scoreboard players set #rg_spruce_dojo_mod switch.data 0

kill @s

