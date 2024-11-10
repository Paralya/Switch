
#> switch:maps/survival/red_temple/regenerate
#
# @within	switch:maps/survival/red_temple/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_red_temple switch.data 1
execute if score #rg_red_temple switch.data matches 1 run data modify storage switch:maps to_regenerate.red_temple set value 2b
execute if score #rg_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87000 87000 87015 87094
execute if score #rg_red_temple switch.data matches 1 in switch:game run forceload add 87000 87000 87015 87094
execute if score #rg_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87015 87000 87030 87094
execute if score #rg_red_temple switch.data matches 1 in switch:game run forceload add 87015 87000 87030 87094
execute if score #rg_red_temple switch.data matches 1 in minecraft:overworld run forceload add 87030 87000 87045 87094
execute if score #rg_red_temple switch.data matches 1 in switch:game run forceload add 87030 87000 87045 87094

execute if score #rg_red_temple switch.data matches 1 run scoreboard players set #rg_red_temple_y switch.data 0
execute if score #rg_red_temple switch.data matches 1 run scoreboard players set #rg_red_temple_mod switch.data 0
execute if score #rg_red_temple switch.data matches ..123 summon marker run function switch:maps/survival/red_temple/regeneration_on_marker

execute if score #rg_red_temple switch.data matches 124.. in switch:game run kill @e[type=item,x=87022,y=0,z=87047,distance=..1000]
execute if score #rg_red_temple switch.data matches 124.. run data remove storage switch:maps to_regenerate.red_temple

execute if score #rg_red_temple switch.data matches 124.. in minecraft:overworld run forceload remove 87000 87000 87015 87094
execute if score #rg_red_temple switch.data matches 124.. in switch:game run forceload remove 87000 87000 87015 87094

execute if score #rg_red_temple switch.data matches 124.. in minecraft:overworld run forceload remove 87015 87000 87030 87094
execute if score #rg_red_temple switch.data matches 124.. in switch:game run forceload remove 87015 87000 87030 87094

execute if score #rg_red_temple switch.data matches 124.. in minecraft:overworld run forceload remove 87030 87000 87045 87094
execute if score #rg_red_temple switch.data matches 124.. in switch:game run forceload remove 87030 87000 87045 87094

execute if score #rg_red_temple switch.data matches 124.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"red_temple","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_red_temple switch.data matches 124.. run data modify storage switch:main MessageToLog set value '{"text":"Map `red_temple` just regenerated!"}'
execute if score #rg_red_temple switch.data matches 124.. run function switch:engine/log_message/apply

execute if score #rg_red_temple switch.data matches 124.. in switch:game run function switch:maps/regenerate_doors_macro {name:"red_temple"}
execute if score #rg_red_temple switch.data matches 124.. run scoreboard players reset #rg_red_temple switch.data
execute if score #rg_red_temple switch.data matches 1.. run schedule function switch:maps/survival/red_temple/regenerate 1t

