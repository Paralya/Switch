
#> switch:maps/survival/cathedrale_liege/regenerate
#
# @within	switch:maps/survival/cathedrale_liege/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cathedrale_liege switch.data 1
execute if score #rg_cathedrale_liege switch.data matches 1 run data modify storage switch:maps to_regenerate.cathedrale_liege set value 2b
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26000 26000 26028 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26000 26000 26028 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26028 26000 26055 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26028 26000 26055 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26055 26000 26083 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26055 26000 26083 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26083 26000 26110 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26083 26000 26110 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26110 26000 26138 26084
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26110 26000 26138 26084

execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_y switch.data 100
execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0
execute if score #rg_cathedrale_liege switch.data matches ..830 summon marker run function switch:maps/survival/cathedrale_liege/regeneration_on_marker

execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run kill @e[type=item,x=26069,y=100,z=26042,distance=..1000]
execute if score #rg_cathedrale_liege switch.data matches 831.. run data remove storage switch:maps to_regenerate.cathedrale_liege

execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove 26000 26000 26028 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove 26000 26000 26028 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove 26028 26000 26055 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove 26028 26000 26055 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove 26055 26000 26083 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove 26055 26000 26083 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove 26083 26000 26110 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove 26083 26000 26110 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove 26110 26000 26138 26084
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove 26110 26000 26138 26084

execute if score #rg_cathedrale_liege switch.data matches 831.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cathédrale Saint-Lambert de Liège","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cathedrale_liege switch.data matches 831.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cathédrale Saint-Lambert de Liège` just regenerated!"}'
execute if score #rg_cathedrale_liege switch.data matches 831.. run function switch:engine/log_message/apply

execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cathedrale_liege"}
execute if score #rg_cathedrale_liege switch.data matches 831.. run scoreboard players reset #rg_cathedrale_liege switch.data
execute if score #rg_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/regenerate 1t

