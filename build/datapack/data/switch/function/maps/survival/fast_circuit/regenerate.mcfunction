
#> switch:maps/survival/fast_circuit/regenerate
#
# @within	switch:maps/survival/fast_circuit/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fast_circuit switch.data 1
execute if score #rg_fast_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.fast_circuit set value 2b
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6716 -5854 6731 -5726
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 6716 -5854 6731 -5726
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6731 -5854 6747 -5726
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 6731 -5854 6747 -5726
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6747 -5854 6762 -5726
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 6747 -5854 6762 -5726
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6762 -5854 6778 -5726
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 6762 -5854 6778 -5726
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 6778 -5854 6793 -5726
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 6778 -5854 6793 -5726

execute if score #rg_fast_circuit switch.data matches 1 run scoreboard players set #rg_fast_circuit_y switch.data 85
execute if score #rg_fast_circuit switch.data matches 1 run scoreboard players set #rg_fast_circuit_mod switch.data 0
execute if score #rg_fast_circuit switch.data matches ..175 summon marker run function switch:maps/survival/fast_circuit/regeneration_on_marker

execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run kill @e[type=item,x=6754,y=85,z=-5790,distance=..1000]
execute if score #rg_fast_circuit switch.data matches 176.. run data remove storage switch:maps to_regenerate.fast_circuit

execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 6716 -5854 6731 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 6716 -5854 6731 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 6731 -5854 6747 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 6731 -5854 6747 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 6747 -5854 6762 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 6747 -5854 6762 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 6762 -5854 6778 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 6762 -5854 6778 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 6778 -5854 6793 -5726
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 6778 -5854 6793 -5726

execute if score #rg_fast_circuit switch.data matches 176.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fast Circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_fast_circuit switch.data matches 176.. run function switch:engine/log_message/apply {message:"Map `Fast Circuit` just regenerated!"}

execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fast_circuit"}
execute if score #rg_fast_circuit switch.data matches 176.. run scoreboard players reset #rg_fast_circuit switch.data
execute if score #rg_fast_circuit switch.data matches 1.. run schedule function switch:maps/survival/fast_circuit/regenerate 1t

