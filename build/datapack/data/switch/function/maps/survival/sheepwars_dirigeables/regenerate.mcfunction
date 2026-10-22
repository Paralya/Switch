
#> switch:maps/survival/sheepwars_dirigeables/regenerate
#
# @within	switch:maps/survival/sheepwars_dirigeables/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_dirigeables switch.data 1
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_dirigeables set value 2b
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -10000 -8000 -9979 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -10000 -8000 -9979 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9979 -8000 -9957 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9979 -8000 -9957 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9957 -8000 -9936 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9957 -8000 -9936 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9936 -8000 -9914 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9936 -8000 -9914 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add -9914 -8000 -9893 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add -9914 -8000 -9893 -7897

execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_y switch.data 100
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0
execute if score #rg_sheepwars_dirigeables switch.data matches ..445 summon marker run function switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run kill @e[type=item,x=-9946,y=100,z=-7948,distance=..1000]
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run data remove storage switch:maps to_regenerate.sheepwars_dirigeables

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove -10000 -8000 -9979 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove -10000 -8000 -9979 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove -9979 -8000 -9957 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove -9979 -8000 -9957 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove -9957 -8000 -9936 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove -9957 -8000 -9936 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove -9936 -8000 -9914 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove -9936 -8000 -9914 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove -9914 -8000 -9893 -7897
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove -9914 -8000 -9893 -7897

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sheepwars Dirigeables","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run function switch:engine/log_message/apply {message:"Map `Sheepwars Dirigeables` just regenerated!"}

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run scoreboard players reset #rg_sheepwars_dirigeables switch.data
execute if score #rg_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/regenerate 1t

