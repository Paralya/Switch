
#> switch:maps/survival/sheepwars_dirigeables/regenerate
#
# @within	switch:maps/survival/sheepwars_dirigeables/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_dirigeables switch.data 1
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_dirigeables set value 2b
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100028 100000 100049 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100028 100000 100049 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100049 100000 100071 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100049 100000 100071 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100071 100000 100092 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100071 100000 100092 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100092 100000 100114 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100092 100000 100114 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in minecraft:overworld run forceload add 100114 100000 100135 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 in switch:game run forceload add 100114 100000 100135 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_y switch.data -63
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0
execute if score #rg_sheepwars_dirigeables switch.data matches ..445 summon marker run function switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run kill @e[type=item,x=100081,y=-63,z=100051,distance=..1000]
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run data remove storage switch:maps to_regenerate.sheepwars_dirigeables

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove 100028 100000 100049 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove 100028 100000 100049 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove 100049 100000 100071 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove 100049 100000 100071 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove 100071 100000 100092 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove 100071 100000 100092 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove 100092 100000 100114 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove 100092 100000 100114 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in minecraft:overworld run forceload remove 100114 100000 100135 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run forceload remove 100114 100000 100135 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sheepwars_dirigeables` just regenerated!"}'
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run function switch:engine/log_message/apply

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sheepwars_dirigeables"}
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run scoreboard players reset #rg_sheepwars_dirigeables switch.data
execute if score #rg_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/regenerate 1t

