
#> switch:maps/survival/traitor_original/regenerate
#
# @within	switch:maps/survival/traitor_original/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_traitor_original switch.data 1
execute if score #rg_traitor_original switch.data matches 1 run data modify storage switch:maps to_regenerate.traitor_original set value 2b
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1500 1500 1518 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1500 1500 1518 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1518 1500 1537 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1518 1500 1537 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1537 1500 1555 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1537 1500 1555 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1555 1500 1574 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1555 1500 1574 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1574 1500 1592 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1574 1500 1592 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1592 1500 1610 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1592 1500 1610 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1610 1500 1629 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1610 1500 1629 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1629 1500 1647 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1629 1500 1647 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1647 1500 1666 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1647 1500 1666 1655
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 1666 1500 1684 1655
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 1666 1500 1684 1655

execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_y switch.data 100
execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_mod switch.data 0
execute if score #rg_traitor_original switch.data matches ..900 summon marker run function switch:maps/survival/traitor_original/regeneration_on_marker

execute if score #rg_traitor_original switch.data matches 901.. in switch:game run kill @e[type=item,x=1592,y=100,z=1577,distance=..1000]
execute if score #rg_traitor_original switch.data matches 901.. run data remove storage switch:maps to_regenerate.traitor_original

execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1500 1500 1518 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1500 1500 1518 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1518 1500 1537 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1518 1500 1537 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1537 1500 1555 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1537 1500 1555 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1555 1500 1574 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1555 1500 1574 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1574 1500 1592 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1574 1500 1592 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1592 1500 1610 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1592 1500 1610 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1610 1500 1629 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1610 1500 1629 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1629 1500 1647 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1629 1500 1647 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1647 1500 1666 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1647 1500 1666 1655
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 1666 1500 1684 1655
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 1666 1500 1684 1655

execute if score #rg_traitor_original switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Traitor Original","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_traitor_original switch.data matches 901.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Traitor Original` just regenerated!"}'
execute if score #rg_traitor_original switch.data matches 901.. run function switch:engine/log_message/apply

execute if score #rg_traitor_original switch.data matches 901.. in switch:game run function switch:maps/regenerate_doors_macro {name:"traitor_original"}
execute if score #rg_traitor_original switch.data matches 901.. run scoreboard players reset #rg_traitor_original switch.data
execute if score #rg_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/regenerate 1t

