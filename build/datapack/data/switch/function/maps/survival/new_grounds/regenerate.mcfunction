
#> switch:maps/survival/new_grounds/regenerate
#
# @within	switch:maps/survival/new_grounds/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_new_grounds switch.data 1
execute if score #rg_new_grounds switch.data matches 1 run data modify storage switch:maps to_regenerate.new_grounds set value 2b
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47930 47930 47948 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 47930 47930 47948 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47948 47930 47965 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 47948 47930 47965 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47965 47930 47982 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 47965 47930 47982 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 47982 47930 48000 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 47982 47930 48000 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48000 47930 48018 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48000 47930 48018 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48018 47930 48035 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48018 47930 48035 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48035 47930 48052 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48035 47930 48052 48070
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48052 47930 48070 48070
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48052 47930 48070 48070

execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_y switch.data 0
execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_mod switch.data 0
execute if score #rg_new_grounds switch.data matches ..680 summon marker run function switch:maps/survival/new_grounds/regeneration_on_marker

execute if score #rg_new_grounds switch.data matches 681.. in switch:game run kill @e[type=item,x=48000,y=0,z=48000,distance=..1000]
execute if score #rg_new_grounds switch.data matches 681.. run data remove storage switch:maps to_regenerate.new_grounds

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 47930 47930 47948 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 47930 47930 47948 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 47948 47930 47965 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 47948 47930 47965 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 47965 47930 47982 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 47965 47930 47982 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 47982 47930 48000 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 47982 47930 48000 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 48000 47930 48018 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 48000 47930 48018 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 48018 47930 48035 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 48018 47930 48035 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 48035 47930 48052 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 48035 47930 48052 48070

execute if score #rg_new_grounds switch.data matches 681.. in minecraft:overworld run forceload remove 48052 47930 48070 48070
execute if score #rg_new_grounds switch.data matches 681.. in switch:game run forceload remove 48052 47930 48070 48070

execute if score #rg_new_grounds switch.data matches 681.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"new_grounds","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_new_grounds switch.data matches 681.. run data modify storage switch:main MessageToLog set value '{"text":"Map `new_grounds` just regenerated!"}'
execute if score #rg_new_grounds switch.data matches 681.. run function switch:engine/log_message/apply

execute if score #rg_new_grounds switch.data matches 681.. in switch:game run function switch:maps/regenerate_doors_macro {name:"new_grounds"}
execute if score #rg_new_grounds switch.data matches 681.. run scoreboard players reset #rg_new_grounds switch.data
execute if score #rg_new_grounds switch.data matches 1.. run schedule function switch:maps/survival/new_grounds/regenerate 1t

