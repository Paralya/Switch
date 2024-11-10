
#> switch:maps/survival/pitchout_1/regenerate
#
# @within	switch:maps/survival/pitchout_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitchout_1 switch.data 1
execute if score #rg_pitchout_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.pitchout_1 set value 2b
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 950 950 970 1050
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 950 950 970 1050
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 970 950 990 1050
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 970 950 990 1050
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 990 950 1010 1050
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 990 950 1010 1050
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1010 950 1030 1050
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1010 950 1030 1050
execute if score #rg_pitchout_1 switch.data matches 1 in minecraft:overworld run forceload add 1030 950 1050 1050
execute if score #rg_pitchout_1 switch.data matches 1 in switch:game run forceload add 1030 950 1050 1050

execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_y switch.data 0
execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_mod switch.data 0
execute if score #rg_pitchout_1 switch.data matches ..225 summon marker run function switch:maps/survival/pitchout_1/regeneration_on_marker

execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run kill @e[type=item,x=1000,y=0,z=1000,distance=..1000]
execute if score #rg_pitchout_1 switch.data matches 226.. run data remove storage switch:maps to_regenerate.pitchout_1

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 950 950 970 1050
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 950 950 970 1050

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 970 950 990 1050
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 970 950 990 1050

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 990 950 1010 1050
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 990 950 1010 1050

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1010 950 1030 1050
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1010 950 1030 1050

execute if score #rg_pitchout_1 switch.data matches 226.. in minecraft:overworld run forceload remove 1030 950 1050 1050
execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run forceload remove 1030 950 1050 1050

execute if score #rg_pitchout_1 switch.data matches 226.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"pitchout_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_pitchout_1 switch.data matches 226.. run data modify storage switch:main MessageToLog set value '{"text":"Map `pitchout_1` just regenerated!"}'
execute if score #rg_pitchout_1 switch.data matches 226.. run function switch:engine/log_message/apply

execute if score #rg_pitchout_1 switch.data matches 226.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pitchout_1"}
execute if score #rg_pitchout_1 switch.data matches 226.. run scoreboard players reset #rg_pitchout_1 switch.data
execute if score #rg_pitchout_1 switch.data matches 1.. run schedule function switch:maps/survival/pitchout_1/regenerate 1t

