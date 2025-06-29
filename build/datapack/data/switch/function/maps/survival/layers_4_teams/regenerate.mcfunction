
#> switch:maps/survival/layers_4_teams/regenerate
#
# @within	switch:maps/survival/layers_4_teams/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_layers_4_teams switch.data 1
execute if score #rg_layers_4_teams switch.data matches 1 run data modify storage switch:maps to_regenerate.layers_4_teams set value 2b
execute if score #rg_layers_4_teams switch.data matches 1 in minecraft:overworld run forceload add 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 1 in switch:game run forceload add 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 1 in minecraft:overworld run forceload add 74018 74000 74036 74062
execute if score #rg_layers_4_teams switch.data matches 1 in switch:game run forceload add 74018 74000 74036 74062

execute if score #rg_layers_4_teams switch.data matches 1 run scoreboard players set #rg_layers_4_teams_y switch.data 100
execute if score #rg_layers_4_teams switch.data matches 1 run scoreboard players set #rg_layers_4_teams_mod switch.data 0
execute if score #rg_layers_4_teams switch.data matches ..124 summon marker run function switch:maps/survival/layers_4_teams/regeneration_on_marker

execute if score #rg_layers_4_teams switch.data matches 125.. in switch:game run kill @e[type=item,x=74018,y=100,z=74031,distance=..1000]
execute if score #rg_layers_4_teams switch.data matches 125.. run data remove storage switch:maps to_regenerate.layers_4_teams

execute if score #rg_layers_4_teams switch.data matches 125.. in minecraft:overworld run forceload remove 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 125.. in switch:game run forceload remove 74000 74000 74018 74062
execute if score #rg_layers_4_teams switch.data matches 125.. in minecraft:overworld run forceload remove 74018 74000 74036 74062
execute if score #rg_layers_4_teams switch.data matches 125.. in switch:game run forceload remove 74018 74000 74036 74062

execute if score #rg_layers_4_teams switch.data matches 125.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Layers 4 Teams","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_layers_4_teams switch.data matches 125.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Layers 4 Teams` just regenerated!"}'
execute if score #rg_layers_4_teams switch.data matches 125.. run function switch:engine/log_message/apply

execute if score #rg_layers_4_teams switch.data matches 125.. in switch:game run function switch:maps/regenerate_doors_macro {name:"layers_4_teams"}
execute if score #rg_layers_4_teams switch.data matches 125.. run scoreboard players reset #rg_layers_4_teams switch.data
execute if score #rg_layers_4_teams switch.data matches 1.. run schedule function switch:maps/survival/layers_4_teams/regenerate 1t

