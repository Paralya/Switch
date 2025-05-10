
#> switch:maps/survival/minigolf/regenerate
#
# @within	switch:maps/survival/minigolf/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_minigolf switch.data 1
execute if score #rg_minigolf switch.data matches 1 run data modify storage switch:maps to_regenerate.minigolf set value 2b
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124000 124000 124018 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124000 124000 124018 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124018 124000 124037 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124018 124000 124037 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124037 124000 124055 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124037 124000 124055 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124055 124000 124074 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124055 124000 124074 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124074 124000 124092 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124074 124000 124092 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124092 124000 124111 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124092 124000 124111 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124111 124000 124129 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124111 124000 124129 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124129 124000 124148 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124129 124000 124148 124140
execute if score #rg_minigolf switch.data matches 1 in minecraft:overworld run forceload add 124148 124000 124166 124140
execute if score #rg_minigolf switch.data matches 1 in switch:game run forceload add 124148 124000 124166 124140

execute if score #rg_minigolf switch.data matches 1 run scoreboard players set #rg_minigolf_y switch.data 84
execute if score #rg_minigolf switch.data matches 1 run scoreboard players set #rg_minigolf_mod switch.data 0
execute if score #rg_minigolf switch.data matches ..477 summon marker run function switch:maps/survival/minigolf/regeneration_on_marker

execute if score #rg_minigolf switch.data matches 478.. in switch:game run kill @e[type=item,x=124083,y=84,z=124070,distance=..1000]
execute if score #rg_minigolf switch.data matches 478.. run data remove storage switch:maps to_regenerate.minigolf

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124000 124000 124018 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124000 124000 124018 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124018 124000 124037 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124018 124000 124037 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124037 124000 124055 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124037 124000 124055 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124055 124000 124074 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124055 124000 124074 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124074 124000 124092 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124074 124000 124092 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124092 124000 124111 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124092 124000 124111 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124111 124000 124129 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124111 124000 124129 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124129 124000 124148 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124129 124000 124148 124140

execute if score #rg_minigolf switch.data matches 478.. in minecraft:overworld run forceload remove 124148 124000 124166 124140
execute if score #rg_minigolf switch.data matches 478.. in switch:game run forceload remove 124148 124000 124166 124140

execute if score #rg_minigolf switch.data matches 478.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"minigolf","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_minigolf switch.data matches 478.. run data modify storage switch:main MessageToLog set value '{"text":"Map `minigolf` just regenerated!"}'
execute if score #rg_minigolf switch.data matches 478.. run function switch:engine/log_message/apply

execute if score #rg_minigolf switch.data matches 478.. in switch:game run function switch:maps/regenerate_doors_macro {name:"minigolf"}
execute if score #rg_minigolf switch.data matches 478.. run scoreboard players reset #rg_minigolf switch.data
execute if score #rg_minigolf switch.data matches 1.. run schedule function switch:maps/survival/minigolf/regenerate 1t

