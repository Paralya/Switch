
#> switch:maps/survival/ctf_mountains_castles/regenerate
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_mountains_castles switch.data 1
execute if score #rg_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_mountains_castles set value 2b
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147000 147000 147019 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147000 147000 147019 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147019 147000 147038 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147019 147000 147038 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147038 147000 147057 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147038 147000 147057 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147057 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147057 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147076 147000 147096 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147076 147000 147096 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147096 147000 147115 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147096 147000 147115 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147115 147000 147134 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147115 147000 147134 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147134 147000 147153 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147134 147000 147153 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147153 147000 147172 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147153 147000 147172 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147172 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147172 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147267 147000 147287 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147267 147000 147287 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147287 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147287 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add 147344 147000 147363 147158
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add 147344 147000 147363 147158

execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_y switch.data -64
execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0
execute if score #rg_ctf_mountains_castles switch.data matches ..3097 summon marker run function switch:maps/survival/ctf_mountains_castles/regeneration_on_marker

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run kill @e[type=item,x=147181,y=-64,z=147079,distance=..1000]
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run data remove storage switch:maps to_regenerate.ctf_mountains_castles

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147000 147000 147019 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147000 147000 147019 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147019 147000 147038 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147019 147000 147038 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147038 147000 147057 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147038 147000 147057 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147057 147000 147076 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147057 147000 147076 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147076 147000 147096 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147076 147000 147096 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147096 147000 147115 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147096 147000 147115 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147115 147000 147134 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147115 147000 147134 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147134 147000 147153 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147134 147000 147153 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147153 147000 147172 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147153 147000 147172 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147172 147000 147191 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147172 147000 147191 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147191 147000 147210 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147191 147000 147210 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147210 147000 147229 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147210 147000 147229 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147229 147000 147248 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147229 147000 147248 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147248 147000 147267 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147248 147000 147267 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147267 147000 147287 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147267 147000 147287 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147287 147000 147306 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147287 147000 147306 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147306 147000 147325 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147306 147000 147325 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147325 147000 147344 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147325 147000 147344 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove 147344 147000 147363 147158
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove 147344 147000 147363 147158

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"ctf_mountains_castles","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run data modify storage switch:main MessageToLog set value '{"text":"Map `ctf_mountains_castles` just regenerated!"}'
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run function switch:engine/log_message/apply

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_mountains_castles"}
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run scoreboard players reset #rg_ctf_mountains_castles switch.data
execute if score #rg_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/regenerate 1t

