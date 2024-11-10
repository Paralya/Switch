
#> switch:maps/survival/enigma_lab_2/regenerate
#
# @within	switch:maps/survival/enigma_lab_2/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_enigma_lab_2 switch.data 1
execute if score #rg_enigma_lab_2 switch.data matches 1 run data modify storage switch:maps to_regenerate.enigma_lab_2 set value 2b
execute if score #rg_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73000 73000 73025 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73000 73000 73025 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73025 73000 73051 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73025 73000 73051 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 in minecraft:overworld run forceload add 73051 73000 73076 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 in switch:game run forceload add 73051 73000 73076 73083

execute if score #rg_enigma_lab_2 switch.data matches 1 run scoreboard players set #rg_enigma_lab_2_y switch.data 0
execute if score #rg_enigma_lab_2 switch.data matches 1 run scoreboard players set #rg_enigma_lab_2_mod switch.data 0
execute if score #rg_enigma_lab_2 switch.data matches ..90 summon marker run function switch:maps/survival/enigma_lab_2/regeneration_on_marker

execute if score #rg_enigma_lab_2 switch.data matches 91.. in switch:game run kill @e[type=item,x=73038,y=0,z=73041,distance=..1000]
execute if score #rg_enigma_lab_2 switch.data matches 91.. run data remove storage switch:maps to_regenerate.enigma_lab_2

execute if score #rg_enigma_lab_2 switch.data matches 91.. in minecraft:overworld run forceload remove 73000 73000 73025 73083
execute if score #rg_enigma_lab_2 switch.data matches 91.. in switch:game run forceload remove 73000 73000 73025 73083

execute if score #rg_enigma_lab_2 switch.data matches 91.. in minecraft:overworld run forceload remove 73025 73000 73051 73083
execute if score #rg_enigma_lab_2 switch.data matches 91.. in switch:game run forceload remove 73025 73000 73051 73083

execute if score #rg_enigma_lab_2 switch.data matches 91.. in minecraft:overworld run forceload remove 73051 73000 73076 73083
execute if score #rg_enigma_lab_2 switch.data matches 91.. in switch:game run forceload remove 73051 73000 73076 73083

execute if score #rg_enigma_lab_2 switch.data matches 91.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"enigma_lab_2","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_enigma_lab_2 switch.data matches 91.. run data modify storage switch:main MessageToLog set value '{"text":"Map `enigma_lab_2` just regenerated!"}'
execute if score #rg_enigma_lab_2 switch.data matches 91.. run function switch:engine/log_message/apply

execute if score #rg_enigma_lab_2 switch.data matches 91.. in switch:game run function switch:maps/regenerate_doors_macro {name:"enigma_lab_2"}
execute if score #rg_enigma_lab_2 switch.data matches 91.. run scoreboard players reset #rg_enigma_lab_2 switch.data
execute if score #rg_enigma_lab_2 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_2/regenerate 1t

