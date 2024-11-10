
#> switch:maps/survival/cathedrale_liege/regenerate
#
# @within	switch:maps/survival/cathedrale_liege/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cathedrale_liege switch.data 1
execute if score #rg_cathedrale_liege switch.data matches 1 run data modify storage switch:maps to_regenerate.cathedrale_liege set value 2b
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 25961 25944 25989 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 25961 25944 25989 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 25989 25944 26016 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 25989 25944 26016 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26016 25944 26044 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26016 25944 26044 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26044 25944 26071 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26044 25944 26071 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add 26071 25944 26099 26028
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add 26071 25944 26099 26028

execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_y switch.data -64
execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0
execute if score #rg_cathedrale_liege switch.data matches ..820 summon marker run function switch:maps/survival/cathedrale_liege/regeneration_on_marker

execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run kill @e[type=item,x=26030,y=-64,z=25986,distance=..1000]
execute if score #rg_cathedrale_liege switch.data matches 821.. run data remove storage switch:maps to_regenerate.cathedrale_liege

execute if score #rg_cathedrale_liege switch.data matches 821.. in minecraft:overworld run forceload remove 25961 25944 25989 26028
execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run forceload remove 25961 25944 25989 26028

execute if score #rg_cathedrale_liege switch.data matches 821.. in minecraft:overworld run forceload remove 25989 25944 26016 26028
execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run forceload remove 25989 25944 26016 26028

execute if score #rg_cathedrale_liege switch.data matches 821.. in minecraft:overworld run forceload remove 26016 25944 26044 26028
execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run forceload remove 26016 25944 26044 26028

execute if score #rg_cathedrale_liege switch.data matches 821.. in minecraft:overworld run forceload remove 26044 25944 26071 26028
execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run forceload remove 26044 25944 26071 26028

execute if score #rg_cathedrale_liege switch.data matches 821.. in minecraft:overworld run forceload remove 26071 25944 26099 26028
execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run forceload remove 26071 25944 26099 26028

execute if score #rg_cathedrale_liege switch.data matches 821.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"cathedrale_liege","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_cathedrale_liege switch.data matches 821.. run data modify storage switch:main MessageToLog set value '{"text":"Map `cathedrale_liege` just regenerated!"}'
execute if score #rg_cathedrale_liege switch.data matches 821.. run function switch:engine/log_message/apply

execute if score #rg_cathedrale_liege switch.data matches 821.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cathedrale_liege"}
execute if score #rg_cathedrale_liege switch.data matches 821.. run scoreboard players reset #rg_cathedrale_liege switch.data
execute if score #rg_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/regenerate 1t

