
#> switch:maps/survival/sheepwars_bonbons/regenerate
#
# @within	switch:maps/survival/sheepwars_bonbons/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_bonbons switch.data 1
execute if score #rg_sheepwars_bonbons switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_bonbons set value 2b
execute if score #rg_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143000 143000 143021 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143000 143000 143021 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143021 143000 143042 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143021 143000 143042 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143042 143000 143062 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143042 143000 143062 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in minecraft:overworld run forceload add 143062 143000 143083 143114
execute if score #rg_sheepwars_bonbons switch.data matches 1 in switch:game run forceload add 143062 143000 143083 143114

execute if score #rg_sheepwars_bonbons switch.data matches 1 run scoreboard players set #rg_sheepwars_bonbons_y switch.data 100
execute if score #rg_sheepwars_bonbons switch.data matches 1 run scoreboard players set #rg_sheepwars_bonbons_mod switch.data 0
execute if score #rg_sheepwars_bonbons switch.data matches ..336 summon marker run function switch:maps/survival/sheepwars_bonbons/regeneration_on_marker

execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run kill @e[type=item,x=143041,y=100,z=143057,distance=..1000]
execute if score #rg_sheepwars_bonbons switch.data matches 337.. run data remove storage switch:maps to_regenerate.sheepwars_bonbons

execute if score #rg_sheepwars_bonbons switch.data matches 337.. in minecraft:overworld run forceload remove 143000 143000 143021 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run forceload remove 143000 143000 143021 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in minecraft:overworld run forceload remove 143021 143000 143042 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run forceload remove 143021 143000 143042 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in minecraft:overworld run forceload remove 143042 143000 143062 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run forceload remove 143042 143000 143062 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in minecraft:overworld run forceload remove 143062 143000 143083 143114
execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run forceload remove 143062 143000 143083 143114

execute if score #rg_sheepwars_bonbons switch.data matches 337.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sheepwars Bonbons","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_bonbons switch.data matches 337.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Sheepwars Bonbons` just regenerated!"}'
execute if score #rg_sheepwars_bonbons switch.data matches 337.. run function switch:engine/log_message/apply

execute if score #rg_sheepwars_bonbons switch.data matches 337.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sheepwars_bonbons"}
execute if score #rg_sheepwars_bonbons switch.data matches 337.. run scoreboard players reset #rg_sheepwars_bonbons switch.data
execute if score #rg_sheepwars_bonbons switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_bonbons/regenerate 1t

