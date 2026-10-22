
#> switch:maps/survival/dk_mountain/regenerate
#
# @within	switch:maps/survival/dk_mountain/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_dk_mountain switch.data 1
execute if score #rg_dk_mountain switch.data matches 1 run data modify storage switch:maps to_regenerate.dk_mountain set value 2b
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6213 -4891 6237 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6213 -4891 6237 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6237 -4891 6261 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6237 -4891 6261 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6261 -4891 6285 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6261 -4891 6285 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6285 -4891 6309 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6285 -4891 6309 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6309 -4891 6333 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6309 -4891 6333 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6333 -4891 6357 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6333 -4891 6357 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6357 -4891 6381 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6357 -4891 6381 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6381 -4891 6405 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6381 -4891 6405 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6405 -4891 6429 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6405 -4891 6429 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6429 -4891 6453 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6429 -4891 6453 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6453 -4891 6477 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6453 -4891 6477 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6477 -4891 6501 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6477 -4891 6501 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6501 -4891 6525 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6501 -4891 6525 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6525 -4891 6549 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6525 -4891 6549 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6549 -4891 6573 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6549 -4891 6573 -4773
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 6573 -4891 6597 -4773
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 6573 -4891 6597 -4773

execute if score #rg_dk_mountain switch.data matches 1 run scoreboard players set #rg_dk_mountain_y switch.data 70
execute if score #rg_dk_mountain switch.data matches 1 run scoreboard players set #rg_dk_mountain_mod switch.data 0
execute if score #rg_dk_mountain switch.data matches ..2288 summon marker run function switch:maps/survival/dk_mountain/regeneration_on_marker

execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run kill @e[type=item,x=6405,y=70,z=-4832,distance=..1000]
execute if score #rg_dk_mountain switch.data matches 2289.. run data remove storage switch:maps to_regenerate.dk_mountain

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6213 -4891 6237 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6213 -4891 6237 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6237 -4891 6261 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6237 -4891 6261 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6261 -4891 6285 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6261 -4891 6285 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6285 -4891 6309 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6285 -4891 6309 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6309 -4891 6333 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6309 -4891 6333 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6333 -4891 6357 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6333 -4891 6357 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6357 -4891 6381 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6357 -4891 6381 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6381 -4891 6405 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6381 -4891 6405 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6405 -4891 6429 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6405 -4891 6429 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6429 -4891 6453 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6429 -4891 6453 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6453 -4891 6477 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6453 -4891 6477 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6477 -4891 6501 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6477 -4891 6501 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6501 -4891 6525 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6501 -4891 6525 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6525 -4891 6549 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6525 -4891 6549 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6549 -4891 6573 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6549 -4891 6573 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 6573 -4891 6597 -4773
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 6573 -4891 6597 -4773

execute if score #rg_dk_mountain switch.data matches 2289.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"DK Mountain","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_dk_mountain switch.data matches 2289.. run function switch:engine/log_message/apply {message:"Map `DK Mountain` just regenerated!"}

execute if score #rg_dk_mountain switch.data matches 2289.. run scoreboard players reset #rg_dk_mountain switch.data
execute if score #rg_dk_mountain switch.data matches 1.. run schedule function switch:maps/survival/dk_mountain/regenerate 1t

