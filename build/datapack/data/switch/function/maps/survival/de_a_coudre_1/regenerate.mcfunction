
#> switch:maps/survival/de_a_coudre_1/regenerate
#
# @within	switch:maps/survival/de_a_coudre_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_de_a_coudre_1 switch.data 1
execute if score #rg_de_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.de_a_coudre_1 set value 2b
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29000 29000 29028 29049
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29000 29000 29028 29049
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29028 29000 29055 29049
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29028 29000 29055 29049
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29055 29000 29083 29049
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29055 29000 29083 29049

execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_y switch.data 100
execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0
execute if score #rg_de_a_coudre_1 switch.data matches ..321 summon marker run function switch:maps/survival/de_a_coudre_1/regeneration_on_marker

execute if score #rg_de_a_coudre_1 switch.data matches 322.. in switch:game run kill @e[type=item,x=29041,y=100,z=29024,distance=..1000]
execute if score #rg_de_a_coudre_1 switch.data matches 322.. run data remove storage switch:maps to_regenerate.de_a_coudre_1

execute if score #rg_de_a_coudre_1 switch.data matches 322.. in minecraft:overworld run forceload remove 29000 29000 29028 29049
execute if score #rg_de_a_coudre_1 switch.data matches 322.. in switch:game run forceload remove 29000 29000 29028 29049

execute if score #rg_de_a_coudre_1 switch.data matches 322.. in minecraft:overworld run forceload remove 29028 29000 29055 29049
execute if score #rg_de_a_coudre_1 switch.data matches 322.. in switch:game run forceload remove 29028 29000 29055 29049

execute if score #rg_de_a_coudre_1 switch.data matches 322.. in minecraft:overworld run forceload remove 29055 29000 29083 29049
execute if score #rg_de_a_coudre_1 switch.data matches 322.. in switch:game run forceload remove 29055 29000 29083 29049

execute if score #rg_de_a_coudre_1 switch.data matches 322.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"de_a_coudre_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_de_a_coudre_1 switch.data matches 322.. run data modify storage switch:main MessageToLog set value '{"text":"Map `de_a_coudre_1` just regenerated!"}'
execute if score #rg_de_a_coudre_1 switch.data matches 322.. run function switch:engine/log_message/apply

execute if score #rg_de_a_coudre_1 switch.data matches 322.. in switch:game run function switch:maps/regenerate_doors_macro {name:"de_a_coudre_1"}
execute if score #rg_de_a_coudre_1 switch.data matches 322.. run scoreboard players reset #rg_de_a_coudre_1 switch.data
execute if score #rg_de_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/regenerate 1t

