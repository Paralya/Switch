
#> switch:maps/survival/pitch_creep_1/regenerate
#
# @within	switch:maps/survival/pitch_creep_1/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitch_creep_1 switch.data 1
execute if score #rg_pitch_creep_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.pitch_creep_1 set value 2b
execute if score #rg_pitch_creep_1 switch.data matches 1 in minecraft:overworld run forceload add 3500 3500 3520 3540
execute if score #rg_pitch_creep_1 switch.data matches 1 in switch:game run forceload add 3500 3500 3520 3540
execute if score #rg_pitch_creep_1 switch.data matches 1 in minecraft:overworld run forceload add 3520 3500 3540 3540
execute if score #rg_pitch_creep_1 switch.data matches 1 in switch:game run forceload add 3520 3500 3540 3540

execute if score #rg_pitch_creep_1 switch.data matches 1 run scoreboard players set #rg_pitch_creep_1_y switch.data 100
execute if score #rg_pitch_creep_1 switch.data matches 1 run scoreboard players set #rg_pitch_creep_1_mod switch.data 0
execute if score #rg_pitch_creep_1 switch.data matches ..82 summon marker run function switch:maps/survival/pitch_creep_1/regeneration_on_marker

execute if score #rg_pitch_creep_1 switch.data matches 83.. in switch:game run kill @e[type=item,x=3520,y=100,z=3520,distance=..1000]
execute if score #rg_pitch_creep_1 switch.data matches 83.. run data remove storage switch:maps to_regenerate.pitch_creep_1

execute if score #rg_pitch_creep_1 switch.data matches 83.. in minecraft:overworld run forceload remove 3500 3500 3520 3540
execute if score #rg_pitch_creep_1 switch.data matches 83.. in switch:game run forceload remove 3500 3500 3520 3540
execute if score #rg_pitch_creep_1 switch.data matches 83.. in minecraft:overworld run forceload remove 3520 3500 3540 3540
execute if score #rg_pitch_creep_1 switch.data matches 83.. in switch:game run forceload remove 3520 3500 3540 3540

execute if score #rg_pitch_creep_1 switch.data matches 83.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Pitch Creep Wood","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_pitch_creep_1 switch.data matches 83.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Pitch Creep Wood` just regenerated!"}'
execute if score #rg_pitch_creep_1 switch.data matches 83.. run function switch:engine/log_message/apply

execute if score #rg_pitch_creep_1 switch.data matches 83.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pitch_creep_1"}
execute if score #rg_pitch_creep_1 switch.data matches 83.. run scoreboard players reset #rg_pitch_creep_1 switch.data
execute if score #rg_pitch_creep_1 switch.data matches 1.. run schedule function switch:maps/survival/pitch_creep_1/regenerate 1t

