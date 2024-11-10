
#> switch:maps/survival/mlg_a_coudre_1/regenerate
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mlg_a_coudre_1 switch.data 1
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.mlg_a_coudre_1 set value 2b
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 30968 30955 30990 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 30968 30955 30990 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 30990 30955 31012 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 30990 30955 31012 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31012 30955 31034 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31012 30955 31034 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31034 30955 31056 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31034 30955 31056 31049

execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_y switch.data 95
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0
execute if score #rg_mlg_a_coudre_1 switch.data matches ..504 summon marker run function switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run kill @e[type=item,x=31012,y=95,z=31002,distance=..1000]
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. run data remove storage switch:maps to_regenerate.mlg_a_coudre_1

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in minecraft:overworld run forceload remove 30968 30955 30990 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run forceload remove 30968 30955 30990 31049

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in minecraft:overworld run forceload remove 30990 30955 31012 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run forceload remove 30990 30955 31012 31049

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in minecraft:overworld run forceload remove 31012 30955 31034 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run forceload remove 31012 30955 31034 31049

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in minecraft:overworld run forceload remove 31034 30955 31056 31049
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run forceload remove 31034 30955 31056 31049

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"mlg_a_coudre_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. run data modify storage switch:main MessageToLog set value '{"text":"Map `mlg_a_coudre_1` just regenerated!"}'
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. run function switch:engine/log_message/apply

execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. in switch:game run function switch:maps/regenerate_doors_macro {name:"mlg_a_coudre_1"}
execute if score #rg_mlg_a_coudre_1 switch.data matches 505.. run scoreboard players reset #rg_mlg_a_coudre_1 switch.data
execute if score #rg_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

