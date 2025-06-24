
#> switch:maps/survival/zonweeb_highschool/regenerate
#
# @within	switch:maps/survival/zonweeb_highschool/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_zonweeb_highschool switch.data 1
execute if score #rg_zonweeb_highschool switch.data matches 1 run data modify storage switch:maps to_regenerate.zonweeb_highschool set value 2b
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53000 53000 53012 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53000 53000 53012 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53012 53000 53025 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53012 53000 53025 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53025 53000 53038 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53025 53000 53038 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53038 53000 53050 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53038 53000 53050 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53050 53000 53062 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53050 53000 53062 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53062 53000 53075 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53062 53000 53075 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53075 53000 53088 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53075 53000 53088 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53088 53000 53100 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53088 53000 53100 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53100 53000 53112 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53100 53000 53112 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add 53112 53000 53125 53218
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add 53112 53000 53125 53218

execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_y switch.data 100
execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0
execute if score #rg_zonweeb_highschool switch.data matches ..590 summon marker run function switch:maps/survival/zonweeb_highschool/regeneration_on_marker

execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run kill @e[type=item,x=53062,y=100,z=53109,distance=..1000]
execute if score #rg_zonweeb_highschool switch.data matches 591.. run data remove storage switch:maps to_regenerate.zonweeb_highschool

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53000 53000 53012 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53000 53000 53012 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53012 53000 53025 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53012 53000 53025 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53025 53000 53038 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53025 53000 53038 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53038 53000 53050 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53038 53000 53050 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53050 53000 53062 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53050 53000 53062 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53062 53000 53075 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53062 53000 53075 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53075 53000 53088 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53075 53000 53088 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53088 53000 53100 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53088 53000 53100 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53100 53000 53112 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53100 53000 53112 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove 53112 53000 53125 53218
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove 53112 53000 53125 53218

execute if score #rg_zonweeb_highschool switch.data matches 591.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"zonweeb_highschool","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_zonweeb_highschool switch.data matches 591.. run data modify storage switch:main MessageToLog set value '{"text":"Map `zonweeb_highschool` just regenerated!"}'
execute if score #rg_zonweeb_highschool switch.data matches 591.. run function switch:engine/log_message/apply

execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run function switch:maps/regenerate_doors_macro {name:"zonweeb_highschool"}
execute if score #rg_zonweeb_highschool switch.data matches 591.. run scoreboard players reset #rg_zonweeb_highschool switch.data
execute if score #rg_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/regenerate 1t

