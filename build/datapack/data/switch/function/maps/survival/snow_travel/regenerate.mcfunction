
#> switch:maps/survival/snow_travel/regenerate
#
# @within	switch:maps/survival/snow_travel/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snow_travel switch.data 1
execute if score #rg_snow_travel switch.data matches 1 run data modify storage switch:maps to_regenerate.snow_travel set value 2b
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23000 23000 23014 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23000 23000 23014 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23014 23000 23028 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23014 23000 23028 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23028 23000 23041 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23028 23000 23041 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23041 23000 23055 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23041 23000 23055 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23055 23000 23069 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23055 23000 23069 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23069 23000 23083 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23069 23000 23083 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23083 23000 23097 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23083 23000 23097 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23097 23000 23110 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23097 23000 23110 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23110 23000 23124 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23110 23000 23124 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23124 23000 23138 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23124 23000 23138 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23138 23000 23152 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23138 23000 23152 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23152 23000 23166 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23152 23000 23166 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23166 23000 23179 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23166 23000 23179 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23179 23000 23193 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23179 23000 23193 23205
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add 23193 23000 23207 23205
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add 23193 23000 23207 23205

execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_y switch.data 100
execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_mod switch.data 0
execute if score #rg_snow_travel switch.data matches ..1305 summon marker run function switch:maps/survival/snow_travel/regeneration_on_marker

execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run kill @e[type=item,x=23103,y=100,z=23102,distance=..1000]
execute if score #rg_snow_travel switch.data matches 1306.. run data remove storage switch:maps to_regenerate.snow_travel

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23000 23000 23014 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23000 23000 23014 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23014 23000 23028 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23014 23000 23028 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23028 23000 23041 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23028 23000 23041 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23041 23000 23055 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23041 23000 23055 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23055 23000 23069 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23055 23000 23069 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23069 23000 23083 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23069 23000 23083 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23083 23000 23097 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23083 23000 23097 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23097 23000 23110 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23097 23000 23110 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23110 23000 23124 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23110 23000 23124 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23124 23000 23138 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23124 23000 23138 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23138 23000 23152 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23138 23000 23152 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23152 23000 23166 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23152 23000 23166 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23166 23000 23179 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23166 23000 23179 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23179 23000 23193 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23179 23000 23193 23205

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove 23193 23000 23207 23205
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove 23193 23000 23207 23205

execute if score #rg_snow_travel switch.data matches 1306.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"snow_travel","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_snow_travel switch.data matches 1306.. run data modify storage switch:main MessageToLog set value '{"text":"Map `snow_travel` just regenerated!"}'
execute if score #rg_snow_travel switch.data matches 1306.. run function switch:engine/log_message/apply

execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snow_travel"}
execute if score #rg_snow_travel switch.data matches 1306.. run scoreboard players reset #rg_snow_travel switch.data
execute if score #rg_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/regenerate 1t

