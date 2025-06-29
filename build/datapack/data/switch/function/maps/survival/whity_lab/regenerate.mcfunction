
#> switch:maps/survival/whity_lab/regenerate
#
# @within	switch:maps/survival/whity_lab/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_whity_lab switch.data 1
execute if score #rg_whity_lab switch.data matches 1 run data modify storage switch:maps to_regenerate.whity_lab set value 2b
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 1 in minecraft:overworld run forceload add 91082 91000 91102 91102
execute if score #rg_whity_lab switch.data matches 1 in switch:game run forceload add 91082 91000 91102 91102

execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_y switch.data 100
execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_mod switch.data 0
execute if score #rg_whity_lab switch.data matches ..440 summon marker run function switch:maps/survival/whity_lab/regeneration_on_marker

execute if score #rg_whity_lab switch.data matches 441.. in switch:game run kill @e[type=item,x=91051,y=100,z=91051,distance=..1000]
execute if score #rg_whity_lab switch.data matches 441.. run data remove storage switch:maps to_regenerate.whity_lab

execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 441.. in minecraft:overworld run forceload remove 91082 91000 91102 91102
execute if score #rg_whity_lab switch.data matches 441.. in switch:game run forceload remove 91082 91000 91102 91102

execute if score #rg_whity_lab switch.data matches 441.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Whity Lab","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_whity_lab switch.data matches 441.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Whity Lab` just regenerated!"}'
execute if score #rg_whity_lab switch.data matches 441.. run function switch:engine/log_message/apply

execute if score #rg_whity_lab switch.data matches 441.. in switch:game run function switch:maps/regenerate_doors_macro {name:"whity_lab"}
execute if score #rg_whity_lab switch.data matches 441.. run scoreboard players reset #rg_whity_lab switch.data
execute if score #rg_whity_lab switch.data matches 1.. run schedule function switch:maps/survival/whity_lab/regenerate 1t

