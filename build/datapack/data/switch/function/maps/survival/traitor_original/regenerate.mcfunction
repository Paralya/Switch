
#> switch:maps/survival/traitor_original/regenerate
#
# @within	switch:maps/survival/traitor_original/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_traitor_original switch.data 1
execute if score #rg_traitor_original switch.data matches 1 run data modify storage switch:maps to_regenerate.traitor_original set value 2b
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2000 2000 2018 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2000 2000 2018 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2018 2000 2037 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2018 2000 2037 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2037 2000 2055 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2037 2000 2055 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2055 2000 2074 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2055 2000 2074 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2074 2000 2092 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2074 2000 2092 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2092 2000 2110 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2092 2000 2110 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2110 2000 2129 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2110 2000 2129 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2129 2000 2147 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2129 2000 2147 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2147 2000 2166 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2147 2000 2166 2155
execute if score #rg_traitor_original switch.data matches 1 in minecraft:overworld run forceload add 2166 2000 2184 2155
execute if score #rg_traitor_original switch.data matches 1 in switch:game run forceload add 2166 2000 2184 2155

execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_y switch.data 100
execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_mod switch.data 0
execute if score #rg_traitor_original switch.data matches ..900 summon marker run function switch:maps/survival/traitor_original/regeneration_on_marker

execute if score #rg_traitor_original switch.data matches 901.. in switch:game run kill @e[type=item,x=2092,y=100,z=2077,distance=..1000]
execute if score #rg_traitor_original switch.data matches 901.. run data remove storage switch:maps to_regenerate.traitor_original

execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2000 2000 2018 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2000 2000 2018 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2018 2000 2037 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2018 2000 2037 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2037 2000 2055 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2037 2000 2055 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2055 2000 2074 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2055 2000 2074 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2074 2000 2092 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2074 2000 2092 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2092 2000 2110 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2092 2000 2110 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2110 2000 2129 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2110 2000 2129 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2129 2000 2147 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2129 2000 2147 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2147 2000 2166 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2147 2000 2166 2155
execute if score #rg_traitor_original switch.data matches 901.. in minecraft:overworld run forceload remove 2166 2000 2184 2155
execute if score #rg_traitor_original switch.data matches 901.. in switch:game run forceload remove 2166 2000 2184 2155

execute if score #rg_traitor_original switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Traitor Original","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_traitor_original switch.data matches 901.. run function switch:engine/log_message/apply {message:"Map `Traitor Original` just regenerated!"}

execute if score #rg_traitor_original switch.data matches 901.. in switch:game run function switch:maps/regenerate_doors_macro {name:"traitor_original"}
execute if score #rg_traitor_original switch.data matches 901.. run scoreboard players reset #rg_traitor_original switch.data
execute if score #rg_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/regenerate 1t

