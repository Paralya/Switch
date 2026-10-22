
#> switch:maps/survival/scartmania/regenerate
#
# @within	switch:maps/survival/scartmania/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_scartmania switch.data 1
execute if score #rg_scartmania switch.data matches 1 run data modify storage switch:maps to_regenerate.scartmania set value 2b
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2000 -8000 2015 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2000 -8000 2015 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2015 -8000 2029 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2015 -8000 2029 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2029 -8000 2044 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2029 -8000 2044 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2044 -8000 2058 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2044 -8000 2058 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2058 -8000 2073 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2058 -8000 2073 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2073 -8000 2087 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2073 -8000 2087 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2087 -8000 2102 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2087 -8000 2102 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2102 -8000 2116 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2102 -8000 2116 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2116 -8000 2131 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2116 -8000 2131 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2131 -8000 2145 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2131 -8000 2145 -7812
execute if score #rg_scartmania switch.data matches 1 in minecraft:overworld run forceload add 2145 -8000 2160 -7812
execute if score #rg_scartmania switch.data matches 1 in switch:game run forceload add 2145 -8000 2160 -7812

execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_y switch.data 100
execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_mod switch.data 0
execute if score #rg_scartmania switch.data matches ..1012 summon marker run function switch:maps/survival/scartmania/regeneration_on_marker

execute if score #rg_scartmania switch.data matches 1013.. in switch:game run kill @e[type=item,x=2080,y=100,z=-7906,distance=..1000]
execute if score #rg_scartmania switch.data matches 1013.. run data remove storage switch:maps to_regenerate.scartmania

execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2000 -8000 2015 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2000 -8000 2015 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2015 -8000 2029 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2015 -8000 2029 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2029 -8000 2044 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2029 -8000 2044 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2044 -8000 2058 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2044 -8000 2058 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2058 -8000 2073 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2058 -8000 2073 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2073 -8000 2087 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2073 -8000 2087 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2087 -8000 2102 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2087 -8000 2102 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2102 -8000 2116 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2102 -8000 2116 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2116 -8000 2131 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2116 -8000 2131 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2131 -8000 2145 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2131 -8000 2145 -7812
execute if score #rg_scartmania switch.data matches 1013.. in minecraft:overworld run forceload remove 2145 -8000 2160 -7812
execute if score #rg_scartmania switch.data matches 1013.. in switch:game run forceload remove 2145 -8000 2160 -7812

execute if score #rg_scartmania switch.data matches 1013.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Scartmania","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"50","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_scartmania switch.data matches 1013.. run function switch:engine/log_message/apply {message:"Map `Scartmania` just regenerated!"}

execute if score #rg_scartmania switch.data matches 1013.. in switch:game run function switch:maps/regenerate_doors_macro {name:"scartmania"}
execute if score #rg_scartmania switch.data matches 1013.. run scoreboard players reset #rg_scartmania switch.data
execute if score #rg_scartmania switch.data matches 1.. run schedule function switch:maps/survival/scartmania/regenerate 1t

