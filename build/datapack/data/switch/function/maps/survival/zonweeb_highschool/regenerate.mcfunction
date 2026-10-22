
#> switch:maps/survival/zonweeb_highschool/regenerate
#
# @within	switch:maps/survival/zonweeb_highschool/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_zonweeb_highschool switch.data 1
execute if score #rg_zonweeb_highschool switch.data matches 1 run data modify storage switch:maps to_regenerate.zonweeb_highschool set value 2b
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -6000 -8000 -5988 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -6000 -8000 -5988 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5988 -8000 -5975 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5988 -8000 -5975 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5975 -8000 -5962 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5975 -8000 -5962 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5962 -8000 -5950 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5962 -8000 -5950 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5950 -8000 -5938 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5950 -8000 -5938 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5938 -8000 -5925 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5938 -8000 -5925 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5925 -8000 -5912 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5925 -8000 -5912 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5912 -8000 -5900 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5912 -8000 -5900 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5900 -8000 -5888 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5900 -8000 -5888 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in minecraft:overworld run forceload add -5888 -8000 -5875 -7782
execute if score #rg_zonweeb_highschool switch.data matches 1 in switch:game run forceload add -5888 -8000 -5875 -7782

execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_y switch.data 100
execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0
execute if score #rg_zonweeb_highschool switch.data matches ..590 summon marker run function switch:maps/survival/zonweeb_highschool/regeneration_on_marker

execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run kill @e[type=item,x=-5937,y=100,z=-7891,distance=..1000]
execute if score #rg_zonweeb_highschool switch.data matches 591.. run data remove storage switch:maps to_regenerate.zonweeb_highschool

execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -6000 -8000 -5988 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -6000 -8000 -5988 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5988 -8000 -5975 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5988 -8000 -5975 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5975 -8000 -5962 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5975 -8000 -5962 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5962 -8000 -5950 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5962 -8000 -5950 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5950 -8000 -5938 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5950 -8000 -5938 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5938 -8000 -5925 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5938 -8000 -5925 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5925 -8000 -5912 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5925 -8000 -5912 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5912 -8000 -5900 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5912 -8000 -5900 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5900 -8000 -5888 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5900 -8000 -5888 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in minecraft:overworld run forceload remove -5888 -8000 -5875 -7782
execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run forceload remove -5888 -8000 -5875 -7782

execute if score #rg_zonweeb_highschool switch.data matches 591.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"A Japanese High School","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_zonweeb_highschool switch.data matches 591.. run function switch:engine/log_message/apply {message:"Map `A Japanese High School` just regenerated!"}

execute if score #rg_zonweeb_highschool switch.data matches 591.. in switch:game run function switch:maps/regenerate_doors_macro {name:"zonweeb_highschool"}
execute if score #rg_zonweeb_highschool switch.data matches 591.. run scoreboard players reset #rg_zonweeb_highschool switch.data
execute if score #rg_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/regenerate 1t

