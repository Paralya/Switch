
#> switch:maps/survival/ctf_mountains_castles/regenerate
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_mountains_castles switch.data 1
execute if score #rg_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_mountains_castles set value 2b
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 146999 147000 147018 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 146999 147000 147018 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147018 147000 147037 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147018 147000 147037 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147037 147000 147056 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147037 147000 147056 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147056 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147056 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147076 147000 147095 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147076 147000 147095 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147095 147000 147114 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147095 147000 147114 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147114 147000 147133 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147114 147000 147133 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147133 147000 147152 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147133 147000 147152 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147152 147000 147171 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147152 147000 147171 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147171 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147171 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147267 147000 147286 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147267 147000 147286 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147286 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147286 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147344 147000 147363 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147344 147000 147363 147158

execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_y switch.data 100
execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0
execute if score #rg_ctf_mountains_castles switch.data matches ..3097 summon marker run function switch:maps/survival/ctf_mountains_castles/regeneration_on_marker

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run kill @e[type=item,x=147181,y=100,z=147079,distance=..1000]
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run data remove storage switch:maps to_regenerate.ctf_mountains_castles

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 146999 147000 147018 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 146999 147000 147018 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147018 147000 147037 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147018 147000 147037 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147037 147000 147056 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147037 147000 147056 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147056 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147056 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147076 147000 147095 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147076 147000 147095 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147095 147000 147114 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147095 147000 147114 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147114 147000 147133 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147114 147000 147133 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147133 147000 147152 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147133 147000 147152 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147152 147000 147171 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147152 147000 147171 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147171 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147171 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147267 147000 147286 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147267 147000 147286 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147286 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147286 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147344 147000 147363 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147344 147000 147363 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Vale Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Vale Castle` just regenerated!"}'
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run function switch:engine/log_message/apply

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_mountains_castles"}
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run scoreboard players reset #rg_ctf_mountains_castles switch.data
execute if score #rg_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/regenerate 1t

