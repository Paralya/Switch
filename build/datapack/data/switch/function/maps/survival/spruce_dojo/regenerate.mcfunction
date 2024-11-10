
#> switch:maps/survival/spruce_dojo/regenerate
#
# @within	switch:maps/survival/spruce_dojo/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_spruce_dojo switch.data 1
execute if score #rg_spruce_dojo switch.data matches 1 run data modify storage switch:maps to_regenerate.spruce_dojo set value 2b
execute if score #rg_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84000 84000 84028 84069
execute if score #rg_spruce_dojo switch.data matches 1 in switch:game run forceload add 84000 84000 84028 84069
execute if score #rg_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84028 84000 84055 84069
execute if score #rg_spruce_dojo switch.data matches 1 in switch:game run forceload add 84028 84000 84055 84069
execute if score #rg_spruce_dojo switch.data matches 1 in minecraft:overworld run forceload add 84055 84000 84083 84069
execute if score #rg_spruce_dojo switch.data matches 1 in switch:game run forceload add 84055 84000 84083 84069

execute if score #rg_spruce_dojo switch.data matches 1 run scoreboard players set #rg_spruce_dojo_y switch.data 0
execute if score #rg_spruce_dojo switch.data matches 1 run scoreboard players set #rg_spruce_dojo_mod switch.data 0
execute if score #rg_spruce_dojo switch.data matches ..108 summon marker run function switch:maps/survival/spruce_dojo/regeneration_on_marker

execute if score #rg_spruce_dojo switch.data matches 109.. in switch:game run kill @e[type=item,x=84041,y=0,z=84034,distance=..1000]
execute if score #rg_spruce_dojo switch.data matches 109.. run data remove storage switch:maps to_regenerate.spruce_dojo

execute if score #rg_spruce_dojo switch.data matches 109.. in minecraft:overworld run forceload remove 84000 84000 84028 84069
execute if score #rg_spruce_dojo switch.data matches 109.. in switch:game run forceload remove 84000 84000 84028 84069

execute if score #rg_spruce_dojo switch.data matches 109.. in minecraft:overworld run forceload remove 84028 84000 84055 84069
execute if score #rg_spruce_dojo switch.data matches 109.. in switch:game run forceload remove 84028 84000 84055 84069

execute if score #rg_spruce_dojo switch.data matches 109.. in minecraft:overworld run forceload remove 84055 84000 84083 84069
execute if score #rg_spruce_dojo switch.data matches 109.. in switch:game run forceload remove 84055 84000 84083 84069

execute if score #rg_spruce_dojo switch.data matches 109.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"spruce_dojo","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_spruce_dojo switch.data matches 109.. run data modify storage switch:main MessageToLog set value '{"text":"Map `spruce_dojo` just regenerated!"}'
execute if score #rg_spruce_dojo switch.data matches 109.. run function switch:engine/log_message/apply

execute if score #rg_spruce_dojo switch.data matches 109.. in switch:game run function switch:maps/regenerate_doors_macro {name:"spruce_dojo"}
execute if score #rg_spruce_dojo switch.data matches 109.. run scoreboard players reset #rg_spruce_dojo switch.data
execute if score #rg_spruce_dojo switch.data matches 1.. run schedule function switch:maps/survival/spruce_dojo/regenerate 1t

