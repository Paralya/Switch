
#> switch:maps/survival/fireblast_3/regenerate
#
# @within	switch:maps/survival/fireblast_3/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_3 switch.data 1
execute if score #rg_fireblast_3 switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_3 set value 2b
execute if score #rg_fireblast_3 switch.data matches 1 in minecraft:overworld run forceload add 165000 165000 165025 165075
execute if score #rg_fireblast_3 switch.data matches 1 in switch:game run forceload add 165000 165000 165025 165075
execute if score #rg_fireblast_3 switch.data matches 1 in minecraft:overworld run forceload add 165025 165000 165050 165075
execute if score #rg_fireblast_3 switch.data matches 1 in switch:game run forceload add 165025 165000 165050 165075
execute if score #rg_fireblast_3 switch.data matches 1 in minecraft:overworld run forceload add 165050 165000 165075 165075
execute if score #rg_fireblast_3 switch.data matches 1 in switch:game run forceload add 165050 165000 165075 165075

execute if score #rg_fireblast_3 switch.data matches 1 run scoreboard players set #rg_fireblast_3_y switch.data 0
execute if score #rg_fireblast_3 switch.data matches 1 run scoreboard players set #rg_fireblast_3_mod switch.data 0
execute if score #rg_fireblast_3 switch.data matches ..153 summon marker run function switch:maps/survival/fireblast_3/regeneration_on_marker

execute if score #rg_fireblast_3 switch.data matches 154.. in switch:game run kill @e[type=item,x=165037,y=0,z=165037,distance=..1000]
execute if score #rg_fireblast_3 switch.data matches 154.. run data remove storage switch:maps to_regenerate.fireblast_3

execute if score #rg_fireblast_3 switch.data matches 154.. in minecraft:overworld run forceload remove 165000 165000 165025 165075
execute if score #rg_fireblast_3 switch.data matches 154.. in switch:game run forceload remove 165000 165000 165025 165075

execute if score #rg_fireblast_3 switch.data matches 154.. in minecraft:overworld run forceload remove 165025 165000 165050 165075
execute if score #rg_fireblast_3 switch.data matches 154.. in switch:game run forceload remove 165025 165000 165050 165075

execute if score #rg_fireblast_3 switch.data matches 154.. in minecraft:overworld run forceload remove 165050 165000 165075 165075
execute if score #rg_fireblast_3 switch.data matches 154.. in switch:game run forceload remove 165050 165000 165075 165075

execute if score #rg_fireblast_3 switch.data matches 154.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"fireblast_3","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_fireblast_3 switch.data matches 154.. run data modify storage switch:main MessageToLog set value '{"text":"Map `fireblast_3` just regenerated!"}'
execute if score #rg_fireblast_3 switch.data matches 154.. run function switch:engine/log_message/apply

execute if score #rg_fireblast_3 switch.data matches 154.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fireblast_3"}
execute if score #rg_fireblast_3 switch.data matches 154.. run scoreboard players reset #rg_fireblast_3 switch.data
execute if score #rg_fireblast_3 switch.data matches 1.. run schedule function switch:maps/survival/fireblast_3/regenerate 1t

