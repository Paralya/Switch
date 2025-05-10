
#> switch:maps/survival/layers_2_teams/regeneration_on_marker
#
# @within	switch:maps/survival/layers_2_teams/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_2_teams_y switch.data

execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s in switch:game run particle cloud 27009 ~0.5 27031 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 0 at @s run clone from minecraft:overworld 27000 ~ 27000 27018 ~ 27062 to switch:game 27000 ~0 27000 replace force

execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s in switch:game run particle cloud 27027 ~0.5 27031 9 0 15 0 250 force
execute if score #rg_layers_2_teams_mod switch.data matches 1 at @s run clone from minecraft:overworld 27018 ~ 27000 27036 ~ 27062 to switch:game 27018 ~0 27000 replace force

scoreboard players add #rg_layers_2_teams_mod switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 in switch:game run kill @e[type=item,x=27018,y=100,z=27031,distance=..1000]
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_2_teams_y switch.data 1
execute if score #rg_layers_2_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_2_teams_mod switch.data 0

kill @s

