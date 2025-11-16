
#> switch:maps/survival/caddie_league/regenerate
#
# @within	switch:maps/survival/caddie_league/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_caddie_league switch.data 1
execute if score #rg_caddie_league switch.data matches 1 run data modify storage switch:maps to_regenerate.caddie_league set value 2b
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41000 41000 41011 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41000 41000 41011 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41011 41000 41023 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41011 41000 41023 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41023 41000 41034 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41023 41000 41034 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41034 41000 41045 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41034 41000 41045 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41045 41000 41057 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41045 41000 41057 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41057 41000 41068 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41057 41000 41068 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41068 41000 41079 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41068 41000 41079 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41079 41000 41091 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41079 41000 41091 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41091 41000 41102 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41091 41000 41102 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41102 41000 41113 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41102 41000 41113 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41113 41000 41125 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41113 41000 41125 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41125 41000 41136 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41125 41000 41136 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41136 41000 41147 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41136 41000 41147 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41147 41000 41159 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41147 41000 41159 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41159 41000 41170 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41159 41000 41170 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41170 41000 41181 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41170 41000 41181 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41181 41000 41193 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41181 41000 41193 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41193 41000 41204 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41193 41000 41204 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41204 41000 41215 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41204 41000 41215 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41215 41000 41227 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41215 41000 41227 41256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add 41227 41000 41238 41256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add 41227 41000 41238 41256

execute if score #rg_caddie_league switch.data matches 1 run scoreboard players set #rg_caddie_league_y switch.data 100
execute if score #rg_caddie_league switch.data matches 1 run scoreboard players set #rg_caddie_league_mod switch.data 0
execute if score #rg_caddie_league switch.data matches ..1092 summon marker run function switch:maps/survival/caddie_league/regeneration_on_marker

execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run kill @e[type=item,x=41119,y=100,z=41128,distance=..1000]
execute if score #rg_caddie_league switch.data matches 1093.. run data remove storage switch:maps to_regenerate.caddie_league

execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41000 41000 41011 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41000 41000 41011 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41011 41000 41023 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41011 41000 41023 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41023 41000 41034 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41023 41000 41034 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41034 41000 41045 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41034 41000 41045 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41045 41000 41057 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41045 41000 41057 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41057 41000 41068 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41057 41000 41068 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41068 41000 41079 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41068 41000 41079 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41079 41000 41091 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41079 41000 41091 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41091 41000 41102 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41091 41000 41102 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41102 41000 41113 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41102 41000 41113 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41113 41000 41125 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41113 41000 41125 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41125 41000 41136 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41125 41000 41136 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41136 41000 41147 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41136 41000 41147 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41147 41000 41159 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41147 41000 41159 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41159 41000 41170 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41159 41000 41170 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41170 41000 41181 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41170 41000 41181 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41181 41000 41193 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41181 41000 41193 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41193 41000 41204 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41193 41000 41204 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41204 41000 41215 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41204 41000 41215 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41215 41000 41227 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41215 41000 41227 41256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove 41227 41000 41238 41256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove 41227 41000 41238 41256

execute if score #rg_caddie_league switch.data matches 1093.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Caddie League","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_caddie_league switch.data matches 1093.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Caddie League` just regenerated!"}'
execute if score #rg_caddie_league switch.data matches 1093.. run function switch:engine/log_message/apply

execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run function switch:maps/regenerate_doors_macro {name:"caddie_league"}
execute if score #rg_caddie_league switch.data matches 1093.. run scoreboard players reset #rg_caddie_league switch.data
execute if score #rg_caddie_league switch.data matches 1.. run schedule function switch:maps/survival/caddie_league/regenerate 1t

