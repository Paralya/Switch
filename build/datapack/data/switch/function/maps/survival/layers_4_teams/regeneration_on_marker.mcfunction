
#> switch:maps/survival/layers_4_teams/regeneration_on_marker
#
# @within	switch:maps/survival/layers_4_teams/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_4_teams_y switch.data

execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s in switch:game run particle cloud 74009 ~0.5 74031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s run clone from minecraft:overworld 74000 ~ 74000 74018 ~ 74062 to switch:game 74000 ~0 74000 strict replace force

execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s in switch:game run particle cloud 74027 ~0.5 74031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s run clone from minecraft:overworld 74018 ~ 74000 74036 ~ 74062 to switch:game 74018 ~0 74000 strict replace force

scoreboard players add #rg_layers_4_teams_mod switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 in switch:game run kill @e[type=item,x=74018,y=100,z=74031,distance=..1000]
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_4_teams_y switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_4_teams_mod switch.data 0

kill @s

