
#> switch:maps/survival/old_japan_apocalypse/regenerate
#
# @within	switch:maps/survival/old_japan_apocalypse/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_old_japan_apocalypse switch.data 1
execute if score #rg_old_japan_apocalypse switch.data matches 1 run data modify storage switch:maps to_regenerate.old_japan_apocalypse set value 2b
execute if score #rg_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129000 129000 129020 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129000 129000 129020 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129020 129000 129041 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129020 129000 129041 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129041 129000 129061 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129041 129000 129061 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129061 129000 129082 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129061 129000 129082 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in minecraft:overworld run forceload add 129082 129000 129102 129102
execute if score #rg_old_japan_apocalypse switch.data matches 1 in switch:game run forceload add 129082 129000 129102 129102

execute if score #rg_old_japan_apocalypse switch.data matches 1 run scoreboard players set #rg_old_japan_apocalypse_y switch.data 100
execute if score #rg_old_japan_apocalypse switch.data matches 1 run scoreboard players set #rg_old_japan_apocalypse_mod switch.data 0
execute if score #rg_old_japan_apocalypse switch.data matches ..265 summon marker run function switch:maps/survival/old_japan_apocalypse/regeneration_on_marker

execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run kill @e[type=item,x=129051,y=100,z=129051,distance=..1000]
execute if score #rg_old_japan_apocalypse switch.data matches 266.. run data remove storage switch:maps to_regenerate.old_japan_apocalypse

execute if score #rg_old_japan_apocalypse switch.data matches 266.. in minecraft:overworld run forceload remove 129000 129000 129020 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run forceload remove 129000 129000 129020 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in minecraft:overworld run forceload remove 129020 129000 129041 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run forceload remove 129020 129000 129041 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in minecraft:overworld run forceload remove 129041 129000 129061 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run forceload remove 129041 129000 129061 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in minecraft:overworld run forceload remove 129061 129000 129082 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run forceload remove 129061 129000 129082 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in minecraft:overworld run forceload remove 129082 129000 129102 129102
execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run forceload remove 129082 129000 129102 129102

execute if score #rg_old_japan_apocalypse switch.data matches 266.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Old Japan Apocalypse","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_old_japan_apocalypse switch.data matches 266.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Old Japan Apocalypse` just regenerated!"}'
execute if score #rg_old_japan_apocalypse switch.data matches 266.. run function switch:engine/log_message/apply

execute if score #rg_old_japan_apocalypse switch.data matches 266.. in switch:game run function switch:maps/regenerate_doors_macro {name:"old_japan_apocalypse"}
execute if score #rg_old_japan_apocalypse switch.data matches 266.. run scoreboard players reset #rg_old_japan_apocalypse switch.data
execute if score #rg_old_japan_apocalypse switch.data matches 1.. run schedule function switch:maps/survival/old_japan_apocalypse/regenerate 1t

