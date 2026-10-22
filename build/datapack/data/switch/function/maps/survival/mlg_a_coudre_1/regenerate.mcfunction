
#> switch:maps/survival/mlg_a_coudre_1/regenerate
#
# @within	switch:maps/survival/mlg_a_coudre_1/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_mlg_a_coudre_1 switch.data 1
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.mlg_a_coudre_1 set value 2b
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 6000 -2000 6019 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 6000 -2000 6019 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 6019 -2000 6038 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 6019 -2000 6038 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 6038 -2000 6056 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 6038 -2000 6056 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 6056 -2000 6075 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 in switch:game run forceload add 6056 -2000 6075 -1910

execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_y switch.data 100
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0
execute if score #rg_mlg_a_coudre_1 switch.data matches ..520 summon marker run function switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run kill @e[type=item,x=6037,y=100,z=-1955,distance=..1000]
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run data remove storage switch:maps to_regenerate.mlg_a_coudre_1

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 6000 -2000 6019 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 6000 -2000 6019 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 6019 -2000 6038 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 6019 -2000 6038 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 6038 -2000 6056 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 6038 -2000 6056 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in minecraft:overworld run forceload remove 6056 -2000 6075 -1910
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. in switch:game run forceload remove 6056 -2000 6075 -1910

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"MLG à coudre 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run function switch:engine/log_message/apply {message:"Map `MLG à coudre 1` just regenerated!"}

execute if score #rg_mlg_a_coudre_1 switch.data matches 521.. run scoreboard players reset #rg_mlg_a_coudre_1 switch.data
execute if score #rg_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

