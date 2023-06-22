
scoreboard players add #rg_layers_4_teams switch.data 1
execute if score #rg_layers_4_teams switch.data matches 1 run forceload add 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 1 run forceload add 74018 74000 74036 74062

execute if score #rg_layers_4_teams switch.data matches 1 run scoreboard players set #rg_layers_4_teams_y switch.data -64
execute if score #rg_layers_4_teams switch.data matches 1 run scoreboard players set #rg_layers_4_teams_mod switch.data 0
execute if score #rg_layers_4_teams switch.data matches ..122 summon marker run function switch:maps/survival/layers_4_teams/regeneration_on_marker

execute if score #rg_layers_4_teams switch.data matches 123.. run kill @e[type=item,x=74018,y=0,z=74031,distance=..1000]
execute if score #rg_layers_4_teams switch.data matches 123.. run forceload remove 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 123.. run forceload remove 74018 74000 74036 74062
execute if score #rg_layers_4_teams switch.data matches 123.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"layers_4_teams","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_layers_4_teams switch.data matches 123.. run scoreboard players reset #rg_layers_4_teams switch.data

execute if score #rg_layers_4_teams switch.data matches 1.. run schedule function switch:maps/survival/layers_4_teams/regenerate 1t

