
#> switch:maps/survival/laser_game/regeneration_on_marker
#
# @within	switch:maps/survival/laser_game/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_laser_game_y switch.data

execute if score #rg_laser_game_mod switch.data matches 0 at @s in switch:game run particle cloud 2013 ~0.5 -1974 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -2000 2026 ~ -1948 to switch:game 2000 ~0 -2000 strict replace force

execute if score #rg_laser_game_mod switch.data matches 1 at @s in switch:game run particle cloud 2039 ~0.5 -1974 13 0 13 0 250 force
execute if score #rg_laser_game_mod switch.data matches 1 at @s run clone from minecraft:overworld 2026 ~ -2000 2052 ~ -1948 to switch:game 2026 ~0 -2000 strict replace force

scoreboard players add #rg_laser_game_mod switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 in switch:game run kill @e[type=item,x=2026,y=100,z=-1974,distance=..1000]
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players add #rg_laser_game_y switch.data 1
execute if score #rg_laser_game_mod switch.data matches 2 run scoreboard players set #rg_laser_game_mod switch.data 0

kill @s

