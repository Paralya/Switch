
#> switch:maps/survival/jn_one_in_the_chamber_1/regenerate
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_one_in_the_chamber_1 switch.data 1
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_one_in_the_chamber_1 set value 2b
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add -10000 10000 -9980 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add -10000 10000 -9980 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add -9980 10000 -9961 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add -9980 10000 -9961 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add -9961 10000 -9942 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add -9961 10000 -9942 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in minecraft:overworld run forceload add -9942 10000 -9922 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 in switch:game run forceload add -9942 10000 -9922 10120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_1_y switch.data 100
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_1_mod switch.data 0
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches ..92 summon marker run function switch:maps/survival/jn_one_in_the_chamber_1/regeneration_on_marker

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run kill @e[type=item,x=-9961,y=100,z=10060,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run data remove storage switch:maps to_regenerate.jn_one_in_the_chamber_1

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove -10000 10000 -9980 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove -10000 10000 -9980 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove -9980 10000 -9961 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove -9980 10000 -9961 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove -9961 10000 -9942 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove -9961 10000 -9942 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in minecraft:overworld run forceload remove -9942 10000 -9922 10120
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. in switch:game run forceload remove -9942 10000 -9922 10120

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Multi-biomes Boxes 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run function switch:engine/log_message/apply {message:"Map `Multi-biomes Boxes 1` just regenerated!"}

execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 93.. run scoreboard players reset #rg_jn_one_in_the_chamber_1 switch.data
execute if score #rg_jn_one_in_the_chamber_1 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_1/regenerate 1t

