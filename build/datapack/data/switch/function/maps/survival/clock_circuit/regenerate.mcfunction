
#> switch:maps/survival/clock_circuit/regenerate
#
# @within	switch:maps/survival/clock_circuit/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_clock_circuit switch.data 1
execute if score #rg_clock_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.clock_circuit set value 2b
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19469 20289 19487 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19469 20289 19487 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19487 20289 19505 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19487 20289 19505 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19505 20289 19522 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19505 20289 19522 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19522 20289 19540 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19522 20289 19540 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19540 20289 19558 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19540 20289 19558 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19558 20289 19576 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19558 20289 19576 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19576 20289 19593 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19576 20289 19593 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19593 20289 19611 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19593 20289 19611 20445
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 19611 20289 19629 20445
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 19611 20289 19629 20445

execute if score #rg_clock_circuit switch.data matches 1 run scoreboard players set #rg_clock_circuit_y switch.data 70
execute if score #rg_clock_circuit switch.data matches 1 run scoreboard players set #rg_clock_circuit_mod switch.data 0
execute if score #rg_clock_circuit switch.data matches ..927 summon marker run function switch:maps/survival/clock_circuit/regeneration_on_marker

execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run kill @e[type=item,x=19549,y=70,z=20367,distance=..1000]
execute if score #rg_clock_circuit switch.data matches 928.. run data remove storage switch:maps to_regenerate.clock_circuit

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19469 20289 19487 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19469 20289 19487 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19487 20289 19505 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19487 20289 19505 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19505 20289 19522 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19505 20289 19522 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19522 20289 19540 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19522 20289 19540 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19540 20289 19558 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19540 20289 19558 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19558 20289 19576 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19558 20289 19576 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19576 20289 19593 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19576 20289 19593 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19593 20289 19611 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19593 20289 19611 20445

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 19611 20289 19629 20445
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 19611 20289 19629 20445

execute if score #rg_clock_circuit switch.data matches 928.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"clock_circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"46","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_clock_circuit switch.data matches 928.. run data modify storage switch:main MessageToLog set value '{"text":"Map `clock_circuit` just regenerated!"}'
execute if score #rg_clock_circuit switch.data matches 928.. run function switch:engine/log_message/apply

execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run function switch:maps/regenerate_doors_macro {name:"clock_circuit"}
execute if score #rg_clock_circuit switch.data matches 928.. run scoreboard players reset #rg_clock_circuit switch.data
execute if score #rg_clock_circuit switch.data matches 1.. run schedule function switch:maps/survival/clock_circuit/regenerate 1t

