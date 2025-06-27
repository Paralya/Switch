
#> switch:maps/survival/jn_one_in_the_chamber_2/regenerate
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_one_in_the_chamber_2 switch.data 1
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_one_in_the_chamber_2 set value 2b
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138000 138000 138023 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138000 138000 138023 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138023 138000 138047 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138023 138000 138047 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138047 138000 138070 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138047 138000 138070 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138070 138000 138093 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138070 138000 138093 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138093 138000 138117 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138093 138000 138117 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in minecraft:overworld run forceload add 138117 138000 138140 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 in switch:game run forceload add 138117 138000 138140 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_2_y switch.data 100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1 run scoreboard players set #rg_jn_one_in_the_chamber_2_mod switch.data 0
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches ..348 summon marker run function switch:maps/survival/jn_one_in_the_chamber_2/regeneration_on_marker

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run kill @e[type=item,x=138070,y=100,z=138050,distance=..1000]
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. run data remove storage switch:maps to_regenerate.jn_one_in_the_chamber_2

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138000 138000 138023 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138000 138000 138023 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138023 138000 138047 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138023 138000 138047 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138047 138000 138070 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138047 138000 138070 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138070 138000 138093 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138070 138000 138093 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138093 138000 138117 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138093 138000 138117 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in minecraft:overworld run forceload remove 138117 138000 138140 138100
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run forceload remove 138117 138000 138140 138100

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Multi-biomes Boxes 2","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Multi-biomes Boxes 2` just regenerated!"}'
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. run function switch:engine/log_message/apply

execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_one_in_the_chamber_2"}
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 349.. run scoreboard players reset #rg_jn_one_in_the_chamber_2 switch.data
execute if score #rg_jn_one_in_the_chamber_2 switch.data matches 1.. run schedule function switch:maps/survival/jn_one_in_the_chamber_2/regenerate 1t

