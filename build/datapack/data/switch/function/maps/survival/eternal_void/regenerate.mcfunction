
#> switch:maps/survival/eternal_void/regenerate
#
# @within	switch:maps/survival/eternal_void/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_eternal_void switch.data 1
execute if score #rg_eternal_void switch.data matches 1 run data modify storage switch:maps to_regenerate.eternal_void set value 2b
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8000 -8000 8020 -7900
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 8000 -8000 8020 -7900
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8020 -8000 8040 -7900
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 8020 -8000 8040 -7900
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8040 -8000 8060 -7900
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 8040 -8000 8060 -7900
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8060 -8000 8080 -7900
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 8060 -8000 8080 -7900
execute if score #rg_eternal_void switch.data matches 1 in minecraft:overworld run forceload add 8080 -8000 8100 -7900
execute if score #rg_eternal_void switch.data matches 1 in switch:game run forceload add 8080 -8000 8100 -7900

execute if score #rg_eternal_void switch.data matches 1 run scoreboard players set #rg_eternal_void_y switch.data 100
execute if score #rg_eternal_void switch.data matches 1 run scoreboard players set #rg_eternal_void_mod switch.data 0
execute if score #rg_eternal_void switch.data matches ..455 summon marker run function switch:maps/survival/eternal_void/regeneration_on_marker

execute if score #rg_eternal_void switch.data matches 456.. in switch:game run kill @e[type=item,x=8050,y=100,z=-7950,distance=..1000]
execute if score #rg_eternal_void switch.data matches 456.. run data remove storage switch:maps to_regenerate.eternal_void

execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 8000 -8000 8020 -7900
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 8000 -8000 8020 -7900
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 8020 -8000 8040 -7900
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 8020 -8000 8040 -7900
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 8040 -8000 8060 -7900
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 8040 -8000 8060 -7900
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 8060 -8000 8080 -7900
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 8060 -8000 8080 -7900
execute if score #rg_eternal_void switch.data matches 456.. in minecraft:overworld run forceload remove 8080 -8000 8100 -7900
execute if score #rg_eternal_void switch.data matches 456.. in switch:game run forceload remove 8080 -8000 8100 -7900

execute if score #rg_eternal_void switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Eternal Void","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_eternal_void switch.data matches 456.. run function switch:engine/log_message/apply {message:"Map `Eternal Void` just regenerated!"}

execute if score #rg_eternal_void switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"eternal_void"}
execute if score #rg_eternal_void switch.data matches 456.. run scoreboard players reset #rg_eternal_void switch.data
execute if score #rg_eternal_void switch.data matches 1.. run schedule function switch:maps/survival/eternal_void/regenerate 1t

