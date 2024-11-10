
#> switch:maps/survival/fireblast_2/regenerate
#
# @within	switch:maps/survival/fireblast_2/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_2 switch.data 1
execute if score #rg_fireblast_2 switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_2 set value 2b
execute if score #rg_fireblast_2 switch.data matches 1 in minecraft:overworld run forceload add 164000 164000 164025 164075
execute if score #rg_fireblast_2 switch.data matches 1 in switch:game run forceload add 164000 164000 164025 164075
execute if score #rg_fireblast_2 switch.data matches 1 in minecraft:overworld run forceload add 164025 164000 164050 164075
execute if score #rg_fireblast_2 switch.data matches 1 in switch:game run forceload add 164025 164000 164050 164075
execute if score #rg_fireblast_2 switch.data matches 1 in minecraft:overworld run forceload add 164050 164000 164075 164075
execute if score #rg_fireblast_2 switch.data matches 1 in switch:game run forceload add 164050 164000 164075 164075

execute if score #rg_fireblast_2 switch.data matches 1 run scoreboard players set #rg_fireblast_2_y switch.data 0
execute if score #rg_fireblast_2 switch.data matches 1 run scoreboard players set #rg_fireblast_2_mod switch.data 0
execute if score #rg_fireblast_2 switch.data matches ..153 summon marker run function switch:maps/survival/fireblast_2/regeneration_on_marker

execute if score #rg_fireblast_2 switch.data matches 154.. in switch:game run kill @e[type=item,x=164037,y=0,z=164037,distance=..1000]
execute if score #rg_fireblast_2 switch.data matches 154.. run data remove storage switch:maps to_regenerate.fireblast_2

execute if score #rg_fireblast_2 switch.data matches 154.. in minecraft:overworld run forceload remove 164000 164000 164025 164075
execute if score #rg_fireblast_2 switch.data matches 154.. in switch:game run forceload remove 164000 164000 164025 164075

execute if score #rg_fireblast_2 switch.data matches 154.. in minecraft:overworld run forceload remove 164025 164000 164050 164075
execute if score #rg_fireblast_2 switch.data matches 154.. in switch:game run forceload remove 164025 164000 164050 164075

execute if score #rg_fireblast_2 switch.data matches 154.. in minecraft:overworld run forceload remove 164050 164000 164075 164075
execute if score #rg_fireblast_2 switch.data matches 154.. in switch:game run forceload remove 164050 164000 164075 164075

execute if score #rg_fireblast_2 switch.data matches 154.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"fireblast_2","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_fireblast_2 switch.data matches 154.. run data modify storage switch:main MessageToLog set value '{"text":"Map `fireblast_2` just regenerated!"}'
execute if score #rg_fireblast_2 switch.data matches 154.. run function switch:engine/log_message/apply

execute if score #rg_fireblast_2 switch.data matches 154.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fireblast_2"}
execute if score #rg_fireblast_2 switch.data matches 154.. run scoreboard players reset #rg_fireblast_2 switch.data
execute if score #rg_fireblast_2 switch.data matches 1.. run schedule function switch:maps/survival/fireblast_2/regenerate 1t

