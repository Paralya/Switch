
#> switch:maps/survival/bowser_castle/regenerate
#
# @within	switch:maps/survival/bowser_castle/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_bowser_castle switch.data 1
execute if score #rg_bowser_castle switch.data matches 1 run data modify storage switch:maps to_regenerate.bowser_castle set value 2b
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22000 22000 22012 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22000 22000 22012 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22012 22000 22024 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22012 22000 22024 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22024 22000 22036 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22024 22000 22036 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22036 22000 22048 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22036 22000 22048 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22048 22000 22059 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22048 22000 22059 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22059 22000 22071 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22059 22000 22071 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22071 22000 22083 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22071 22000 22083 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22083 22000 22095 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22083 22000 22095 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22095 22000 22107 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22095 22000 22107 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22107 22000 22119 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22107 22000 22119 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22119 22000 22131 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22119 22000 22131 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22131 22000 22143 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22131 22000 22143 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22143 22000 22155 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22143 22000 22155 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22155 22000 22167 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22155 22000 22167 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22167 22000 22178 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22167 22000 22178 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22178 22000 22190 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22178 22000 22190 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22190 22000 22202 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22190 22000 22202 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22202 22000 22214 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22202 22000 22214 22245
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add 22214 22000 22226 22245
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add 22214 22000 22226 22245

execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_y switch.data 100
execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_mod switch.data 0
execute if score #rg_bowser_castle switch.data matches ..1558 summon marker run function switch:maps/survival/bowser_castle/regeneration_on_marker

execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run kill @e[type=item,x=22113,y=100,z=22122,distance=..1000]
execute if score #rg_bowser_castle switch.data matches 1559.. run data remove storage switch:maps to_regenerate.bowser_castle

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22000 22000 22012 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22000 22000 22012 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22012 22000 22024 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22012 22000 22024 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22024 22000 22036 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22024 22000 22036 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22036 22000 22048 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22036 22000 22048 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22048 22000 22059 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22048 22000 22059 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22059 22000 22071 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22059 22000 22071 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22071 22000 22083 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22071 22000 22083 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22083 22000 22095 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22083 22000 22095 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22095 22000 22107 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22095 22000 22107 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22107 22000 22119 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22107 22000 22119 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22119 22000 22131 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22119 22000 22131 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22131 22000 22143 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22131 22000 22143 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22143 22000 22155 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22143 22000 22155 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22155 22000 22167 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22155 22000 22167 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22167 22000 22178 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22167 22000 22178 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22178 22000 22190 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22178 22000 22190 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22190 22000 22202 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22190 22000 22202 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22202 22000 22214 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22202 22000 22214 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove 22214 22000 22226 22245
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove 22214 22000 22226 22245

execute if score #rg_bowser_castle switch.data matches 1559.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Bowser Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_bowser_castle switch.data matches 1559.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Bowser Castle` just regenerated!"}'
execute if score #rg_bowser_castle switch.data matches 1559.. run function switch:engine/log_message/apply

execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run function switch:maps/regenerate_doors_macro {name:"bowser_castle"}
execute if score #rg_bowser_castle switch.data matches 1559.. run scoreboard players reset #rg_bowser_castle switch.data
execute if score #rg_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/regenerate 1t

