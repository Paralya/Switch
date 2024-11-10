
#> switch:maps/survival/scartmania/regenerate
#
# @within	switch:maps/survival/scartmania/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_scartmania switch.data 1
execute if score #rg_scartmania switch.data matches 1 run data modify storage switch:maps to_regenerate.scartmania set value 2b
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58000 58000 58015 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58000 58000 58015 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58015 58000 58029 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58015 58000 58029 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58029 58000 58044 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58029 58000 58044 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58044 58000 58058 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58044 58000 58058 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58058 58000 58073 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58058 58000 58073 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58073 58000 58087 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58073 58000 58087 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58087 58000 58102 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58087 58000 58102 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58102 58000 58116 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58102 58000 58116 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58116 58000 58131 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58116 58000 58131 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58131 58000 58145 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58131 58000 58145 58188
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 58145 58000 58160 58188
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 58145 58000 58160 58188

execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_y switch.data 0
execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_mod switch.data 0
execute if score #rg_scartmania switch.data matches ..1012 summon marker run function switch:maps/survival/scartmania/regeneration_on_marker

execute if score #rg_scartmania switch.data matches 1013.. in switch:game run kill @e[type=item,x=58080,y=0,z=58094,distance=..1000]
execute if score #rg_scartmania switch.data matches 1013.. run data remove storage switch:maps to_regenerate.scartmania

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58000 58000 58015 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58000 58000 58015 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58015 58000 58029 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58015 58000 58029 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58029 58000 58044 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58029 58000 58044 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58044 58000 58058 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58044 58000 58058 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58058 58000 58073 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58058 58000 58073 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58073 58000 58087 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58073 58000 58087 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58087 58000 58102 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58087 58000 58102 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58102 58000 58116 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58102 58000 58116 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58116 58000 58131 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58116 58000 58131 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58131 58000 58145 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58131 58000 58145 58188

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 58145 58000 58160 58188
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 58145 58000 58160 58188

execute if score #rg_scartmania switch.data matches 1013.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"scartmania","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"50","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_scartmania switch.data matches 1013.. run data modify storage switch:main MessageToLog set value '{"text":"Map `scartmania` just regenerated!"}'
execute if score #rg_scartmania switch.data matches 1013.. run function switch:engine/log_message/apply

execute if score #rg_scartmania switch.data matches 1013.. in switch:game run function switch:maps/regenerate_doors_macro {name:"scartmania"}
execute if score #rg_scartmania switch.data matches 1013.. run scoreboard players reset #rg_scartmania switch.data
execute if score #rg_scartmania switch.data matches 1.. run schedule function switch:maps/survival/scartmania/regenerate 1t

