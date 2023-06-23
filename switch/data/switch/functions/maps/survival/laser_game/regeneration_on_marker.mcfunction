
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_laser_game_y switch.data

execute if score #rg_laser_game_mod switch.data matches 0 at @s run particle cloud 512 ~91.5 525 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 0 at @s run clone 499 ~ 499 525 ~ 551 499 ~91 499 replace force
execute if score #rg_laser_game_mod switch.data matches 1 at @s run particle cloud 538 ~91.5 525 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 1 at @s run clone 525 ~ 499 551 ~ 551 525 ~91 499 replace force

execute if score #rg_laser_game_mod switch.data matches 2 run kill @e[type=item,x=525,y=0,z=525,distance=..1000]
scoreboard players add #rg_laser_game_mod switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players add #rg_laser_game_y switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players set #rg_laser_game_mod switch.data 0

kill @s

