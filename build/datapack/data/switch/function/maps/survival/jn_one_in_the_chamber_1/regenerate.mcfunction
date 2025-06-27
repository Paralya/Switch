
#> switch:maps/survival/jn_one_in_the_chamber_1/regenerate
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_one_in_the_chamber_1 switch.data 1
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_one_in_the_chamber_1 set value 2b
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137000 137000 137020 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137000 137000 137020 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137020 137000 137039 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137020 137000 137039 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137039 137000 137058 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137039 137000 137058 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add 137058 137000 137078 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add 137058 137000 137078 137120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_1_y switch.data 100
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_1_mod switch.data 0
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches ..92 summon marker run function switch:maps/survival/jn_one_in_the_chamber_1/regeneration_on_marker

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run kill @e[type=item,x=137039,y=100,z=137060,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run data remove storage switch:maps to_regenerate.jn_one_in_the_chamber_1

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove 137000 137000 137020 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove 137000 137000 137020 137120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove 137020 137000 137039 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove 137020 137000 137039 137120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove 137039 137000 137058 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove 137039 137000 137058 137120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove 137058 137000 137078 137120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove 137058 137000 137078 137120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Multi-biomes Boxes 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Multi-biomes Boxes 1` just regenerated!"}'
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run function switch:engine/log_message/apply

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_one_in_the_chamber_1"}
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run scoreboard players reset #rg_jn_one_in_the_chamber_1 switch.data
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_1/regenerate 1t

