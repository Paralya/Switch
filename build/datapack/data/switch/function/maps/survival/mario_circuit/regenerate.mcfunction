
#> switch:maps/survival/mario_circuit/regenerate
#
# @within	switch:maps/survival/mario_circuit/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mario_circuit switch.data 1
execute if score #rg_mario_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.mario_circuit set value 2b
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6941 -5860 6959 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 6941 -5860 6959 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6959 -5860 6978 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 6959 -5860 6978 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6978 -5860 6996 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 6978 -5860 6996 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 6996 -5860 7014 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 6996 -5860 7014 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7014 -5860 7033 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 7014 -5860 7033 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7033 -5860 7051 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 7033 -5860 7051 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7051 -5860 7070 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 7051 -5860 7070 -5718
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 7070 -5860 7088 -5718
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 7070 -5860 7088 -5718

execute if score #rg_mario_circuit switch.data matches 1 run scoreboard players set #rg_mario_circuit_y switch.data 85
execute if score #rg_mario_circuit switch.data matches 1 run scoreboard players set #rg_mario_circuit_mod switch.data 0
execute if score #rg_mario_circuit switch.data matches ..432 summon marker run function switch:maps/survival/mario_circuit/regeneration_on_marker

execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run kill @e[type=item,x=7014,y=85,z=-5789,distance=..1000]
execute if score #rg_mario_circuit switch.data matches 433.. run data remove storage switch:maps to_regenerate.mario_circuit

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 6941 -5860 6959 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 6941 -5860 6959 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 6959 -5860 6978 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 6959 -5860 6978 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 6978 -5860 6996 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 6978 -5860 6996 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 6996 -5860 7014 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 6996 -5860 7014 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 7014 -5860 7033 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 7014 -5860 7033 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 7033 -5860 7051 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 7033 -5860 7051 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 7051 -5860 7070 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 7051 -5860 7070 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 7070 -5860 7088 -5718
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 7070 -5860 7088 -5718

execute if score #rg_mario_circuit switch.data matches 433.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Mario Circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"21","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mario_circuit switch.data matches 433.. run function switch:engine/log_message/apply {message:"Map `Mario Circuit` just regenerated!"}

execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run function switch:maps/regenerate_doors_macro {name:"mario_circuit"}
execute if score #rg_mario_circuit switch.data matches 433.. run scoreboard players reset #rg_mario_circuit switch.data
execute if score #rg_mario_circuit switch.data matches 1.. run schedule function switch:maps/survival/mario_circuit/regenerate 1t

