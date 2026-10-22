
#> switch:maps/survival/layers_2_teams/regenerate
#
# @within	switch:maps/survival/layers_2_teams/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_layers_2_teams switch.data 1
execute if score #rg_layers_2_teams switch.data matches 1 run data modify storage switch:maps to_regenerate.layers_2_teams set value 2b
execute if score #rg_layers_2_teams switch.data matches 1 in minecraft:overworld run forceload add 0 -6000 18 -5938
execute if score #rg_layers_2_teams switch.data matches 1 in switch:game run forceload add 0 -6000 18 -5938
execute if score #rg_layers_2_teams switch.data matches 1 in minecraft:overworld run forceload add 18 -6000 36 -5938
execute if score #rg_layers_2_teams switch.data matches 1 in switch:game run forceload add 18 -6000 36 -5938

execute if score #rg_layers_2_teams switch.data matches 1 run scoreboard players set #rg_layers_2_teams_y switch.data 100
execute if score #rg_layers_2_teams switch.data matches 1 run scoreboard players set #rg_layers_2_teams_mod switch.data 0
execute if score #rg_layers_2_teams switch.data matches ..126 summon marker run function switch:maps/survival/layers_2_teams/regeneration_on_marker

execute if score #rg_layers_2_teams switch.data matches 127.. in switch:game run kill @e[type=item,x=18,y=100,z=-5969,distance=..1000]
execute if score #rg_layers_2_teams switch.data matches 127.. run data remove storage switch:maps to_regenerate.layers_2_teams

execute if score #rg_layers_2_teams switch.data matches 127.. in minecraft:overworld run forceload remove 0 -6000 18 -5938
execute if score #rg_layers_2_teams switch.data matches 127.. in switch:game run forceload remove 0 -6000 18 -5938
execute if score #rg_layers_2_teams switch.data matches 127.. in minecraft:overworld run forceload remove 18 -6000 36 -5938
execute if score #rg_layers_2_teams switch.data matches 127.. in switch:game run forceload remove 18 -6000 36 -5938

execute if score #rg_layers_2_teams switch.data matches 127.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Layers 2 Teams","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_layers_2_teams switch.data matches 127.. run function switch:engine/log_message/apply {message:"Map `Layers 2 Teams` just regenerated!"}

execute if score #rg_layers_2_teams switch.data matches 127.. in switch:game run function switch:maps/regenerate_doors_macro {name:"layers_2_teams"}
execute if score #rg_layers_2_teams switch.data matches 127.. run scoreboard players reset #rg_layers_2_teams switch.data
execute if score #rg_layers_2_teams switch.data matches 1.. run schedule function switch:maps/survival/layers_2_teams/regenerate 1t

