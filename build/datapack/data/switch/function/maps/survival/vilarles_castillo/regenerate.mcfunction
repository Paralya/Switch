
#> switch:maps/survival/vilarles_castillo/regenerate
#
# @within	switch:maps/survival/vilarles_castillo/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_vilarles_castillo switch.data 1
execute if score #rg_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_regenerate.vilarles_castillo set value 2b
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52000 52000 52016 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52000 52000 52016 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52016 52000 52032 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52016 52000 52032 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52032 52000 52048 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52032 52000 52048 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52048 52000 52064 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52048 52000 52064 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52064 52000 52080 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52064 52000 52080 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52080 52000 52097 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52080 52000 52097 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52097 52000 52113 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52097 52000 52113 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52113 52000 52129 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52113 52000 52129 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52129 52000 52145 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52129 52000 52145 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52145 52000 52161 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52145 52000 52161 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52161 52000 52177 52173
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52161 52000 52177 52173

execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_y switch.data 100
execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0
execute if score #rg_vilarles_castillo switch.data matches ..1727 summon marker run function switch:maps/survival/vilarles_castillo/regeneration_on_marker

execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run kill @e[type=item,x=52088,y=100,z=52086,distance=..1000]
execute if score #rg_vilarles_castillo switch.data matches 1728.. run data remove storage switch:maps to_regenerate.vilarles_castillo

execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52000 52000 52016 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52000 52000 52016 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52016 52000 52032 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52016 52000 52032 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52032 52000 52048 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52032 52000 52048 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52048 52000 52064 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52048 52000 52064 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52064 52000 52080 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52064 52000 52080 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52080 52000 52097 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52080 52000 52097 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52097 52000 52113 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52097 52000 52113 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52113 52000 52129 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52113 52000 52129 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52129 52000 52145 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52129 52000 52145 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52145 52000 52161 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52145 52000 52161 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove 52161 52000 52177 52173
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove 52161 52000 52177 52173

execute if score #rg_vilarles_castillo switch.data matches 1728.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Castillo","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_vilarles_castillo switch.data matches 1728.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Castillo` just regenerated!"}'
execute if score #rg_vilarles_castillo switch.data matches 1728.. run function switch:engine/log_message/apply

execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run function switch:maps/regenerate_doors_macro {name:"vilarles_castillo"}
execute if score #rg_vilarles_castillo switch.data matches 1728.. run scoreboard players reset #rg_vilarles_castillo switch.data
execute if score #rg_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/regenerate 1t

