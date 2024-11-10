
#> switch:maps/survival/blindtest/regenerate
#
# @within	switch:maps/survival/blindtest/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_blindtest switch.data 1
execute if score #rg_blindtest switch.data matches 1 run data modify storage switch:maps to_regenerate.blindtest set value 2b
execute if score #rg_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62000 62000 62022 62093
execute if score #rg_blindtest switch.data matches 1 in switch:game run forceload add 62000 62000 62022 62093
execute if score #rg_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62022 62000 62044 62093
execute if score #rg_blindtest switch.data matches 1 in switch:game run forceload add 62022 62000 62044 62093
execute if score #rg_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62044 62000 62066 62093
execute if score #rg_blindtest switch.data matches 1 in switch:game run forceload add 62044 62000 62066 62093
execute if score #rg_blindtest switch.data matches 1 in minecraft:overworld run forceload add 62066 62000 62088 62093
execute if score #rg_blindtest switch.data matches 1 in switch:game run forceload add 62066 62000 62088 62093

execute if score #rg_blindtest switch.data matches 1 run scoreboard players set #rg_blindtest_y switch.data 0
execute if score #rg_blindtest switch.data matches 1 run scoreboard players set #rg_blindtest_mod switch.data 0
execute if score #rg_blindtest switch.data matches ..240 summon marker run function switch:maps/survival/blindtest/regeneration_on_marker

execute if score #rg_blindtest switch.data matches 241.. in switch:game run kill @e[type=item,x=62044,y=0,z=62046,distance=..1000]
execute if score #rg_blindtest switch.data matches 241.. run data remove storage switch:maps to_regenerate.blindtest

execute if score #rg_blindtest switch.data matches 241.. in minecraft:overworld run forceload remove 62000 62000 62022 62093
execute if score #rg_blindtest switch.data matches 241.. in switch:game run forceload remove 62000 62000 62022 62093

execute if score #rg_blindtest switch.data matches 241.. in minecraft:overworld run forceload remove 62022 62000 62044 62093
execute if score #rg_blindtest switch.data matches 241.. in switch:game run forceload remove 62022 62000 62044 62093

execute if score #rg_blindtest switch.data matches 241.. in minecraft:overworld run forceload remove 62044 62000 62066 62093
execute if score #rg_blindtest switch.data matches 241.. in switch:game run forceload remove 62044 62000 62066 62093

execute if score #rg_blindtest switch.data matches 241.. in minecraft:overworld run forceload remove 62066 62000 62088 62093
execute if score #rg_blindtest switch.data matches 241.. in switch:game run forceload remove 62066 62000 62088 62093

execute if score #rg_blindtest switch.data matches 241.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"blindtest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_blindtest switch.data matches 241.. run data modify storage switch:main MessageToLog set value '{"text":"Map `blindtest` just regenerated!"}'
execute if score #rg_blindtest switch.data matches 241.. run function switch:engine/log_message/apply

execute if score #rg_blindtest switch.data matches 241.. in switch:game run function switch:maps/regenerate_doors_macro {name:"blindtest"}
execute if score #rg_blindtest switch.data matches 241.. run scoreboard players reset #rg_blindtest switch.data
execute if score #rg_blindtest switch.data matches 1.. run schedule function switch:maps/survival/blindtest/regenerate 1t

