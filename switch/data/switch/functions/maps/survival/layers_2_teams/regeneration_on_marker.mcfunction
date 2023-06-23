
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_2_teams_y switch.data

execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s run particle cloud 26991 ~100.5 27000 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s run clone 26982 ~ 26969 27000 ~ 27031 26982 ~100 26969 replace force
execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s run particle cloud 27009 ~100.5 27000 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s run clone 27000 ~ 26969 27018 ~ 27031 27000 ~100 26969 replace force

execute if score #rg_layers_2_teams_mod switch.data matches 2 run kill @e[type=item,x=27000,y=0,z=27000,distance=..1000]
scoreboard players add #rg_layers_2_teams_mod switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_2_teams_y switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_2_teams_mod switch.data 0

kill @s

