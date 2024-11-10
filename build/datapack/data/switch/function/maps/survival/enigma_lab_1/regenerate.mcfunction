
#> switch:maps/survival/enigma_lab_1/regenerate
#
# @within	switch:maps/survival/enigma_lab_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_enigma_lab_1 switch.data 1
execute if score #rg_enigma_lab_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.enigma_lab_1 set value 2b
execute if score #rg_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53977 53994 53987 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53977 53994 53987 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53987 53994 53998 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53987 53994 53998 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 in minecraft:overworld run forceload add 53998 53994 54008 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 in switch:game run forceload add 53998 53994 54008 54100

execute if score #rg_enigma_lab_1 switch.data matches 1 run scoreboard players set #rg_enigma_lab_1_y switch.data 0
execute if score #rg_enigma_lab_1 switch.data matches 1 run scoreboard players set #rg_enigma_lab_1_mod switch.data 0
execute if score #rg_enigma_lab_1 switch.data matches ..123 summon marker run function switch:maps/survival/enigma_lab_1/regeneration_on_marker

execute if score #rg_enigma_lab_1 switch.data matches 124.. in switch:game run kill @e[type=item,x=53992,y=0,z=54047,distance=..1000]
execute if score #rg_enigma_lab_1 switch.data matches 124.. run data remove storage switch:maps to_regenerate.enigma_lab_1

execute if score #rg_enigma_lab_1 switch.data matches 124.. in minecraft:overworld run forceload remove 53977 53994 53987 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. in switch:game run forceload remove 53977 53994 53987 54100

execute if score #rg_enigma_lab_1 switch.data matches 124.. in minecraft:overworld run forceload remove 53987 53994 53998 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. in switch:game run forceload remove 53987 53994 53998 54100

execute if score #rg_enigma_lab_1 switch.data matches 124.. in minecraft:overworld run forceload remove 53998 53994 54008 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. in switch:game run forceload remove 53998 53994 54008 54100

execute if score #rg_enigma_lab_1 switch.data matches 124.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"enigma_lab_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_enigma_lab_1 switch.data matches 124.. run data modify storage switch:main MessageToLog set value '{"text":"Map `enigma_lab_1` just regenerated!"}'
execute if score #rg_enigma_lab_1 switch.data matches 124.. run function switch:engine/log_message/apply

execute if score #rg_enigma_lab_1 switch.data matches 124.. in switch:game run function switch:maps/regenerate_doors_macro {name:"enigma_lab_1"}
execute if score #rg_enigma_lab_1 switch.data matches 124.. run scoreboard players reset #rg_enigma_lab_1 switch.data
execute if score #rg_enigma_lab_1 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_1/regenerate 1t

