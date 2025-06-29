
#> switch:maps/survival/snow_hills/regenerate
#
# @within	switch:maps/survival/snow_hills/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snow_hills switch.data 1
execute if score #rg_snow_hills switch.data matches 1 run data modify storage switch:maps to_regenerate.snow_hills set value 2b
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50000 50000 50016 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50000 50000 50016 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50016 50000 50032 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50016 50000 50032 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50032 50000 50048 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50032 50000 50048 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50048 50000 50064 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50048 50000 50064 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50064 50000 50080 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50064 50000 50080 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50080 50000 50096 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50080 50000 50096 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50096 50000 50112 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50096 50000 50112 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50112 50000 50127 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50112 50000 50127 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50127 50000 50143 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50127 50000 50143 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50143 50000 50159 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50143 50000 50159 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50159 50000 50175 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50159 50000 50175 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50175 50000 50191 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50175 50000 50191 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50191 50000 50207 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50191 50000 50207 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50207 50000 50223 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50207 50000 50223 50185
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add 50223 50000 50239 50185
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add 50223 50000 50239 50185

execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_y switch.data 100
execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_mod switch.data 0
execute if score #rg_snow_hills switch.data matches ..915 summon marker run function switch:maps/survival/snow_hills/regeneration_on_marker

execute if score #rg_snow_hills switch.data matches 916.. in switch:game run kill @e[type=item,x=50119,y=100,z=50092,distance=..1000]
execute if score #rg_snow_hills switch.data matches 916.. run data remove storage switch:maps to_regenerate.snow_hills

execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50000 50000 50016 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50000 50000 50016 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50016 50000 50032 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50016 50000 50032 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50032 50000 50048 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50032 50000 50048 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50048 50000 50064 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50048 50000 50064 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50064 50000 50080 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50064 50000 50080 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50080 50000 50096 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50080 50000 50096 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50096 50000 50112 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50096 50000 50112 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50112 50000 50127 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50112 50000 50127 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50127 50000 50143 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50127 50000 50143 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50143 50000 50159 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50143 50000 50159 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50159 50000 50175 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50159 50000 50175 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50175 50000 50191 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50175 50000 50191 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50191 50000 50207 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50191 50000 50207 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50207 50000 50223 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50207 50000 50223 50185
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove 50223 50000 50239 50185
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove 50223 50000 50239 50185

execute if score #rg_snow_hills switch.data matches 916.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Snow Hills","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snow_hills switch.data matches 916.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Snow Hills` just regenerated!"}'
execute if score #rg_snow_hills switch.data matches 916.. run function switch:engine/log_message/apply

execute if score #rg_snow_hills switch.data matches 916.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snow_hills"}
execute if score #rg_snow_hills switch.data matches 916.. run scoreboard players reset #rg_snow_hills switch.data
execute if score #rg_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/regenerate 1t

