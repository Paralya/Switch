
#> switch:maps/survival/fast_circuit/regenerate
#
# @within	switch:maps/survival/fast_circuit/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fast_circuit switch.data 1
execute if score #rg_fast_circuit switch.data matches 1 run data modify storage switch:maps to_regenerate.fast_circuit set value 2b
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20153 19522 20168 19650
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 20153 19522 20168 19650
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20168 19522 20184 19650
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 20168 19522 20184 19650
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20184 19522 20199 19650
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 20184 19522 20199 19650
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20199 19522 20215 19650
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 20199 19522 20215 19650
execute if score #rg_fast_circuit switch.data matches 1 in minecraft:overworld run forceload add 20215 19522 20230 19650
execute if score #rg_fast_circuit switch.data matches 1 in switch:game run forceload add 20215 19522 20230 19650

execute if score #rg_fast_circuit switch.data matches 1 run scoreboard players set #rg_fast_circuit_y switch.data 85
execute if score #rg_fast_circuit switch.data matches 1 run scoreboard players set #rg_fast_circuit_mod switch.data 0
execute if score #rg_fast_circuit switch.data matches ..175 summon marker run function switch:maps/survival/fast_circuit/regeneration_on_marker

execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run kill @e[type=item,x=20191,y=85,z=19586,distance=..1000]
execute if score #rg_fast_circuit switch.data matches 176.. run data remove storage switch:maps to_regenerate.fast_circuit

execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 20153 19522 20168 19650
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 20153 19522 20168 19650
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 20168 19522 20184 19650
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 20168 19522 20184 19650
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 20184 19522 20199 19650
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 20184 19522 20199 19650
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 20199 19522 20215 19650
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 20199 19522 20215 19650
execute if score #rg_fast_circuit switch.data matches 176.. in minecraft:overworld run forceload remove 20215 19522 20230 19650
execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run forceload remove 20215 19522 20230 19650

execute if score #rg_fast_circuit switch.data matches 176.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fast Circuit","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_fast_circuit switch.data matches 176.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Fast Circuit` just regenerated!"}'
execute if score #rg_fast_circuit switch.data matches 176.. run function switch:engine/log_message/apply

execute if score #rg_fast_circuit switch.data matches 176.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fast_circuit"}
execute if score #rg_fast_circuit switch.data matches 176.. run scoreboard players reset #rg_fast_circuit switch.data
execute if score #rg_fast_circuit switch.data matches 1.. run schedule function switch:maps/survival/fast_circuit/regenerate 1t

