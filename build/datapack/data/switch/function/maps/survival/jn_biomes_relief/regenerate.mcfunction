
#> switch:maps/survival/jn_biomes_relief/regenerate
#
# @within	switch:maps/survival/jn_biomes_relief/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_biomes_relief switch.data 1
execute if score #rg_jn_biomes_relief switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_biomes_relief set value 2b
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -10000 6000 -9980 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -10000 6000 -9980 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9980 6000 -9960 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9980 6000 -9960 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9960 6000 -9941 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9960 6000 -9941 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9941 6000 -9921 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9941 6000 -9921 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9921 6000 -9901 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9921 6000 -9901 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9901 6000 -9881 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9901 6000 -9881 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9881 6000 -9861 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9881 6000 -9861 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9861 6000 -9842 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9861 6000 -9842 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9842 6000 -9822 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9842 6000 -9822 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in minecraft:overworld run forceload add -9822 6000 -9802 6139
execute if score #rg_jn_biomes_relief switch.data matches 1 in switch:game run forceload add -9822 6000 -9802 6139

execute if score #rg_jn_biomes_relief switch.data matches 1 run scoreboard players set #rg_jn_biomes_relief_y switch.data 100
execute if score #rg_jn_biomes_relief switch.data matches 1 run scoreboard players set #rg_jn_biomes_relief_mod switch.data 0
execute if score #rg_jn_biomes_relief switch.data matches ..900 summon marker run function switch:maps/survival/jn_biomes_relief/regeneration_on_marker

execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run kill @e[type=item,x=-9901,y=100,z=6069,distance=..1000]
execute if score #rg_jn_biomes_relief switch.data matches 901.. run data remove storage switch:maps to_regenerate.jn_biomes_relief

execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -10000 6000 -9980 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -10000 6000 -9980 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9980 6000 -9960 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9980 6000 -9960 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9960 6000 -9941 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9960 6000 -9941 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9941 6000 -9921 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9941 6000 -9921 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9921 6000 -9901 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9921 6000 -9901 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9901 6000 -9881 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9901 6000 -9881 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9881 6000 -9861 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9881 6000 -9861 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9861 6000 -9842 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9861 6000 -9842 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9842 6000 -9822 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9842 6000 -9822 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in minecraft:overworld run forceload remove -9822 6000 -9802 6139
execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run forceload remove -9822 6000 -9802 6139

execute if score #rg_jn_biomes_relief switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Biomes Relief","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jn_biomes_relief switch.data matches 901.. run function switch:engine/log_message/apply {message:"Map `Biomes Relief` just regenerated!"}

execute if score #rg_jn_biomes_relief switch.data matches 901.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_biomes_relief"}
execute if score #rg_jn_biomes_relief switch.data matches 901.. run scoreboard players reset #rg_jn_biomes_relief switch.data
execute if score #rg_jn_biomes_relief switch.data matches 1.. run schedule function switch:maps/survival/jn_biomes_relief/regenerate 1t

