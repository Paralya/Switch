
#> switch:maps/survival/abandoned_city_spawn_circle/regenerate
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_abandoned_city_spawn_circle switch.data 1
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run data modify storage switch:maps to_regenerate.abandoned_city_spawn_circle set value 2b
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add -6000 4000 -5980 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add -6000 4000 -5980 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add -5980 4000 -5959 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add -5980 4000 -5959 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add -5959 4000 -5938 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add -5959 4000 -5938 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in minecraft:overworld run forceload add -5938 4000 -5918 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 in switch:game run forceload add -5938 4000 -5918 4082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_y switch.data 100
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1 run scoreboard players set #rg_abandoned_city_spawn_circle_mod switch.data 0
execute if score #rg_abandoned_city_spawn_circle switch.data matches ..132 summon marker run function switch:maps/survival/abandoned_city_spawn_circle/regeneration_on_marker

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run kill @e[type=item,x=-5959,y=100,z=4041,distance=..1000]
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run data remove storage switch:maps to_regenerate.abandoned_city_spawn_circle

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove -6000 4000 -5980 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove -6000 4000 -5980 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove -5980 4000 -5959 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove -5980 4000 -5959 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove -5959 4000 -5938 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove -5959 4000 -5938 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in minecraft:overworld run forceload remove -5938 4000 -5918 4082
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. in switch:game run forceload remove -5938 4000 -5918 4082

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Abandoned City Spawn Circle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run function switch:engine/log_message/apply {message:"Map `Abandoned City Spawn Circle` just regenerated!"}

execute if score #rg_abandoned_city_spawn_circle switch.data matches 133.. run scoreboard players reset #rg_abandoned_city_spawn_circle switch.data
execute if score #rg_abandoned_city_spawn_circle switch.data matches 1.. run schedule function switch:maps/survival/abandoned_city_spawn_circle/regenerate 1t

