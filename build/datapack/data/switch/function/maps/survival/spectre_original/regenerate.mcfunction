
#> switch:maps/survival/spectre_original/regenerate
#
# @within	switch:maps/survival/spectre_original/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_spectre_original switch.data 1
execute if score #rg_spectre_original switch.data matches 1 run data modify storage switch:maps to_regenerate.spectre_original set value 2b
execute if score #rg_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2500 2500 2522 2595
execute if score #rg_spectre_original switch.data matches 1 in switch:game run forceload add 2500 2500 2522 2595
execute if score #rg_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2522 2500 2543 2595
execute if score #rg_spectre_original switch.data matches 1 in switch:game run forceload add 2522 2500 2543 2595
execute if score #rg_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2543 2500 2564 2595
execute if score #rg_spectre_original switch.data matches 1 in switch:game run forceload add 2543 2500 2564 2595
execute if score #rg_spectre_original switch.data matches 1 in minecraft:overworld run forceload add 2564 2500 2586 2595
execute if score #rg_spectre_original switch.data matches 1 in switch:game run forceload add 2564 2500 2586 2595

execute if score #rg_spectre_original switch.data matches 1 run scoreboard players set #rg_spectre_original_y switch.data 100
execute if score #rg_spectre_original switch.data matches 1 run scoreboard players set #rg_spectre_original_mod switch.data 0
execute if score #rg_spectre_original switch.data matches ..344 summon marker run function switch:maps/survival/spectre_original/regeneration_on_marker

execute if score #rg_spectre_original switch.data matches 345.. in switch:game run kill @e[type=item,x=2543,y=100,z=2547,distance=..1000]
execute if score #rg_spectre_original switch.data matches 345.. run data remove storage switch:maps to_regenerate.spectre_original

execute if score #rg_spectre_original switch.data matches 345.. in minecraft:overworld run forceload remove 2500 2500 2522 2595
execute if score #rg_spectre_original switch.data matches 345.. in switch:game run forceload remove 2500 2500 2522 2595

execute if score #rg_spectre_original switch.data matches 345.. in minecraft:overworld run forceload remove 2522 2500 2543 2595
execute if score #rg_spectre_original switch.data matches 345.. in switch:game run forceload remove 2522 2500 2543 2595

execute if score #rg_spectre_original switch.data matches 345.. in minecraft:overworld run forceload remove 2543 2500 2564 2595
execute if score #rg_spectre_original switch.data matches 345.. in switch:game run forceload remove 2543 2500 2564 2595

execute if score #rg_spectre_original switch.data matches 345.. in minecraft:overworld run forceload remove 2564 2500 2586 2595
execute if score #rg_spectre_original switch.data matches 345.. in switch:game run forceload remove 2564 2500 2586 2595

execute if score #rg_spectre_original switch.data matches 345.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"spectre_original","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_spectre_original switch.data matches 345.. run data modify storage switch:main MessageToLog set value '{"text":"Map `spectre_original` just regenerated!"}'
execute if score #rg_spectre_original switch.data matches 345.. run function switch:engine/log_message/apply

execute if score #rg_spectre_original switch.data matches 345.. in switch:game run function switch:maps/regenerate_doors_macro {name:"spectre_original"}
execute if score #rg_spectre_original switch.data matches 345.. run scoreboard players reset #rg_spectre_original switch.data
execute if score #rg_spectre_original switch.data matches 1.. run schedule function switch:maps/survival/spectre_original/regenerate 1t

