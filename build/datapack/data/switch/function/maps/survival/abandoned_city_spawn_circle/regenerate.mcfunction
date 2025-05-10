
#> switch:maps/survival/abandoned_city_spawn_circle/regenerate
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_abandoned_city_spawn_circle switch.data 1
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run data modify storage switch:maps to_regenerate.abandoned_city_spawn_circle set value 2b
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 42959 42959 42980 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 42959 42959 42980 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 42980 42959 43000 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 42980 42959 43000 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43000 42959 43020 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43000 42959 43020 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43020 42959 43041 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43020 42959 43041 43041

execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_y switch.data 91
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0
execute if score #rg_abandoned_city_spawn_circle switch.data matches ..100 summon marker run function switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run kill @e[type=item,x=43000,y=91,z=43000,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. run data remove storage switch:maps to_regenerate.abandoned_city_spawn_circle

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in minecraft:overworld run forceload remove 42959 42959 42980 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run forceload remove 42959 42959 42980 43041

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in minecraft:overworld run forceload remove 42980 42959 43000 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run forceload remove 42980 42959 43000 43041

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in minecraft:overworld run forceload remove 43000 42959 43020 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run forceload remove 43000 42959 43020 43041

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in minecraft:overworld run forceload remove 43020 42959 43041 43041
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run forceload remove 43020 42959 43041 43041

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"abandoned_city_spawn_circle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. run data modify storage switch:main MessageToLog set value '{"text":"Map `abandoned_city_spawn_circle` just regenerated!"}'
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. run function switch:engine/log_message/apply

execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. in switch:game run function switch:maps/regenerate_doors_macro {name:"abandoned_city_spawn_circle"}
execute if score #rg_abandoned_city_spawn_circle switch.data matches 101.. run scoreboard players reset #rg_abandoned_city_spawn_circle switch.data
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1.. run schedule function switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t

