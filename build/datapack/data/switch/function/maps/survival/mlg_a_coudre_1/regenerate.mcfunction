
#> switch:maps/survival/mlg_a_coudre_1/regenerate
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mlg_a_coudre_1 switch.data 1
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.mlg_a_coudre_1 set value 2b
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31000 31000 31019 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31000 31000 31019 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31019 31000 31038 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31019 31000 31038 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31038 31000 31056 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31038 31000 31056 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 31056 31000 31075 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 31056 31000 31075 31090

execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_y switch.data 100
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0
execute if score #rg_mlg_a_coudre_1 switch.data matches ..520 summon marker run function switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run kill @e[type=item,x=31037,y=100,z=31045,distance=..1000]
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run data remove storage switch:maps to_regenerate.mlg_a_coudre_1

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 31000 31000 31019 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 31000 31000 31019 31090

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 31019 31000 31038 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 31019 31000 31038 31090

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 31038 31000 31056 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 31038 31000 31056 31090

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 31056 31000 31075 31090
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 31056 31000 31075 31090

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"MLG à coudre 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run data modify storage switch:main MessageToLog set value '{"text":"Map `MLG à coudre 1` just regenerated!"}'
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run function switch:engine/log_message/apply

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"mlg_a_coudre_1"}
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run scoreboard players reset #rg_mlg_a_coudre_1 switch.data
execute if score #rg_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

