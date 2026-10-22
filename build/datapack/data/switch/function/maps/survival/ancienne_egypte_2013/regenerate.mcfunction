
#> switch:maps/survival/ancienne_egypte_2013/regenerate
#
# @within	switch:maps/survival/ancienne_egypte_2013/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ancienne_egypte_2013 switch.data 1
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 run data modify storage switch:maps to_regenerate.ancienne_egypte_2013 set value 2b
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 6000 10000 6019 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 6000 10000 6019 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 6019 10000 6038 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 6019 10000 6038 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 6038 10000 6057 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 6038 10000 6057 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 6057 10000 6076 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 6057 10000 6076 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in minecraft:overworld run forceload add 6076 10000 6095 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 in switch:game run forceload add 6076 10000 6095 10113

execute if score #rg_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #rg_ancienne_egypte_2013_y switch.data 100
execute if score #rg_ancienne_egypte_2013 switch.data matches 1 run scoreboard players set #rg_ancienne_egypte_2013_mod switch.data 0
execute if score #rg_ancienne_egypte_2013 switch.data matches ..385 summon marker run function switch:maps/survival/ancienne_egypte_2013/regeneration_on_marker

execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run kill @e[type=item,x=6047,y=100,z=10056,distance=..1000]
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. run data remove storage switch:maps to_regenerate.ancienne_egypte_2013

execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in minecraft:overworld run forceload remove 6000 10000 6019 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run forceload remove 6000 10000 6019 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in minecraft:overworld run forceload remove 6019 10000 6038 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run forceload remove 6019 10000 6038 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in minecraft:overworld run forceload remove 6038 10000 6057 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run forceload remove 6038 10000 6057 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in minecraft:overworld run forceload remove 6057 10000 6076 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run forceload remove 6057 10000 6076 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in minecraft:overworld run forceload remove 6076 10000 6095 10113
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. in switch:game run forceload remove 6076 10000 6095 10113

execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Ancienne Egypte 2013","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. run function switch:engine/log_message/apply {message:"Map `Ancienne Egypte 2013` just regenerated!"}

execute if score #rg_ancienne_egypte_2013 switch.data matches 386.. run scoreboard players reset #rg_ancienne_egypte_2013 switch.data
execute if score #rg_ancienne_egypte_2013 switch.data matches 1.. run schedule function switch:maps/survival/ancienne_egypte_2013/regenerate 1t

