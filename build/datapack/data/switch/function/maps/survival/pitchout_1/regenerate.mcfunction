
#> switch:maps/survival/pitchout_1/regenerate
#
# @within	switch:maps/survival/pitchout_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitchout_1 switch.data 1
execute if score #rg_pitchout_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.pitchout_1 set value 2b
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1000 1000 1020 1100
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1000 1000 1020 1100
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1020 1000 1040 1100
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1020 1000 1040 1100
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1040 1000 1060 1100
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1040 1000 1060 1100
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1060 1000 1080 1100
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1060 1000 1080 1100
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1080 1000 1100 1100
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1080 1000 1100 1100

execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_y switch.data 100
execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_mod switch.data 0
execute if score #rg_pitchout_1 switch.data matches ..225 summon marker run function switch:maps/survival/pitchout_1/regeneration_on_marker

execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run kill @e[type=item,x=1050,y=100,z=1050,distance=..1000]
execute if score #rg_pitchout_1 switch.data matches 226.. run data remove storage switch:maps to_regenerate.pitchout_1

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1000 1000 1020 1100
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1000 1000 1020 1100

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1020 1000 1040 1100
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1020 1000 1040 1100

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1040 1000 1060 1100
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1040 1000 1060 1100

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1060 1000 1080 1100
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1060 1000 1080 1100

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1080 1000 1100 1100
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1080 1000 1100 1100

execute if score #rg_pitchout_1 switch.data matches 226.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Wet Wood Dome","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_pitchout_1 switch.data matches 226.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Wet Wood Dome` just regenerated!"}'
execute if score #rg_pitchout_1 switch.data matches 226.. run function switch:engine/log_message/apply

execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pitchout_1"}
execute if score #rg_pitchout_1 switch.data matches 226.. run scoreboard players reset #rg_pitchout_1 switch.data
execute if score #rg_pitchout_1 switch.data matches 1.. run schedule function switch:maps/survival/pitchout_1/regenerate 1t

