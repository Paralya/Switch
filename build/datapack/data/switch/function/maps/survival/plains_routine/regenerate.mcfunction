
#> switch:maps/survival/plains_routine/regenerate
#
# @within	switch:maps/survival/plains_routine/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_plains_routine switch.data 1
execute if score #rg_plains_routine switch.data matches 1 run data modify storage switch:maps to_regenerate.plains_routine set value 2b
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20126 19727 20141 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20126 19727 20141 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20141 19727 20157 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20141 19727 20157 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20157 19727 20172 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20157 19727 20172 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20172 19727 20187 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20172 19727 20187 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20187 19727 20202 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20187 19727 20202 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20202 19727 20218 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20202 19727 20218 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20218 19727 20233 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20218 19727 20233 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20233 19727 20248 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20233 19727 20248 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20248 19727 20263 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20248 19727 20263 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20263 19727 20279 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20263 19727 20279 19911
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 20279 19727 20294 19911
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 20279 19727 20294 19911

execute if score #rg_plains_routine switch.data matches 1 run scoreboard players set #rg_plains_routine_y switch.data 85
execute if score #rg_plains_routine switch.data matches 1 run scoreboard players set #rg_plains_routine_mod switch.data 0
execute if score #rg_plains_routine switch.data matches ..561 summon marker run function switch:maps/survival/plains_routine/regeneration_on_marker

execute if score #rg_plains_routine switch.data matches 562.. in switch:game run kill @e[type=item,x=20210,y=85,z=19819,distance=..1000]
execute if score #rg_plains_routine switch.data matches 562.. run data remove storage switch:maps to_regenerate.plains_routine

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20126 19727 20141 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20126 19727 20141 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20141 19727 20157 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20141 19727 20157 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20157 19727 20172 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20157 19727 20172 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20172 19727 20187 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20172 19727 20187 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20187 19727 20202 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20187 19727 20202 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20202 19727 20218 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20202 19727 20218 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20218 19727 20233 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20218 19727 20233 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20233 19727 20248 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20233 19727 20248 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20248 19727 20263 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20248 19727 20263 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20263 19727 20279 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20263 19727 20279 19911

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 20279 19727 20294 19911
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 20279 19727 20294 19911

execute if score #rg_plains_routine switch.data matches 562.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Plains Routine","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_plains_routine switch.data matches 562.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Plains Routine` just regenerated!"}'
execute if score #rg_plains_routine switch.data matches 562.. run function switch:engine/log_message/apply

execute if score #rg_plains_routine switch.data matches 562.. in switch:game run function switch:maps/regenerate_doors_macro {name:"plains_routine"}
execute if score #rg_plains_routine switch.data matches 562.. run scoreboard players reset #rg_plains_routine switch.data
execute if score #rg_plains_routine switch.data matches 1.. run schedule function switch:maps/survival/plains_routine/regenerate 1t

