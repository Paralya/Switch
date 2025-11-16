
#> switch:maps/survival/void_desert/regenerate
#
# @within	switch:maps/survival/void_desert/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_void_desert switch.data 1
execute if score #rg_void_desert switch.data matches 1 run data modify storage switch:maps to_regenerate.void_desert set value 2b
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68000 68000 68020 68100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 68000 68000 68020 68100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68020 68000 68040 68100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 68020 68000 68040 68100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68040 68000 68060 68100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 68040 68000 68060 68100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68060 68000 68080 68100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 68060 68000 68080 68100
execute if score #rg_void_desert switch.data matches 1 in minecraft:overworld run forceload add 68080 68000 68100 68100
execute if score #rg_void_desert switch.data matches 1 in switch:game run forceload add 68080 68000 68100 68100

execute if score #rg_void_desert switch.data matches 1 run scoreboard players set #rg_void_desert_y switch.data 100
execute if score #rg_void_desert switch.data matches 1 run scoreboard players set #rg_void_desert_mod switch.data 0
execute if score #rg_void_desert switch.data matches ..455 summon marker run function switch:maps/survival/void_desert/regeneration_on_marker

execute if score #rg_void_desert switch.data matches 456.. in switch:game run kill @e[type=item,x=68050,y=100,z=68050,distance=..1000]
execute if score #rg_void_desert switch.data matches 456.. run data remove storage switch:maps to_regenerate.void_desert

execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 68000 68000 68020 68100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 68000 68000 68020 68100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 68020 68000 68040 68100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 68020 68000 68040 68100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 68040 68000 68060 68100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 68040 68000 68060 68100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 68060 68000 68080 68100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 68060 68000 68080 68100
execute if score #rg_void_desert switch.data matches 456.. in minecraft:overworld run forceload remove 68080 68000 68100 68100
execute if score #rg_void_desert switch.data matches 456.. in switch:game run forceload remove 68080 68000 68100 68100

execute if score #rg_void_desert switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Void Desert","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_void_desert switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Void Desert` just regenerated!"}'
execute if score #rg_void_desert switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_void_desert switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"void_desert"}
execute if score #rg_void_desert switch.data matches 456.. run scoreboard players reset #rg_void_desert switch.data
execute if score #rg_void_desert switch.data matches 1.. run schedule function switch:maps/survival/void_desert/regenerate 1t

