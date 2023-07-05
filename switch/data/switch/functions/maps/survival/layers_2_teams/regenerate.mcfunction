
scoreboard players add #rg_layers_2_teams switch.data 1
execute if score #rg_layers_2_teams switch.data matches 1 run forceload add 26982 26969 27000 27031
execute if score #rg_layers_2_teams switch.data matches 1 run forceload add 27000 26969 27018 27031

execute if score #rg_layers_2_teams switch.data matches 1 run scoreboard players set #rg_layers_2_teams_y switch.data 0
execute if score #rg_layers_2_teams switch.data matches 1 run scoreboard players set #rg_layers_2_teams_mod switch.data 0
execute if score #rg_layers_2_teams switch.data matches ..124 summon marker run function switch:maps/survival/layers_2_teams/regeneration_on_marker

execute if score #rg_layers_2_teams switch.data matches 125.. run kill @e[type=item,x=27000,y=0,z=27000,distance=..1000]
execute if score #rg_layers_2_teams switch.data matches 125.. run forceload remove 26982 26969 27000 27031
execute if score #rg_layers_2_teams switch.data matches 125.. run forceload remove 27000 26969 27018 27031
execute if score #rg_layers_2_teams switch.data matches 125.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"layers_2_teams","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_layers_2_teams switch.data matches 125.. run data modify storage switch:main MessageToLog set value '{"text": "La map `layers_2_teams` a fini sa regeneration !"}'
execute if score #rg_layers_2_teams switch.data matches 125.. run function switch:engine/log_message/apply
execute if score #rg_layers_2_teams switch.data matches 125.. run scoreboard players reset #rg_layers_2_teams switch.data

execute if score #rg_layers_2_teams switch.data matches 1.. run schedule function switch:maps/survival/layers_2_teams/regenerate 1t

