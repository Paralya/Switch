
#> switch:maps/survival/pitch_creep_nether/regenerate
#
# @within	switch:maps/survival/pitch_creep_nether/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitch_creep_nether switch.data 1
execute if score #rg_pitch_creep_nether switch.data matches 1 run data modify storage switch:maps to_regenerate.pitch_creep_nether set value 2b
execute if score #rg_pitch_creep_nether switch.data matches 1 in minecraft:overworld run forceload add 120000 120000 120018 120020
execute if score #rg_pitch_creep_nether switch.data matches 1 in switch:game run forceload add 120000 120000 120018 120020
execute if score #rg_pitch_creep_nether switch.data matches 1 in minecraft:overworld run forceload add 120018 120000 120037 120020
execute if score #rg_pitch_creep_nether switch.data matches 1 in switch:game run forceload add 120018 120000 120037 120020

execute if score #rg_pitch_creep_nether switch.data matches 1 run scoreboard players set #rg_pitch_creep_nether_y switch.data 0
execute if score #rg_pitch_creep_nether switch.data matches 1 run scoreboard players set #rg_pitch_creep_nether_mod switch.data 0
execute if score #rg_pitch_creep_nether switch.data matches ..34 summon marker run function switch:maps/survival/pitch_creep_nether/regeneration_on_marker

execute if score #rg_pitch_creep_nether switch.data matches 35.. in switch:game run kill @e[type=item,x=120018,y=0,z=120010,distance=..1000]
execute if score #rg_pitch_creep_nether switch.data matches 35.. run data remove storage switch:maps to_regenerate.pitch_creep_nether

execute if score #rg_pitch_creep_nether switch.data matches 35.. in minecraft:overworld run forceload remove 120000 120000 120018 120020
execute if score #rg_pitch_creep_nether switch.data matches 35.. in switch:game run forceload remove 120000 120000 120018 120020

execute if score #rg_pitch_creep_nether switch.data matches 35.. in minecraft:overworld run forceload remove 120018 120000 120037 120020
execute if score #rg_pitch_creep_nether switch.data matches 35.. in switch:game run forceload remove 120018 120000 120037 120020

execute if score #rg_pitch_creep_nether switch.data matches 35.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"pitch_creep_nether","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_pitch_creep_nether switch.data matches 35.. run data modify storage switch:main MessageToLog set value '{"text":"Map `pitch_creep_nether` just regenerated!"}'
execute if score #rg_pitch_creep_nether switch.data matches 35.. run function switch:engine/log_message/apply

execute if score #rg_pitch_creep_nether switch.data matches 35.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pitch_creep_nether"}
execute if score #rg_pitch_creep_nether switch.data matches 35.. run scoreboard players reset #rg_pitch_creep_nether switch.data
execute if score #rg_pitch_creep_nether switch.data matches 1.. run schedule function switch:maps/survival/pitch_creep_nether/regenerate 1t

