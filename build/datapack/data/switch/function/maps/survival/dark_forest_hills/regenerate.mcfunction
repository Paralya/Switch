
#> switch:maps/survival/dark_forest_hills/regenerate
#
# @within	switch:maps/survival/dark_forest_hills/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_dark_forest_hills switch.data 1
execute if score #rg_dark_forest_hills switch.data matches 1 run data modify storage switch:maps to_regenerate.dark_forest_hills set value 2b
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 0 6000 13 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 0 6000 13 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 13 6000 26 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 13 6000 26 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 26 6000 39 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 26 6000 39 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 39 6000 52 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 39 6000 52 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 52 6000 65 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 52 6000 65 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 65 6000 78 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 65 6000 78 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 78 6000 91 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 78 6000 91 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 91 6000 104 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 91 6000 104 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 104 6000 117 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 104 6000 117 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 117 6000 130 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 117 6000 130 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in minecraft:overworld run forceload add 130 6000 143 6221
execute if score #rg_dark_forest_hills switch.data matches 1 in switch:game run forceload add 130 6000 143 6221

execute if score #rg_dark_forest_hills switch.data matches 1 run scoreboard players set #rg_dark_forest_hills_y switch.data 100
execute if score #rg_dark_forest_hills switch.data matches 1 run scoreboard players set #rg_dark_forest_hills_mod switch.data 0
execute if score #rg_dark_forest_hills switch.data matches ..781 summon marker run function switch:maps/survival/dark_forest_hills/regeneration_on_marker

execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run kill @e[type=item,x=71,y=100,z=6110,distance=..1000]
execute if score #rg_dark_forest_hills switch.data matches 782.. run data remove storage switch:maps to_regenerate.dark_forest_hills

execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 0 6000 13 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 0 6000 13 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 13 6000 26 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 13 6000 26 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 26 6000 39 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 26 6000 39 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 39 6000 52 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 39 6000 52 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 52 6000 65 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 52 6000 65 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 65 6000 78 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 65 6000 78 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 78 6000 91 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 78 6000 91 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 91 6000 104 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 91 6000 104 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 104 6000 117 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 104 6000 117 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 117 6000 130 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 117 6000 130 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in minecraft:overworld run forceload remove 130 6000 143 6221
execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run forceload remove 130 6000 143 6221

execute if score #rg_dark_forest_hills switch.data matches 782.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Dark Forest Hills","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"39","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_dark_forest_hills switch.data matches 782.. run function switch:engine/log_message/apply {message:"Map `Dark Forest Hills` just regenerated!"}

execute if score #rg_dark_forest_hills switch.data matches 782.. in switch:game run function switch:maps/regenerate_doors_macro {name:"dark_forest_hills"}
execute if score #rg_dark_forest_hills switch.data matches 782.. run scoreboard players reset #rg_dark_forest_hills switch.data
execute if score #rg_dark_forest_hills switch.data matches 1.. run schedule function switch:maps/survival/dark_forest_hills/regenerate 1t

