
#> switch:maps/survival/area_51/regenerate
#
# @within	switch:maps/survival/area_51/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_area_51 switch.data 1
execute if score #rg_area_51 switch.data matches 1 run data modify storage switch:maps to_regenerate.area_51 set value 2b
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 0 2000 18 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 0 2000 18 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 18 2000 36 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 18 2000 36 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 36 2000 54 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 36 2000 54 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 54 2000 72 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 54 2000 72 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 72 2000 90 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 72 2000 90 2126
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 90 2000 108 2126
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 90 2000 108 2126

execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_y switch.data 100
execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_mod switch.data 0
execute if score #rg_area_51 switch.data matches ..564 summon marker run function switch:maps/survival/area_51/regeneration_on_marker

execute if score #rg_area_51 switch.data matches 565.. in switch:game run kill @e[type=item,x=54,y=100,z=2063,distance=..1000]
execute if score #rg_area_51 switch.data matches 565.. run data remove storage switch:maps to_regenerate.area_51

execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 0 2000 18 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 0 2000 18 2126
execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 18 2000 36 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 18 2000 36 2126
execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 36 2000 54 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 36 2000 54 2126
execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 54 2000 72 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 54 2000 72 2126
execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 72 2000 90 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 72 2000 90 2126
execute if score #rg_area_51 switch.data matches 565.. in minecraft:overworld run forceload remove 90 2000 108 2126
execute if score #rg_area_51 switch.data matches 565.. in switch:game run forceload remove 90 2000 108 2126

execute if score #rg_area_51 switch.data matches 565.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Area 51","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_area_51 switch.data matches 565.. run function switch:engine/log_message/apply {message:"Map `Area 51` just regenerated!"}

execute if score #rg_area_51 switch.data matches 565.. in switch:game run function switch:maps/regenerate_doors_macro {name:"area_51"}
execute if score #rg_area_51 switch.data matches 565.. run scoreboard players reset #rg_area_51 switch.data
execute if score #rg_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/regenerate 1t

