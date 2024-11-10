
#> switch:maps/survival/snk_tower/regenerate
#
# @within	switch:maps/survival/snk_tower/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snk_tower switch.data 1
execute if score #rg_snk_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.snk_tower set value 2b
execute if score #rg_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61000 61000 61028 61049
execute if score #rg_snk_tower switch.data matches 1 in switch:game run forceload add 61000 61000 61028 61049
execute if score #rg_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61028 61000 61056 61049
execute if score #rg_snk_tower switch.data matches 1 in switch:game run forceload add 61028 61000 61056 61049
execute if score #rg_snk_tower switch.data matches 1 in minecraft:overworld run forceload add 61056 61000 61084 61049
execute if score #rg_snk_tower switch.data matches 1 in switch:game run forceload add 61056 61000 61084 61049

execute if score #rg_snk_tower switch.data matches 1 run scoreboard players set #rg_snk_tower_y switch.data 0
execute if score #rg_snk_tower switch.data matches 1 run scoreboard players set #rg_snk_tower_mod switch.data 0
execute if score #rg_snk_tower switch.data matches ..267 summon marker run function switch:maps/survival/snk_tower/regeneration_on_marker

execute if score #rg_snk_tower switch.data matches 268.. in switch:game run kill @e[type=item,x=61042,y=0,z=61024,distance=..1000]
execute if score #rg_snk_tower switch.data matches 268.. run data remove storage switch:maps to_regenerate.snk_tower

execute if score #rg_snk_tower switch.data matches 268.. in minecraft:overworld run forceload remove 61000 61000 61028 61049
execute if score #rg_snk_tower switch.data matches 268.. in switch:game run forceload remove 61000 61000 61028 61049

execute if score #rg_snk_tower switch.data matches 268.. in minecraft:overworld run forceload remove 61028 61000 61056 61049
execute if score #rg_snk_tower switch.data matches 268.. in switch:game run forceload remove 61028 61000 61056 61049

execute if score #rg_snk_tower switch.data matches 268.. in minecraft:overworld run forceload remove 61056 61000 61084 61049
execute if score #rg_snk_tower switch.data matches 268.. in switch:game run forceload remove 61056 61000 61084 61049

execute if score #rg_snk_tower switch.data matches 268.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"snk_tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_snk_tower switch.data matches 268.. run data modify storage switch:main MessageToLog set value '{"text":"Map `snk_tower` just regenerated!"}'
execute if score #rg_snk_tower switch.data matches 268.. run function switch:engine/log_message/apply

execute if score #rg_snk_tower switch.data matches 268.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snk_tower"}
execute if score #rg_snk_tower switch.data matches 268.. run scoreboard players reset #rg_snk_tower switch.data
execute if score #rg_snk_tower switch.data matches 1.. run schedule function switch:maps/survival/snk_tower/regenerate 1t

