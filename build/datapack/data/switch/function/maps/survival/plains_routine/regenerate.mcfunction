
#> switch:maps/survival/plains_routine/regenerate
#
# @within	switch:maps/survival/plains_routine/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_plains_routine switch.data 1
execute if score #rg_plains_routine switch.data matches 1 run data modify storage switch:maps to_regenerate.plains_routine set value 2b
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6689 -5649 6704 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6689 -5649 6704 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6704 -5649 6720 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6704 -5649 6720 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6720 -5649 6735 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6720 -5649 6735 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6735 -5649 6750 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6735 -5649 6750 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6750 -5649 6765 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6750 -5649 6765 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6765 -5649 6781 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6765 -5649 6781 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6781 -5649 6796 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6781 -5649 6796 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6796 -5649 6811 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6796 -5649 6811 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6811 -5649 6826 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6811 -5649 6826 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6826 -5649 6842 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6826 -5649 6842 -5465
execute if score #rg_plains_routine switch.data matches 1 in minecraft:overworld run forceload add 6842 -5649 6857 -5465
execute if score #rg_plains_routine switch.data matches 1 in switch:game run forceload add 6842 -5649 6857 -5465

execute if score #rg_plains_routine switch.data matches 1 run scoreboard players set #rg_plains_routine_y switch.data 85
execute if score #rg_plains_routine switch.data matches 1 run scoreboard players set #rg_plains_routine_mod switch.data 0
execute if score #rg_plains_routine switch.data matches ..561 summon marker run function switch:maps/survival/plains_routine/regeneration_on_marker

execute if score #rg_plains_routine switch.data matches 562.. in switch:game run kill @e[type=item,x=6773,y=85,z=-5557,distance=..1000]
execute if score #rg_plains_routine switch.data matches 562.. run data remove storage switch:maps to_regenerate.plains_routine

execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6689 -5649 6704 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6689 -5649 6704 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6704 -5649 6720 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6704 -5649 6720 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6720 -5649 6735 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6720 -5649 6735 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6735 -5649 6750 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6735 -5649 6750 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6750 -5649 6765 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6750 -5649 6765 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6765 -5649 6781 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6765 -5649 6781 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6781 -5649 6796 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6781 -5649 6796 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6796 -5649 6811 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6796 -5649 6811 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6811 -5649 6826 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6811 -5649 6826 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6826 -5649 6842 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6826 -5649 6842 -5465
execute if score #rg_plains_routine switch.data matches 562.. in minecraft:overworld run forceload remove 6842 -5649 6857 -5465
execute if score #rg_plains_routine switch.data matches 562.. in switch:game run forceload remove 6842 -5649 6857 -5465

execute if score #rg_plains_routine switch.data matches 562.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Plains Routine","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_plains_routine switch.data matches 562.. run function switch:engine/log_message/apply {message:"Map `Plains Routine` just regenerated!"}

execute if score #rg_plains_routine switch.data matches 562.. run scoreboard players reset #rg_plains_routine switch.data
execute if score #rg_plains_routine switch.data matches 1.. run schedule function switch:maps/survival/plains_routine/regenerate 1t

