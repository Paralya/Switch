
#> switch:maps/survival/clock_circuit/regenerate
#
# @within	switch:maps/survival/clock_circuit/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_clock_circuit switch.data 1
execute if score #rg_clock_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.clock_circuit set value 2b
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6032 -5087 6050 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6032 -5087 6050 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6050 -5087 6068 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6050 -5087 6068 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6068 -5087 6085 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6068 -5087 6085 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6085 -5087 6103 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6085 -5087 6103 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6103 -5087 6121 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6103 -5087 6121 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6121 -5087 6139 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6121 -5087 6139 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6139 -5087 6156 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6139 -5087 6156 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6156 -5087 6174 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6156 -5087 6174 -4931
execute if score #rg_clock_circuit switch.data matches 1 in minecraft:overworld run forceload add 6174 -5087 6192 -4931
execute if score #rg_clock_circuit switch.data matches 1 in switch:game run forceload add 6174 -5087 6192 -4931

execute if score #rg_clock_circuit switch.data matches 1 run scoreboard players set #rg_clock_circuit_y switch.data 70
execute if score #rg_clock_circuit switch.data matches 1 run scoreboard players set #rg_clock_circuit_mod switch.data 0
execute if score #rg_clock_circuit switch.data matches ..927 summon marker run function switch:maps/survival/clock_circuit/regeneration_on_marker

execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run kill @e[type=item,x=6112,y=70,z=-5009,distance=..1000]
execute if score #rg_clock_circuit switch.data matches 928.. run data remove storage switch:maps to_regenerate.clock_circuit

execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6032 -5087 6050 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6032 -5087 6050 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6050 -5087 6068 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6050 -5087 6068 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6068 -5087 6085 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6068 -5087 6085 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6085 -5087 6103 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6085 -5087 6103 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6103 -5087 6121 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6103 -5087 6121 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6121 -5087 6139 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6121 -5087 6139 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6139 -5087 6156 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6139 -5087 6156 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6156 -5087 6174 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6156 -5087 6174 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in minecraft:overworld run forceload remove 6174 -5087 6192 -4931
execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run forceload remove 6174 -5087 6192 -4931

execute if score #rg_clock_circuit switch.data matches 928.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Clock Circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"46","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_clock_circuit switch.data matches 928.. run function switch:engine/log_message/apply {message:"Map `Clock Circuit` just regenerated!"}

execute if score #rg_clock_circuit switch.data matches 928.. in switch:game run function switch:maps/regenerate_doors_macro {name:"clock_circuit"}
execute if score #rg_clock_circuit switch.data matches 928.. run scoreboard players reset #rg_clock_circuit switch.data
execute if score #rg_clock_circuit switch.data matches 1.. run schedule function switch:maps/survival/clock_circuit/regenerate 1t

