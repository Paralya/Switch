
#> switch:maps/survival/leather_boots/regenerate
#
# @within	switch:maps/survival/leather_boots/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_leather_boots switch.data 1
execute if score #rg_leather_boots switch.data matches 1 run data modify storage switch:maps to_regenerate.leather_boots set value 2b
execute if score #rg_leather_boots switch.data matches 1 in minecraft:overworld run forceload add 63000 63000 63020 63100
execute if score #rg_leather_boots switch.data matches 1 in switch:game run forceload add 63000 63000 63020 63100
execute if score #rg_leather_boots switch.data matches 1 in minecraft:overworld run forceload add 63020 63000 63040 63100
execute if score #rg_leather_boots switch.data matches 1 in switch:game run forceload add 63020 63000 63040 63100
execute if score #rg_leather_boots switch.data matches 1 in minecraft:overworld run forceload add 63040 63000 63060 63100
execute if score #rg_leather_boots switch.data matches 1 in switch:game run forceload add 63040 63000 63060 63100
execute if score #rg_leather_boots switch.data matches 1 in minecraft:overworld run forceload add 63060 63000 63080 63100
execute if score #rg_leather_boots switch.data matches 1 in switch:game run forceload add 63060 63000 63080 63100
execute if score #rg_leather_boots switch.data matches 1 in minecraft:overworld run forceload add 63080 63000 63100 63100
execute if score #rg_leather_boots switch.data matches 1 in switch:game run forceload add 63080 63000 63100 63100

execute if score #rg_leather_boots switch.data matches 1 run scoreboard players set #rg_leather_boots_y switch.data 100
execute if score #rg_leather_boots switch.data matches 1 run scoreboard players set #rg_leather_boots_mod switch.data 0
execute if score #rg_leather_boots switch.data matches ..455 summon marker run function switch:maps/survival/leather_boots/regeneration_on_marker

execute if score #rg_leather_boots switch.data matches 456.. in switch:game run kill @e[type=item,x=63050,y=100,z=63050,distance=..1000]
execute if score #rg_leather_boots switch.data matches 456.. run data remove storage switch:maps to_regenerate.leather_boots

execute if score #rg_leather_boots switch.data matches 456.. in minecraft:overworld run forceload remove 63000 63000 63020 63100
execute if score #rg_leather_boots switch.data matches 456.. in switch:game run forceload remove 63000 63000 63020 63100
execute if score #rg_leather_boots switch.data matches 456.. in minecraft:overworld run forceload remove 63020 63000 63040 63100
execute if score #rg_leather_boots switch.data matches 456.. in switch:game run forceload remove 63020 63000 63040 63100
execute if score #rg_leather_boots switch.data matches 456.. in minecraft:overworld run forceload remove 63040 63000 63060 63100
execute if score #rg_leather_boots switch.data matches 456.. in switch:game run forceload remove 63040 63000 63060 63100
execute if score #rg_leather_boots switch.data matches 456.. in minecraft:overworld run forceload remove 63060 63000 63080 63100
execute if score #rg_leather_boots switch.data matches 456.. in switch:game run forceload remove 63060 63000 63080 63100
execute if score #rg_leather_boots switch.data matches 456.. in minecraft:overworld run forceload remove 63080 63000 63100 63100
execute if score #rg_leather_boots switch.data matches 456.. in switch:game run forceload remove 63080 63000 63100 63100

execute if score #rg_leather_boots switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Where're my leather boots?","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_leather_boots switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Where\'re my leather boots?` just regenerated!"}'
execute if score #rg_leather_boots switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_leather_boots switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"leather_boots"}
execute if score #rg_leather_boots switch.data matches 456.. run scoreboard players reset #rg_leather_boots switch.data
execute if score #rg_leather_boots switch.data matches 1.. run schedule function switch:maps/survival/leather_boots/regenerate 1t

