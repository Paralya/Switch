
#> switch:maps/survival/whity_lab/regenerate
#
# @within	switch:maps/survival/whity_lab/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_whity_lab switch.data 1
execute if score #rg_whity_lab switch.data matches 1 run data modify storage switch:maps to_regenerate.whity_lab set value 2b
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -8000 2000 -7980 2102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add -8000 2000 -7980 2102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7980 2000 -7959 2102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add -7980 2000 -7959 2102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7959 2000 -7939 2102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add -7959 2000 -7939 2102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7939 2000 -7918 2102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add -7939 2000 -7918 2102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add -7918 2000 -7898 2102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add -7918 2000 -7898 2102

execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_y switch.data 100
execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_mod switch.data 0
execute if score #rg_whity_lab switch.data matches ..440 summon marker run function switch:maps/survival/whity_lab/regeneration_on_marker

execute if score #rg_whity_lab switch.data matches 441.. in switch:game run kill @e[type=item,x=-7949,y=100,z=2051,distance=..1000]
execute if score #rg_whity_lab switch.data matches 441.. run data remove storage switch:maps to_regenerate.whity_lab

execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove -8000 2000 -7980 2102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove -8000 2000 -7980 2102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove -7980 2000 -7959 2102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove -7980 2000 -7959 2102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove -7959 2000 -7939 2102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove -7959 2000 -7939 2102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove -7939 2000 -7918 2102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove -7939 2000 -7918 2102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove -7918 2000 -7898 2102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove -7918 2000 -7898 2102

execute if score #rg_whity_lab switch.data matches 441.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Whity Lab","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_whity_lab switch.data matches 441.. run function switch:engine/log_message/apply {message:"Map `Whity Lab` just regenerated!"}

execute if score #rg_whity_lab switch.data matches 441.. in switch:game run function switch:maps/regenerate_doors_macro {name:"whity_lab"}
execute if score #rg_whity_lab switch.data matches 441.. run scoreboard players reset #rg_whity_lab switch.data
execute if score #rg_whity_lab switch.data matches 1.. run schedule function switch:maps/survival/whity_lab/regenerate 1t

