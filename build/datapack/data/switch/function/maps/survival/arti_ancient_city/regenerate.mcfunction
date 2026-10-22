
#> switch:maps/survival/arti_ancient_city/regenerate
#
# @within	switch:maps/survival/arti_ancient_city/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_arti_ancient_city switch.data 1
execute if score #rg_arti_ancient_city switch.data matches 1 run data modify storage switch:maps to_regenerate.arti_ancient_city set value 2b
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2000 -12000 2018 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2000 -12000 2018 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2018 -12000 2037 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2018 -12000 2037 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2037 -12000 2056 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2037 -12000 2056 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2056 -12000 2074 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2056 -12000 2074 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2074 -12000 2092 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2074 -12000 2092 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in minecraft:overworld run forceload add 2092 -12000 2111 -11883
execute if score #rg_arti_ancient_city switch.data matches 1 in switch:game run forceload add 2092 -12000 2111 -11883

execute if score #rg_arti_ancient_city switch.data matches 1 run scoreboard players set #rg_arti_ancient_city_y switch.data 100
execute if score #rg_arti_ancient_city switch.data matches 1 run scoreboard players set #rg_arti_ancient_city_mod switch.data 0
execute if score #rg_arti_ancient_city switch.data matches ..312 summon marker run function switch:maps/survival/arti_ancient_city/regeneration_on_marker

execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run kill @e[type=item,x=2055,y=100,z=-11941,distance=..1000]
execute if score #rg_arti_ancient_city switch.data matches 313.. run data remove storage switch:maps to_regenerate.arti_ancient_city

execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2000 -12000 2018 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2000 -12000 2018 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2018 -12000 2037 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2018 -12000 2037 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2037 -12000 2056 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2037 -12000 2056 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2056 -12000 2074 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2056 -12000 2074 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2074 -12000 2092 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2074 -12000 2092 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in minecraft:overworld run forceload remove 2092 -12000 2111 -11883
execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run forceload remove 2092 -12000 2111 -11883

execute if score #rg_arti_ancient_city switch.data matches 313.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Big Ancient City","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_arti_ancient_city switch.data matches 313.. run function switch:engine/log_message/apply {message:"Map `Big Ancient City` just regenerated!"}

execute if score #rg_arti_ancient_city switch.data matches 313.. in switch:game run function switch:maps/regenerate_doors_macro {name:"arti_ancient_city"}
execute if score #rg_arti_ancient_city switch.data matches 313.. run scoreboard players reset #rg_arti_ancient_city switch.data
execute if score #rg_arti_ancient_city switch.data matches 1.. run schedule function switch:maps/survival/arti_ancient_city/regenerate 1t

