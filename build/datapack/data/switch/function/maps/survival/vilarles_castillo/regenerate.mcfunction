
#> switch:maps/survival/vilarles_castillo/regenerate
#
# @within	switch:maps/survival/vilarles_castillo/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_vilarles_castillo switch.data 1
execute if score #rg_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_regenerate.vilarles_castillo set value 2b
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51899 51853 51912 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51899 51853 51912 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51912 51853 51924 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51912 51853 51924 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51924 51853 51937 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51924 51853 51937 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51937 51853 51950 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51937 51853 51950 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51950 51853 51962 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51950 51853 51962 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51962 51853 51975 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51962 51853 51975 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51975 51853 51988 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51975 51853 51988 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 51988 51853 52000 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 51988 51853 52000 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52000 51853 52013 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52000 51853 52013 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52013 51853 52025 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52013 51853 52025 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52025 51853 52038 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52025 51853 52038 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52038 51853 52051 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52038 51853 52051 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52051 51853 52063 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52051 51853 52063 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add 52063 51853 52076 52071
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add 52063 51853 52076 52071

execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_y switch.data -64
execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0
execute if score #rg_vilarles_castillo switch.data matches ..2198 summon marker run function switch:maps/survival/vilarles_castillo/regeneration_on_marker

execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run kill @e[type=item,x=51987,y=-64,z=51962,distance=..1000]
execute if score #rg_vilarles_castillo switch.data matches 2199.. run data remove storage switch:maps to_regenerate.vilarles_castillo

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51899 51853 51912 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51899 51853 51912 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51912 51853 51924 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51912 51853 51924 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51924 51853 51937 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51924 51853 51937 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51937 51853 51950 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51937 51853 51950 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51950 51853 51962 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51950 51853 51962 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51962 51853 51975 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51962 51853 51975 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51975 51853 51988 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51975 51853 51988 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 51988 51853 52000 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 51988 51853 52000 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52000 51853 52013 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52000 51853 52013 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52013 51853 52025 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52013 51853 52025 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52025 51853 52038 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52025 51853 52038 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52038 51853 52051 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52038 51853 52051 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52051 51853 52063 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52051 51853 52063 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. in minecraft:overworld run forceload remove 52063 51853 52076 52071
execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run forceload remove 52063 51853 52076 52071

execute if score #rg_vilarles_castillo switch.data matches 2199.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"vilarles_castillo","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"49","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_vilarles_castillo switch.data matches 2199.. run data modify storage switch:main MessageToLog set value '{"text":"Map `vilarles_castillo` just regenerated!"}'
execute if score #rg_vilarles_castillo switch.data matches 2199.. run function switch:engine/log_message/apply

execute if score #rg_vilarles_castillo switch.data matches 2199.. in switch:game run function switch:maps/regenerate_doors_macro {name:"vilarles_castillo"}
execute if score #rg_vilarles_castillo switch.data matches 2199.. run scoreboard players reset #rg_vilarles_castillo switch.data
execute if score #rg_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/regenerate 1t

