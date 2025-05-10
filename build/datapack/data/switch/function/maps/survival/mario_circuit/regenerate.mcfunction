
#> switch:maps/survival/mario_circuit/regenerate
#
# @within	switch:maps/survival/mario_circuit/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mario_circuit switch.data 1
execute if score #rg_mario_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.mario_circuit set value 2b
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20378 19516 20396 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20378 19516 20396 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20396 19516 20415 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20396 19516 20415 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20415 19516 20433 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20415 19516 20433 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20433 19516 20452 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20433 19516 20452 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20452 19516 20470 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20452 19516 20470 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20470 19516 20488 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20470 19516 20488 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20488 19516 20507 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20488 19516 20507 19658
execute if score #rg_mario_circuit switch.data matches 1 in minecraft:overworld run forceload add 20507 19516 20525 19658
execute if score #rg_mario_circuit switch.data matches 1 in switch:game run forceload add 20507 19516 20525 19658

execute if score #rg_mario_circuit switch.data matches 1 run scoreboard players set #rg_mario_circuit_y switch.data 85
execute if score #rg_mario_circuit switch.data matches 1 run scoreboard players set #rg_mario_circuit_mod switch.data 0
execute if score #rg_mario_circuit switch.data matches ..432 summon marker run function switch:maps/survival/mario_circuit/regeneration_on_marker

execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run kill @e[type=item,x=20451,y=85,z=19587,distance=..1000]
execute if score #rg_mario_circuit switch.data matches 433.. run data remove storage switch:maps to_regenerate.mario_circuit

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20378 19516 20396 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20378 19516 20396 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20396 19516 20415 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20396 19516 20415 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20415 19516 20433 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20415 19516 20433 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20433 19516 20452 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20433 19516 20452 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20452 19516 20470 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20452 19516 20470 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20470 19516 20488 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20470 19516 20488 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20488 19516 20507 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20488 19516 20507 19658

execute if score #rg_mario_circuit switch.data matches 433.. in minecraft:overworld run forceload remove 20507 19516 20525 19658
execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run forceload remove 20507 19516 20525 19658

execute if score #rg_mario_circuit switch.data matches 433.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"mario_circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"21","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_mario_circuit switch.data matches 433.. run data modify storage switch:main MessageToLog set value '{"text":"Map `mario_circuit` just regenerated!"}'
execute if score #rg_mario_circuit switch.data matches 433.. run function switch:engine/log_message/apply

execute if score #rg_mario_circuit switch.data matches 433.. in switch:game run function switch:maps/regenerate_doors_macro {name:"mario_circuit"}
execute if score #rg_mario_circuit switch.data matches 433.. run scoreboard players reset #rg_mario_circuit switch.data
execute if score #rg_mario_circuit switch.data matches 1.. run schedule function switch:maps/survival/mario_circuit/regenerate 1t

