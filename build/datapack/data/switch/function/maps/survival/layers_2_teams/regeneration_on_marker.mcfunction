
#> switch:maps/survival/layers_2_teams/regeneration_on_marker
#
# @within	switch:maps/survival/layers_2_teams/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_2_teams_y switch.data

execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s in switch:game run particle cloud 9 ~0.5 -5969 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ -6000 18 ~ -5938 to switch:game 0 ~0 -6000 strict replace force

execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s in switch:game run particle cloud 27 ~0.5 -5969 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s run clone from minecraft:overworld 18 ~ -6000 36 ~ -5938 to switch:game 18 ~0 -6000 strict replace force

scoreboard players add #rg_layers_2_teams_mod switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 in switch:game run kill @e[type=item,x=18,y=100,z=-5969,distance=..1000]
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_2_teams_y switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_2_teams_mod switch.data 0

kill @s

