
#> switch:maps/survival/ctf_forest_castles/regenerate
#
# @within	switch:maps/survival/ctf_forest_castles/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_forest_castles switch.data 1
execute if score #rg_ctf_forest_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_forest_castles set value 2b
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -12000 -12000 -11987 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -12000 -12000 -11987 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11987 -12000 -11975 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11987 -12000 -11975 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11975 -12000 -11962 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11975 -12000 -11962 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11962 -12000 -11950 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11962 -12000 -11950 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11950 -12000 -11937 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11950 -12000 -11937 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11937 -12000 -11924 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11937 -12000 -11924 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11924 -12000 -11912 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11924 -12000 -11912 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add -11912 -12000 -11899 -11784
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add -11912 -12000 -11899 -11784

execute if score #rg_ctf_forest_castles switch.data matches 1 run scoreboard players set #rg_ctf_forest_castles_y switch.data 100
execute if score #rg_ctf_forest_castles switch.data matches 1 run scoreboard players set #rg_ctf_forest_castles_mod switch.data 0
execute if score #rg_ctf_forest_castles switch.data matches ..520 summon marker run function switch:maps/survival/ctf_forest_castles/regeneration_on_marker

execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run kill @e[type=item,x=-11949,y=100,z=-11892,distance=..1000]
execute if score #rg_ctf_forest_castles switch.data matches 521.. run data remove storage switch:maps to_regenerate.ctf_forest_castles

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -12000 -12000 -11987 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -12000 -12000 -11987 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11987 -12000 -11975 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11987 -12000 -11975 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11975 -12000 -11962 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11975 -12000 -11962 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11962 -12000 -11950 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11962 -12000 -11950 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11950 -12000 -11937 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11950 -12000 -11937 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11937 -12000 -11924 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11937 -12000 -11924 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11924 -12000 -11912 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11924 -12000 -11912 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove -11912 -12000 -11899 -11784
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove -11912 -12000 -11899 -11784

execute if score #rg_ctf_forest_castles switch.data matches 521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Forest Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_forest_castles switch.data matches 521.. run function switch:engine/log_message/apply {message:"Map `Forest Castle` just regenerated!"}

execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_forest_castles"}
execute if score #rg_ctf_forest_castles switch.data matches 521.. run scoreboard players reset #rg_ctf_forest_castles switch.data
execute if score #rg_ctf_forest_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_forest_castles/regenerate 1t

