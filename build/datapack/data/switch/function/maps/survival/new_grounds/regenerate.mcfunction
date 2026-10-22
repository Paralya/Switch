
#> switch:maps/survival/new_grounds/regenerate
#
# @within	switch:maps/survival/new_grounds/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_new_grounds switch.data 1
execute if score #rg_new_grounds switch.data matches 1 run data modify storage switch:maps to_regenerate.new_grounds set value 2b
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add -6000 0 -5977 93
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add -6000 0 -5977 93
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add -5977 0 -5954 93
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add -5977 0 -5954 93
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add -5954 0 -5930 93
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add -5954 0 -5930 93
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add -5930 0 -5907 93
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add -5930 0 -5907 93

execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_y switch.data 100
execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_mod switch.data 0
execute if score #rg_new_grounds switch.data matches ..168 summon marker run function switch:maps/survival/new_grounds/regeneration_on_marker

execute if score #rg_new_grounds switch.data matches 169.. in switch:game run kill @e[type=item,x=-5953,y=100,z=46,distance=..1000]
execute if score #rg_new_grounds switch.data matches 169.. run data remove storage switch:maps to_regenerate.new_grounds

execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove -6000 0 -5977 93
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove -6000 0 -5977 93
execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove -5977 0 -5954 93
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove -5977 0 -5954 93
execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove -5954 0 -5930 93
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove -5954 0 -5930 93
execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove -5930 0 -5907 93
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove -5930 0 -5907 93

execute if score #rg_new_grounds switch.data matches 169.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"New Grounds","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_new_grounds switch.data matches 169.. run function switch:engine/log_message/apply {message:"Map `New Grounds` just regenerated!"}

execute if score #rg_new_grounds switch.data matches 169.. in switch:game run function switch:maps/regenerate_doors_macro {name:"new_grounds"}
execute if score #rg_new_grounds switch.data matches 169.. run scoreboard players reset #rg_new_grounds switch.data
execute if score #rg_new_grounds switch.data matches 1.. run schedule function switch:maps/survival/new_grounds/regenerate 1t

