
#> switch:maps/survival/area_51/regenerate
#
# @within	switch:maps/survival/area_51/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_area_51 switch.data 1
execute if score #rg_area_51 switch.data matches 1 run data modify storage switch:maps to_regenerate.area_51 set value 2b
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2000 2000 2018 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2000 2000 2018 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2018 2000 2036 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2018 2000 2036 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2036 2000 2054 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2036 2000 2054 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2054 2000 2072 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2054 2000 2072 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2072 2000 2090 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2072 2000 2090 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2090 2000 2108 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2090 2000 2108 2126

execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_y switch.data 100
execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_mod switch.data 0
execute if score #rg_area_51 switch.data matches ..564 summon marker run function switch:maps/survival/area_51/regeneration_on_marker

execute if score #rg_area_51 switch.data matches 565.. in switch:game run kill @e[type=item,x=2054,y=100,z=2063,distance=..1000]
execute if score #rg_area_51 switch.data matches 565.. run data remove storage switch:maps to_regenerate.area_51

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2000 2000 2018 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2000 2000 2018 2126

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2018 2000 2036 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2018 2000 2036 2126

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2036 2000 2054 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2036 2000 2054 2126

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2054 2000 2072 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2054 2000 2072 2126

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2072 2000 2090 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2072 2000 2090 2126

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 2090 2000 2108 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 2090 2000 2108 2126

execute if score #rg_area_51 switch.data matches 565.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"area_51","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_area_51 switch.data matches 565.. run data modify storage switch:main MessageToLog set value '{"text":"Map `area_51` just regenerated!"}'
execute if score #rg_area_51 switch.data matches 565.. run function switch:engine/log_message/apply

execute if score #rg_area_51 switch.data matches 565.. in switch:game run function switch:maps/regenerate_doors_macro {name:"area_51"}
execute if score #rg_area_51 switch.data matches 565.. run scoreboard players reset #rg_area_51 switch.data
execute if score #rg_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/regenerate 1t

