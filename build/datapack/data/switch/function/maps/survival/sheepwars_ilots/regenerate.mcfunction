
#> switch:maps/survival/sheepwars_ilots/regenerate
#
# @within	switch:maps/survival/sheepwars_ilots/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_ilots switch.data 1
execute if score #rg_sheepwars_ilots switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_ilots set value 2b
execute if score #rg_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -12000 -2000 -11982 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -12000 -2000 -11982 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11982 -2000 -11963 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11982 -2000 -11963 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11963 -2000 -11945 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11963 -2000 -11945 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11945 -2000 -11926 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11945 -2000 -11926 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in minecraft:overworld run forceload add -11926 -2000 -11908 -1878
execute if score #rg_sheepwars_ilots switch.data matches 1 in switch:game run forceload add -11926 -2000 -11908 -1878

execute if score #rg_sheepwars_ilots switch.data matches 1 run scoreboard players set #rg_sheepwars_ilots_y switch.data 100
execute if score #rg_sheepwars_ilots switch.data matches 1 run scoreboard players set #rg_sheepwars_ilots_mod switch.data 0
execute if score #rg_sheepwars_ilots switch.data matches ..470 summon marker run function switch:maps/survival/sheepwars_ilots/regeneration_on_marker

execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run kill @e[type=item,x=-11954,y=100,z=-1939,distance=..1000]
execute if score #rg_sheepwars_ilots switch.data matches 471.. run data remove storage switch:maps to_regenerate.sheepwars_ilots

execute if score #rg_sheepwars_ilots switch.data matches 471.. in minecraft:overworld run forceload remove -12000 -2000 -11982 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run forceload remove -12000 -2000 -11982 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in minecraft:overworld run forceload remove -11982 -2000 -11963 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run forceload remove -11982 -2000 -11963 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in minecraft:overworld run forceload remove -11963 -2000 -11945 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run forceload remove -11963 -2000 -11945 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in minecraft:overworld run forceload remove -11945 -2000 -11926 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run forceload remove -11945 -2000 -11926 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in minecraft:overworld run forceload remove -11926 -2000 -11908 -1878
execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run forceload remove -11926 -2000 -11908 -1878

execute if score #rg_sheepwars_ilots switch.data matches 471.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sheepwars Ilots","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_ilots switch.data matches 471.. run function switch:engine/log_message/apply {message:"Map `Sheepwars Ilots` just regenerated!"}

execute if score #rg_sheepwars_ilots switch.data matches 471.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sheepwars_ilots"}
execute if score #rg_sheepwars_ilots switch.data matches 471.. run scoreboard players reset #rg_sheepwars_ilots switch.data
execute if score #rg_sheepwars_ilots switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_ilots/regenerate 1t

