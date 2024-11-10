
#> switch:maps/survival/traitor_original/regenerate
#
# @within	switch:maps/survival/traitor_original/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_traitor_original switch.data 1
execute if score #rg_traitor_original switch.data matches 1 run data modify storage switch:maps to_regenerate.traitor_original set value 2b
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1408 1423 1426 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1408 1423 1426 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1426 1423 1445 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1426 1423 1445 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1445 1423 1463 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1445 1423 1463 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1463 1423 1482 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1463 1423 1482 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1482 1423 1500 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1482 1423 1500 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1500 1423 1518 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1500 1423 1518 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1518 1423 1537 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1518 1423 1537 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1537 1423 1555 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1537 1423 1555 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1555 1423 1574 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1555 1423 1574 1578
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1574 1423 1592 1578
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1574 1423 1592 1578

execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_y switch.data 0
execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_mod switch.data 0
execute if score #rg_traitor_original switch.data matches ..640 summon marker run function switch:maps/survival/traitor_original/regeneration_on_marker

execute if score #rg_traitor_original switch.data matches 641.. in switch:game run kill @e[type=item,x=1500,y=0,z=1500,distance=..1000]
execute if score #rg_traitor_original switch.data matches 641.. run data remove storage switch:maps to_regenerate.traitor_original

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1408 1423 1426 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1408 1423 1426 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1426 1423 1445 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1426 1423 1445 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1445 1423 1463 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1445 1423 1463 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1463 1423 1482 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1463 1423 1482 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1482 1423 1500 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1482 1423 1500 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1500 1423 1518 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1500 1423 1518 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1518 1423 1537 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1518 1423 1537 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1537 1423 1555 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1537 1423 1555 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1555 1423 1574 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1555 1423 1574 1578

execute if score #rg_traitor_original switch.data matches 641.. in minecraft:overworld run forceload remove 1574 1423 1592 1578
execute if score #rg_traitor_original switch.data matches 641.. in switch:game run forceload remove 1574 1423 1592 1578

execute if score #rg_traitor_original switch.data matches 641.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"traitor_original","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"32","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_traitor_original switch.data matches 641.. run data modify storage switch:main MessageToLog set value '{"text":"Map `traitor_original` just regenerated!"}'
execute if score #rg_traitor_original switch.data matches 641.. run function switch:engine/log_message/apply

execute if score #rg_traitor_original switch.data matches 641.. in switch:game run function switch:maps/regenerate_doors_macro {name:"traitor_original"}
execute if score #rg_traitor_original switch.data matches 641.. run scoreboard players reset #rg_traitor_original switch.data
execute if score #rg_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/regenerate 1t

