
#> switch:maps/survival/end_factory/regenerate
#
# @within	switch:maps/survival/end_factory/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_end_factory switch.data 1
execute if score #rg_end_factory switch.data matches 1 run data modify storage switch:maps to_regenerate.end_factory set value 2b
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108000 108000 108020 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108000 108000 108020 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108020 108000 108040 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108020 108000 108040 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108040 108000 108059 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108040 108000 108059 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108059 108000 108079 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108059 108000 108079 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108079 108000 108099 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108079 108000 108099 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108099 108000 108119 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108099 108000 108119 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108119 108000 108138 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108119 108000 108138 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108138 108000 108158 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108138 108000 108158 108129
execute if score #rg_end_factory switch.data matches 1 in minecraft:overworld run forceload add 108158 108000 108178 108129
execute if score #rg_end_factory switch.data matches 1 in switch:game run forceload add 108158 108000 108178 108129

execute if score #rg_end_factory switch.data matches 1 run scoreboard players set #rg_end_factory_y switch.data -63
execute if score #rg_end_factory switch.data matches 1 run scoreboard players set #rg_end_factory_mod switch.data 0
execute if score #rg_end_factory switch.data matches ..936 summon marker run function switch:maps/survival/end_factory/regeneration_on_marker

execute if score #rg_end_factory switch.data matches 937.. in switch:game run kill @e[type=item,x=108089,y=-63,z=108064,distance=..1000]
execute if score #rg_end_factory switch.data matches 937.. run data remove storage switch:maps to_regenerate.end_factory

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108000 108000 108020 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108000 108000 108020 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108020 108000 108040 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108020 108000 108040 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108040 108000 108059 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108040 108000 108059 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108059 108000 108079 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108059 108000 108079 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108079 108000 108099 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108079 108000 108099 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108099 108000 108119 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108099 108000 108119 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108119 108000 108138 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108119 108000 108138 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108138 108000 108158 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108138 108000 108158 108129

execute if score #rg_end_factory switch.data matches 937.. in minecraft:overworld run forceload remove 108158 108000 108178 108129
execute if score #rg_end_factory switch.data matches 937.. in switch:game run forceload remove 108158 108000 108178 108129

execute if score #rg_end_factory switch.data matches 937.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"end_factory","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"46","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_end_factory switch.data matches 937.. run data modify storage switch:main MessageToLog set value '{"text":"Map `end_factory` just regenerated!"}'
execute if score #rg_end_factory switch.data matches 937.. run function switch:engine/log_message/apply

execute if score #rg_end_factory switch.data matches 937.. in switch:game run function switch:maps/regenerate_doors_macro {name:"end_factory"}
execute if score #rg_end_factory switch.data matches 937.. run scoreboard players reset #rg_end_factory switch.data
execute if score #rg_end_factory switch.data matches 1.. run schedule function switch:maps/survival/end_factory/regenerate 1t

