
#> switch:maps/survival/layers_4_teams/regeneration_on_marker
#
# @within	switch:maps/survival/layers_4_teams/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_layers_4_teams_y switch.data

execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s in switch:game run particle cloud -5991 ~0.5 8031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ 8000 -5982 ~ 8062 to switch:game -6000 ~0 8000 strict replace force

execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s in switch:game run particle cloud -5973 ~0.5 8031 9 0 15 0 250 force
execute if score #rg_layers_4_teams_mod switch.data matches 1 at @s run clone from minecraft:overworld -5982 ~ 8000 -5964 ~ 8062 to switch:game -5982 ~0 8000 strict replace force

scoreboard players add #rg_layers_4_teams_mod switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-5982,y=100,z=8031,distance=..1000]
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players add #rg_layers_4_teams_y switch.data 1
execute if score #rg_layers_4_teams_mod switch.data matches 2 run scoreboard players set #rg_layers_4_teams_mod switch.data 0

kill @s

