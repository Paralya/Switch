
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_4_teams_y switch.data

execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s run particle cloud 74009 ~100.5 74031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s run clone 74000 ~ 74000 74018 ~ 74062 74000 ~100 74000 replace force
execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s run particle cloud 74027 ~100.5 74031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s run clone 74018 ~ 74000 74036 ~ 74062 74018 ~100 74000 replace force
execute if score #rg_layers_4_teams_mod switch.data matches 2 run kill @e[type=item,x=74018,y=0,z=74031,distance=..1000]

scoreboard players add #rg_layers_4_teams_mod switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_4_teams_y switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_4_teams_mod switch.data 0

kill @s

