
#> switch:maps/survival/cigogne/regenerate
#
# @within	switch:maps/survival/cigogne/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cigogne switch.data 1
execute if score #rg_cigogne switch.data matches 1 run data modify storage switch:maps to_regenerate.cigogne set value 2b
execute if score #rg_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126000 126000 126022 126108
execute if score #rg_cigogne switch.data matches 1 in switch:game run forceload add 126000 126000 126022 126108
execute if score #rg_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126022 126000 126043 126108
execute if score #rg_cigogne switch.data matches 1 in switch:game run forceload add 126022 126000 126043 126108
execute if score #rg_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126043 126000 126065 126108
execute if score #rg_cigogne switch.data matches 1 in switch:game run forceload add 126043 126000 126065 126108
execute if score #rg_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126065 126000 126086 126108
execute if score #rg_cigogne switch.data matches 1 in switch:game run forceload add 126065 126000 126086 126108
execute if score #rg_cigogne switch.data matches 1 in minecraft:overworld run forceload add 126086 126000 126108 126108
execute if score #rg_cigogne switch.data matches 1 in switch:game run forceload add 126086 126000 126108 126108

execute if score #rg_cigogne switch.data matches 1 run scoreboard players set #rg_cigogne_y switch.data 100
execute if score #rg_cigogne switch.data matches 1 run scoreboard players set #rg_cigogne_mod switch.data 0
execute if score #rg_cigogne switch.data matches ..240 summon marker run function switch:maps/survival/cigogne/regeneration_on_marker

execute if score #rg_cigogne switch.data matches 241.. in switch:game run kill @e[type=item,x=126054,y=100,z=126054,distance=..1000]
execute if score #rg_cigogne switch.data matches 241.. run data remove storage switch:maps to_regenerate.cigogne

execute if score #rg_cigogne switch.data matches 241.. in minecraft:overworld run forceload remove 126000 126000 126022 126108
execute if score #rg_cigogne switch.data matches 241.. in switch:game run forceload remove 126000 126000 126022 126108
execute if score #rg_cigogne switch.data matches 241.. in minecraft:overworld run forceload remove 126022 126000 126043 126108
execute if score #rg_cigogne switch.data matches 241.. in switch:game run forceload remove 126022 126000 126043 126108
execute if score #rg_cigogne switch.data matches 241.. in minecraft:overworld run forceload remove 126043 126000 126065 126108
execute if score #rg_cigogne switch.data matches 241.. in switch:game run forceload remove 126043 126000 126065 126108
execute if score #rg_cigogne switch.data matches 241.. in minecraft:overworld run forceload remove 126065 126000 126086 126108
execute if score #rg_cigogne switch.data matches 241.. in switch:game run forceload remove 126065 126000 126086 126108
execute if score #rg_cigogne switch.data matches 241.. in minecraft:overworld run forceload remove 126086 126000 126108 126108
execute if score #rg_cigogne switch.data matches 241.. in switch:game run forceload remove 126086 126000 126108 126108

execute if score #rg_cigogne switch.data matches 241.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cigogne","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cigogne switch.data matches 241.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cigogne` just regenerated!"}'
execute if score #rg_cigogne switch.data matches 241.. run function switch:engine/log_message/apply

execute if score #rg_cigogne switch.data matches 241.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cigogne"}
execute if score #rg_cigogne switch.data matches 241.. run scoreboard players reset #rg_cigogne switch.data
execute if score #rg_cigogne switch.data matches 1.. run schedule function switch:maps/survival/cigogne/regenerate 1t

