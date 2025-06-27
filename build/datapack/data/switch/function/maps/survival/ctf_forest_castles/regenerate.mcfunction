
#> switch:maps/survival/ctf_forest_castles/regenerate
#
# @within	switch:maps/survival/ctf_forest_castles/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_forest_castles switch.data 1
execute if score #rg_ctf_forest_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_forest_castles set value 2b
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150000 150000 150013 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150000 150000 150013 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150013 150000 150025 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150013 150000 150025 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150025 150000 150038 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150025 150000 150038 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150038 150000 150050 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150038 150000 150050 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150050 150000 150063 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150050 150000 150063 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150063 150000 150076 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150063 150000 150076 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150076 150000 150088 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150076 150000 150088 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in minecraft:overworld run forceload add 150088 150000 150101 150216
execute if score #rg_ctf_forest_castles switch.data matches 1 in switch:game run forceload add 150088 150000 150101 150216

execute if score #rg_ctf_forest_castles switch.data matches 1 run scoreboard players set #rg_ctf_forest_castles_y switch.data 100
execute if score #rg_ctf_forest_castles switch.data matches 1 run scoreboard players set #rg_ctf_forest_castles_mod switch.data 0
execute if score #rg_ctf_forest_castles switch.data matches ..520 summon marker run function switch:maps/survival/ctf_forest_castles/regeneration_on_marker

execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run kill @e[type=item,x=150050,y=100,z=150108,distance=..1000]
execute if score #rg_ctf_forest_castles switch.data matches 521.. run data remove storage switch:maps to_regenerate.ctf_forest_castles

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150000 150000 150013 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150000 150000 150013 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150013 150000 150025 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150013 150000 150025 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150025 150000 150038 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150025 150000 150038 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150038 150000 150050 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150038 150000 150050 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150050 150000 150063 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150050 150000 150063 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150063 150000 150076 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150063 150000 150076 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150076 150000 150088 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150076 150000 150088 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. in minecraft:overworld run forceload remove 150088 150000 150101 150216
execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run forceload remove 150088 150000 150101 150216

execute if score #rg_ctf_forest_castles switch.data matches 521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"ctf_forest_castles","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_ctf_forest_castles switch.data matches 521.. run data modify storage switch:main MessageToLog set value '{"text":"Map `ctf_forest_castles` just regenerated!"}'
execute if score #rg_ctf_forest_castles switch.data matches 521.. run function switch:engine/log_message/apply

execute if score #rg_ctf_forest_castles switch.data matches 521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_forest_castles"}
execute if score #rg_ctf_forest_castles switch.data matches 521.. run scoreboard players reset #rg_ctf_forest_castles switch.data
execute if score #rg_ctf_forest_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_forest_castles/regenerate 1t

