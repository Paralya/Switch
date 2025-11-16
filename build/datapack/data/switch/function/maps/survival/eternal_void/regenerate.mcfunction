
#> switch:maps/survival/eternal_void/regenerate
#
# @within	switch:maps/survival/eternal_void/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_eternal_void switch.data 1
execute if score #rg_eternal_void switch.data matches 1 run data modify storage switch:maps to_regenerate.eternal_void set value 2b
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 61000 61000 61020 61100
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 61000 61000 61020 61100
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 61020 61000 61040 61100
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 61020 61000 61040 61100
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 61040 61000 61060 61100
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 61040 61000 61060 61100
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 61060 61000 61080 61100
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 61060 61000 61080 61100
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 61080 61000 61100 61100
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 61080 61000 61100 61100

execute if score #rg_eternal_void switch.data matches 1 run scoreboard players set #rg_eternal_void_y switch.data 100
execute if score #rg_eternal_void switch.data matches 1 run scoreboard players set #rg_eternal_void_mod switch.data 0
execute if score #rg_eternal_void switch.data matches ..455 summon marker run function switch:maps/survival/eternal_void/regeneration_on_marker

execute if score #rg_eternal_void switch.data matches 456.. in switch:game run kill @e[type=item,x=61050,y=100,z=61050,distance=..1000]
execute if score #rg_eternal_void switch.data matches 456.. run data remove storage switch:maps to_regenerate.eternal_void

execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 61000 61000 61020 61100
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 61000 61000 61020 61100
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 61020 61000 61040 61100
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 61020 61000 61040 61100
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 61040 61000 61060 61100
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 61040 61000 61060 61100
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 61060 61000 61080 61100
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 61060 61000 61080 61100
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 61080 61000 61100 61100
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 61080 61000 61100 61100

execute if score #rg_eternal_void switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Eternal Void","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_eternal_void switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Eternal Void` just regenerated!"}'
execute if score #rg_eternal_void switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_eternal_void switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"eternal_void"}
execute if score #rg_eternal_void switch.data matches 456.. run scoreboard players reset #rg_eternal_void switch.data
execute if score #rg_eternal_void switch.data matches 1.. run schedule function switch:maps/survival/eternal_void/regenerate 1t

