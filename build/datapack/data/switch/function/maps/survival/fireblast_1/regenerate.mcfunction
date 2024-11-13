
#> switch:maps/survival/fireblast_1/regenerate
#
# @within	switch:maps/survival/fireblast_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_1 switch.data 1
execute if score #rg_fireblast_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_1 set value 2b
execute if score #rg_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163000 163000 163025 163075
execute if score #rg_fireblast_1 switch.data matches 1 in switch:game run forceload add 163000 163000 163025 163075
execute if score #rg_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163025 163000 163050 163075
execute if score #rg_fireblast_1 switch.data matches 1 in switch:game run forceload add 163025 163000 163050 163075
execute if score #rg_fireblast_1 switch.data matches 1 in minecraft:overworld run forceload add 163050 163000 163075 163075
execute if score #rg_fireblast_1 switch.data matches 1 in switch:game run forceload add 163050 163000 163075 163075

execute if score #rg_fireblast_1 switch.data matches 1 run scoreboard players set #rg_fireblast_1_y switch.data 0
execute if score #rg_fireblast_1 switch.data matches 1 run scoreboard players set #rg_fireblast_1_mod switch.data 0
execute if score #rg_fireblast_1 switch.data matches ..153 summon marker run function switch:maps/survival/fireblast_1/regeneration_on_marker

execute if score #rg_fireblast_1 switch.data matches 154.. in switch:game run kill @e[type=item,x=163037,y=0,z=163037,distance=..1000]
execute if score #rg_fireblast_1 switch.data matches 154.. run data remove storage switch:maps to_regenerate.fireblast_1

execute if score #rg_fireblast_1 switch.data matches 154.. in minecraft:overworld run forceload remove 163000 163000 163025 163075
execute if score #rg_fireblast_1 switch.data matches 154.. in switch:game run forceload remove 163000 163000 163025 163075

execute if score #rg_fireblast_1 switch.data matches 154.. in minecraft:overworld run forceload remove 163025 163000 163050 163075
execute if score #rg_fireblast_1 switch.data matches 154.. in switch:game run forceload remove 163025 163000 163050 163075

execute if score #rg_fireblast_1 switch.data matches 154.. in minecraft:overworld run forceload remove 163050 163000 163075 163075
execute if score #rg_fireblast_1 switch.data matches 154.. in switch:game run forceload remove 163050 163000 163075 163075

execute if score #rg_fireblast_1 switch.data matches 154.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"fireblast_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_fireblast_1 switch.data matches 154.. run data modify storage switch:main MessageToLog set value '{"text":"Map `fireblast_1` just regenerated!"}'
execute if score #rg_fireblast_1 switch.data matches 154.. run function switch:engine/log_message/apply

execute if score #rg_fireblast_1 switch.data matches 154.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fireblast_1"}
execute if score #rg_fireblast_1 switch.data matches 154.. run scoreboard players reset #rg_fireblast_1 switch.data
execute if score #rg_fireblast_1 switch.data matches 1.. run schedule function switch:maps/survival/fireblast_1/regenerate 1t
