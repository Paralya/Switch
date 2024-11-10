
#> switch:maps/survival/sprucy_village/regenerate
#
# @within	switch:maps/survival/sprucy_village/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sprucy_village switch.data 1
execute if score #rg_sprucy_village switch.data matches 1 run data modify storage switch:maps to_regenerate.sprucy_village set value 2b
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78000 78000 78024 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78000 78000 78024 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78024 78000 78049 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78024 78000 78049 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78049 78000 78073 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78049 78000 78073 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78073 78000 78098 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78073 78000 78098 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78098 78000 78122 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78098 78000 78122 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78122 78000 78147 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78122 78000 78147 78112
execute if score #rg_sprucy_village switch.data matches 1 in minecraft:overworld run forceload add 78147 78000 78171 78112
execute if score #rg_sprucy_village switch.data matches 1 in switch:game run forceload add 78147 78000 78171 78112

execute if score #rg_sprucy_village switch.data matches 1 run scoreboard players set #rg_sprucy_village_y switch.data 0
execute if score #rg_sprucy_village switch.data matches 1 run scoreboard players set #rg_sprucy_village_mod switch.data 0
execute if score #rg_sprucy_village switch.data matches ..574 summon marker run function switch:maps/survival/sprucy_village/regeneration_on_marker

execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run kill @e[type=item,x=78085,y=0,z=78056,distance=..1000]
execute if score #rg_sprucy_village switch.data matches 575.. run data remove storage switch:maps to_regenerate.sprucy_village

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78000 78000 78024 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78000 78000 78024 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78024 78000 78049 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78024 78000 78049 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78049 78000 78073 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78049 78000 78073 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78073 78000 78098 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78073 78000 78098 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78098 78000 78122 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78098 78000 78122 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78122 78000 78147 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78122 78000 78147 78112

execute if score #rg_sprucy_village switch.data matches 575.. in minecraft:overworld run forceload remove 78147 78000 78171 78112
execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run forceload remove 78147 78000 78171 78112

execute if score #rg_sprucy_village switch.data matches 575.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sprucy_village","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sprucy_village switch.data matches 575.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sprucy_village` just regenerated!"}'
execute if score #rg_sprucy_village switch.data matches 575.. run function switch:engine/log_message/apply

execute if score #rg_sprucy_village switch.data matches 575.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sprucy_village"}
execute if score #rg_sprucy_village switch.data matches 575.. run scoreboard players reset #rg_sprucy_village switch.data
execute if score #rg_sprucy_village switch.data matches 1.. run schedule function switch:maps/survival/sprucy_village/regenerate 1t

