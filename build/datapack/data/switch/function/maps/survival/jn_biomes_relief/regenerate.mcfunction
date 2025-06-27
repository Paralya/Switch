
#> switch:maps/survival/jn_biomes_relief/regenerate
#
# @within	switch:maps/survival/jn_biomes_relief/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_biomes_relief switch.data 1
execute if score #rg_jn_biomes_relief switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_biomes_relief set value 2b
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141000 141000 141020 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141000 141000 141020 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141020 141000 141040 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141020 141000 141040 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141040 141000 141059 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141040 141000 141059 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141059 141000 141079 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141059 141000 141079 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141079 141000 141099 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141079 141000 141099 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141099 141000 141119 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141099 141000 141119 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141119 141000 141139 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141119 141000 141139 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141139 141000 141158 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141139 141000 141158 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141158 141000 141178 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141158 141000 141178 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add 141178 141000 141198 141139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add 141178 141000 141198 141139

execute if score #rg_jn_biomes_relief switch.data matches 1 run scoreboard players set #rg_jn_biomes_relief_y switch.data 100
execute if score #rg_jn_biomes_relief switch.data matches 1 run scoreboard players set #rg_jn_biomes_relief_mod switch.data 0
execute if score #rg_jn_biomes_relief switch.data matches ..900 summon marker run function switch:maps/survival/jn_biomes_relief/regeneration_on_marker

execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run kill @e[type=item,x=141099,y=100,z=141069,distance=..1000]
execute if score #rg_jn_biomes_relief switch.data matches 901.. run data remove storage switch:maps to_regenerate.jn_biomes_relief

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141000 141000 141020 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141000 141000 141020 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141020 141000 141040 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141020 141000 141040 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141040 141000 141059 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141040 141000 141059 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141059 141000 141079 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141059 141000 141079 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141079 141000 141099 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141079 141000 141099 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141099 141000 141119 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141099 141000 141119 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141119 141000 141139 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141119 141000 141139 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141139 141000 141158 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141139 141000 141158 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141158 141000 141178 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141158 141000 141178 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove 141178 141000 141198 141139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove 141178 141000 141198 141139

execute if score #rg_jn_biomes_relief switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Biomes Relief","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_biomes_relief switch.data matches 901.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Biomes Relief` just regenerated!"}'
execute if score #rg_jn_biomes_relief switch.data matches 901.. run function switch:engine/log_message/apply

execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_biomes_relief"}
execute if score #rg_jn_biomes_relief switch.data matches 901.. run scoreboard players reset #rg_jn_biomes_relief switch.data
execute if score #rg_jn_biomes_relief switch.data matches 1.. run schedule function switch:maps/survival/jn_biomes_relief/regenerate 1t

