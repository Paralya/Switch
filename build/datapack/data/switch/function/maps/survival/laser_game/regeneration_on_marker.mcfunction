
#> switch:maps/survival/laser_game/regeneration_on_marker
#
# @within	switch:maps/survival/laser_game/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_laser_game_y switch.data

execute if score #rg_laser_game_mod switch.data matches 0 at @s in switch:game run particle cloud 513 ~0.5 526 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 0 at @s run clone from minecraft:overworld 500 ~ 500 526 ~ 552 to switch:game 500 ~0 500 replace force

execute if score #rg_laser_game_mod switch.data matches 1 at @s in switch:game run particle cloud 539 ~0.5 526 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 1 at @s run clone from minecraft:overworld 526 ~ 500 552 ~ 552 to switch:game 526 ~0 500 replace force

scoreboard players add #rg_laser_game_mod switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 in switch:game run kill @e[type=item,x=526,y=100,z=526,distance=..1000]
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players add #rg_laser_game_y switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players set #rg_laser_game_mod switch.data 0

kill @s

