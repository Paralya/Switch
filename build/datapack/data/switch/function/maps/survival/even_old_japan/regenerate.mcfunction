
#> switch:maps/survival/even_old_japan/regenerate
#
# @within	switch:maps/survival/even_old_japan/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_even_old_japan switch.data 1
execute if score #rg_even_old_japan switch.data matches 1 run data modify storage switch:maps to_regenerate.even_old_japan set value 2b
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162000 162000 162020 162100
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 162000 162000 162020 162100
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162020 162000 162040 162100
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 162020 162000 162040 162100
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162040 162000 162060 162100
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 162040 162000 162060 162100
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162060 162000 162080 162100
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 162060 162000 162080 162100
execute if score #rg_even_old_japan switch.data matches 1 in minecraft:overworld run forceload add 162080 162000 162100 162100
execute if score #rg_even_old_japan switch.data matches 1 in switch:game run forceload add 162080 162000 162100 162100

execute if score #rg_even_old_japan switch.data matches 1 run scoreboard players set #rg_even_old_japan_y switch.data 100
execute if score #rg_even_old_japan switch.data matches 1 run scoreboard players set #rg_even_old_japan_mod switch.data 0
execute if score #rg_even_old_japan switch.data matches ..265 summon marker run function switch:maps/survival/even_old_japan/regeneration_on_marker

execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run kill @e[type=item,x=162050,y=100,z=162050,distance=..1000]
execute if score #rg_even_old_japan switch.data matches 266.. run data remove storage switch:maps to_regenerate.even_old_japan

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 162000 162000 162020 162100
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 162000 162000 162020 162100

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 162020 162000 162040 162100
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 162020 162000 162040 162100

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 162040 162000 162060 162100
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 162040 162000 162060 162100

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 162060 162000 162080 162100
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 162060 162000 162080 162100

execute if score #rg_even_old_japan switch.data matches 266.. in minecraft:overworld run forceload remove 162080 162000 162100 162100
execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run forceload remove 162080 162000 162100 162100

execute if score #rg_even_old_japan switch.data matches 266.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"even_old_japan","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_even_old_japan switch.data matches 266.. run data modify storage switch:main MessageToLog set value '{"text":"Map `even_old_japan` just regenerated!"}'
execute if score #rg_even_old_japan switch.data matches 266.. run function switch:engine/log_message/apply

execute if score #rg_even_old_japan switch.data matches 266.. in switch:game run function switch:maps/regenerate_doors_macro {name:"even_old_japan"}
execute if score #rg_even_old_japan switch.data matches 266.. run scoreboard players reset #rg_even_old_japan switch.data
execute if score #rg_even_old_japan switch.data matches 1.. run schedule function switch:maps/survival/even_old_japan/regenerate 1t

