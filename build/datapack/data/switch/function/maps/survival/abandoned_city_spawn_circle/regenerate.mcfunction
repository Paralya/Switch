
#> switch:maps/survival/abandoned_city_spawn_circle/regenerate
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_abandoned_city_spawn_circle switch.data 1
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run data modify storage switch:maps to_regenerate.abandoned_city_spawn_circle set value 2b
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43000 43000 43020 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43000 43000 43020 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43020 43000 43041 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43020 43000 43041 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43041 43000 43062 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43041 43000 43062 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add 43062 43000 43082 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add 43062 43000 43082 43082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_y switch.data 100
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0
execute if score #rg_abandoned_city_spawn_circle switch.data matches ..132 summon marker run function switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run kill @e[type=item,x=43041,y=100,z=43041,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run data remove storage switch:maps to_regenerate.abandoned_city_spawn_circle

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove 43000 43000 43020 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove 43000 43000 43020 43082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove 43020 43000 43041 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove 43020 43000 43041 43082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove 43041 43000 43062 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove 43041 43000 43062 43082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove 43062 43000 43082 43082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove 43062 43000 43082 43082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Abandoned City Spawn Circle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Abandoned City Spawn Circle` just regenerated!"}'
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run function switch:engine/log_message/apply

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run function switch:maps/regenerate_doors_macro {name:"abandoned_city_spawn_circle"}
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run scoreboard players reset #rg_abandoned_city_spawn_circle switch.data
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1.. run schedule function switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t

