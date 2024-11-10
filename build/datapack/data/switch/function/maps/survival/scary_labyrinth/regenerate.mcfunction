
#> switch:maps/survival/scary_labyrinth/regenerate
#
# @within	switch:maps/survival/scary_labyrinth/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_scary_labyrinth switch.data 1
execute if score #rg_scary_labyrinth switch.data matches 1 run data modify storage switch:maps to_regenerate.scary_labyrinth set value 2b
execute if score #rg_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60000 60000 60037 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60000 60000 60037 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60037 60000 60074 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60037 60000 60074 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60074 60000 60110 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60074 60000 60110 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60110 60000 60147 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60110 60000 60147 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in minecraft:overworld run forceload add 60147 60000 60184 60066
execute if score #rg_scary_labyrinth switch.data matches 1 in switch:game run forceload add 60147 60000 60184 60066

execute if score #rg_scary_labyrinth switch.data matches 1 run scoreboard players set #rg_scary_labyrinth_y switch.data 0
execute if score #rg_scary_labyrinth switch.data matches 1 run scoreboard players set #rg_scary_labyrinth_mod switch.data 0
execute if score #rg_scary_labyrinth switch.data matches ..370 summon marker run function switch:maps/survival/scary_labyrinth/regeneration_on_marker

execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run kill @e[type=item,x=60092,y=0,z=60033,distance=..1000]
execute if score #rg_scary_labyrinth switch.data matches 371.. run data remove storage switch:maps to_regenerate.scary_labyrinth

execute if score #rg_scary_labyrinth switch.data matches 371.. in minecraft:overworld run forceload remove 60000 60000 60037 60066
execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run forceload remove 60000 60000 60037 60066

execute if score #rg_scary_labyrinth switch.data matches 371.. in minecraft:overworld run forceload remove 60037 60000 60074 60066
execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run forceload remove 60037 60000 60074 60066

execute if score #rg_scary_labyrinth switch.data matches 371.. in minecraft:overworld run forceload remove 60074 60000 60110 60066
execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run forceload remove 60074 60000 60110 60066

execute if score #rg_scary_labyrinth switch.data matches 371.. in minecraft:overworld run forceload remove 60110 60000 60147 60066
execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run forceload remove 60110 60000 60147 60066

execute if score #rg_scary_labyrinth switch.data matches 371.. in minecraft:overworld run forceload remove 60147 60000 60184 60066
execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run forceload remove 60147 60000 60184 60066

execute if score #rg_scary_labyrinth switch.data matches 371.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"scary_labyrinth","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"18","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_scary_labyrinth switch.data matches 371.. run data modify storage switch:main MessageToLog set value '{"text":"Map `scary_labyrinth` just regenerated!"}'
execute if score #rg_scary_labyrinth switch.data matches 371.. run function switch:engine/log_message/apply

execute if score #rg_scary_labyrinth switch.data matches 371.. in switch:game run function switch:maps/regenerate_doors_macro {name:"scary_labyrinth"}
execute if score #rg_scary_labyrinth switch.data matches 371.. run scoreboard players reset #rg_scary_labyrinth switch.data
execute if score #rg_scary_labyrinth switch.data matches 1.. run schedule function switch:maps/survival/scary_labyrinth/regenerate 1t

