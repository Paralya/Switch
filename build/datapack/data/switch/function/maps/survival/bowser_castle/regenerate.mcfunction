
#> switch:maps/survival/bowser_castle/regenerate
#
# @within	switch:maps/survival/bowser_castle/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_bowser_castle switch.data 1
execute if score #rg_bowser_castle switch.data matches 1 run data modify storage switch:maps to_regenerate.bowser_castle set value 2b
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21888 21888 21900 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21888 21888 21900 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21900 21888 21912 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21900 21888 21912 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21912 21888 21924 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21912 21888 21924 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21924 21888 21936 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21924 21888 21936 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21936 21888 21947 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21936 21888 21947 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21947 21888 21959 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21947 21888 21959 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21959 21888 21971 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21959 21888 21971 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21971 21888 21983 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21971 21888 21983 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21983 21888 21995 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21983 21888 21995 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 21995 21888 22007 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 21995 21888 22007 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22007 21888 22019 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22007 21888 22019 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22019 21888 22031 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22019 21888 22031 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22031 21888 22043 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22031 21888 22043 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22043 21888 22055 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22043 21888 22055 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22055 21888 22066 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22055 21888 22066 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22066 21888 22078 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22066 21888 22078 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22078 21888 22090 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22078 21888 22090 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22090 21888 22102 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22090 21888 22102 22133
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22102 21888 22114 22133
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22102 21888 22114 22133

execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_y switch.data 0
execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_mod switch.data 0
execute if score #rg_bowser_castle switch.data matches ..1558 summon marker run function switch:maps/survival/bowser_castle/regeneration_on_marker

execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run kill @e[type=item,x=22001,y=0,z=22010,distance=..1000]
execute if score #rg_bowser_castle switch.data matches 1559.. run data remove storage switch:maps to_regenerate.bowser_castle

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21888 21888 21900 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21888 21888 21900 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21900 21888 21912 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21900 21888 21912 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21912 21888 21924 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21912 21888 21924 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21924 21888 21936 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21924 21888 21936 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21936 21888 21947 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21936 21888 21947 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21947 21888 21959 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21947 21888 21959 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21959 21888 21971 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21959 21888 21971 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21971 21888 21983 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21971 21888 21983 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21983 21888 21995 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21983 21888 21995 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 21995 21888 22007 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 21995 21888 22007 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22007 21888 22019 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22007 21888 22019 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22019 21888 22031 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22019 21888 22031 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22031 21888 22043 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22031 21888 22043 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22043 21888 22055 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22043 21888 22055 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22055 21888 22066 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22055 21888 22066 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22066 21888 22078 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22066 21888 22078 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22078 21888 22090 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22078 21888 22090 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22090 21888 22102 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22090 21888 22102 22133

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22102 21888 22114 22133
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22102 21888 22114 22133

execute if score #rg_bowser_castle switch.data matches 1559.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"bowser_castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_bowser_castle switch.data matches 1559.. run data modify storage switch:main MessageToLog set value '{"text":"Map `bowser_castle` just regenerated!"}'
execute if score #rg_bowser_castle switch.data matches 1559.. run function switch:engine/log_message/apply

execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run function switch:maps/regenerate_doors_macro {name:"bowser_castle"}
execute if score #rg_bowser_castle switch.data matches 1559.. run scoreboard players reset #rg_bowser_castle switch.data
execute if score #rg_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/regenerate 1t

