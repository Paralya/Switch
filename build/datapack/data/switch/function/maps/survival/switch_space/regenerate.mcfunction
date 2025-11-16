
#> switch:maps/survival/switch_space/regenerate
#
# @within	switch:maps/survival/switch_space/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_switch_space switch.data 1
execute if score #rg_switch_space switch.data matches 1 run data modify storage switch:maps to_regenerate.switch_space set value 2b
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -160 -160 -151 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -160 -160 -151 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -151 -160 -141 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -151 -160 -141 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -141 -160 -132 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -141 -160 -132 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -132 -160 -122 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -132 -160 -122 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -122 -160 -113 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -122 -160 -113 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -113 -160 -104 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -113 -160 -104 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -104 -160 -94 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -104 -160 -94 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -94 -160 -85 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -94 -160 -85 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -85 -160 -75 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -85 -160 -75 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -75 -160 -66 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -75 -160 -66 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -66 -160 -56 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -66 -160 -56 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -56 -160 -47 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -56 -160 -47 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -47 -160 -38 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -47 -160 -38 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -38 -160 -28 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -38 -160 -28 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -28 -160 -19 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -28 -160 -19 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -19 -160 -9 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -19 -160 -9 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add -9 -160 0 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add -9 -160 0 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 0 -160 9 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 0 -160 9 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 9 -160 19 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 9 -160 19 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 19 -160 28 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 19 -160 28 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 28 -160 38 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 28 -160 38 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 38 -160 47 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 38 -160 47 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 47 -160 56 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 47 -160 56 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 56 -160 66 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 56 -160 66 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 66 -160 75 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 66 -160 75 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 75 -160 85 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 75 -160 85 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 85 -160 94 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 85 -160 94 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 94 -160 104 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 94 -160 104 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 104 -160 113 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 104 -160 113 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 113 -160 122 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 113 -160 122 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 122 -160 132 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 122 -160 132 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 132 -160 141 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 132 -160 141 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 141 -160 151 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 141 -160 151 160
execute if score #rg_switch_space switch.data matches 1 in minecraft:overworld run forceload add 151 -160 160 160
execute if score #rg_switch_space switch.data matches 1 in switch:game run forceload add 151 -160 160 160

execute if score #rg_switch_space switch.data matches 1 run scoreboard players set #rg_switch_space_y switch.data -64
execute if score #rg_switch_space switch.data matches 1 run scoreboard players set #rg_switch_space_mod switch.data 0
execute if score #rg_switch_space switch.data matches ..10914 summon marker run function switch:maps/survival/switch_space/regeneration_on_marker

execute if score #rg_switch_space switch.data matches 10915.. in switch:game run kill @e[type=item,x=0,y=-64,z=0,distance=..1000]
execute if score #rg_switch_space switch.data matches 10915.. run data remove storage switch:maps to_regenerate.switch_space

execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -160 -160 -151 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -160 -160 -151 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -151 -160 -141 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -151 -160 -141 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -141 -160 -132 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -141 -160 -132 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -132 -160 -122 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -132 -160 -122 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -122 -160 -113 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -122 -160 -113 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -113 -160 -104 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -113 -160 -104 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -104 -160 -94 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -104 -160 -94 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -94 -160 -85 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -94 -160 -85 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -85 -160 -75 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -85 -160 -75 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -75 -160 -66 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -75 -160 -66 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -66 -160 -56 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -66 -160 -56 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -56 -160 -47 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -56 -160 -47 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -47 -160 -38 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -47 -160 -38 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -38 -160 -28 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -38 -160 -28 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -28 -160 -19 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -28 -160 -19 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -19 -160 -9 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -19 -160 -9 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove -9 -160 0 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove -9 -160 0 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 0 -160 9 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 0 -160 9 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 9 -160 19 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 9 -160 19 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 19 -160 28 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 19 -160 28 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 28 -160 38 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 28 -160 38 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 38 -160 47 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 38 -160 47 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 47 -160 56 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 47 -160 56 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 56 -160 66 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 56 -160 66 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 66 -160 75 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 66 -160 75 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 75 -160 85 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 75 -160 85 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 85 -160 94 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 85 -160 94 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 94 -160 104 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 94 -160 104 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 104 -160 113 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 104 -160 113 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 113 -160 122 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 113 -160 122 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 122 -160 132 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 122 -160 132 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 132 -160 141 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 132 -160 141 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 141 -160 151 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 141 -160 151 160
execute if score #rg_switch_space switch.data matches 10915.. in minecraft:overworld run forceload remove 151 -160 160 160
execute if score #rg_switch_space switch.data matches 10915.. in switch:game run forceload remove 151 -160 160 160

execute if score #rg_switch_space switch.data matches 10915.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Switch Space","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_switch_space switch.data matches 10915.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Switch Space` just regenerated!"}'
execute if score #rg_switch_space switch.data matches 10915.. run function switch:engine/log_message/apply

execute if score #rg_switch_space switch.data matches 10915.. in switch:game run function switch:maps/regenerate_doors_macro {name:"switch_space"}
execute if score #rg_switch_space switch.data matches 10915.. run scoreboard players reset #rg_switch_space switch.data
execute if score #rg_switch_space switch.data matches 1.. run schedule function switch:maps/survival/switch_space/regenerate 1t

