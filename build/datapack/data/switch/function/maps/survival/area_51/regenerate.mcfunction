
#> switch:maps/survival/area_51/regenerate
#
# @within	switch:maps/survival/area_51/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_area_51 switch.data 1
execute if score #rg_area_51 switch.data matches 1 run data modify storage switch:maps to_regenerate.area_51 set value 2b
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1947 1937 1965 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 1947 1937 1965 2063
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1965 1937 1983 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 1965 1937 1983 2063
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 1983 1937 2001 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 1983 1937 2001 2063
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2001 1937 2019 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2001 1937 2019 2063
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2019 1937 2037 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2019 1937 2037 2063
execute if score #rg_area_51 switch.data matches 1 in minecraft:overworld run forceload add 2037 1937 2055 2063
execute if score #rg_area_51 switch.data matches 1 in switch:game run forceload add 2037 1937 2055 2063

execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_y switch.data 0
execute if score #rg_area_51 switch.data matches 1 run scoreboard players set #rg_area_51_mod switch.data 0
execute if score #rg_area_51 switch.data matches ..558 summon marker run function switch:maps/survival/area_51/regeneration_on_marker

execute if score #rg_area_51 switch.data matches 559.. in switch:game run kill @e[type=item,x=2001,y=0,z=2000,distance=..1000]
execute if score #rg_area_51 switch.data matches 559.. run data remove storage switch:maps to_regenerate.area_51

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 1947 1937 1965 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 1947 1937 1965 2063

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 1965 1937 1983 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 1965 1937 1983 2063

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 1983 1937 2001 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 1983 1937 2001 2063

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 2001 1937 2019 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 2001 1937 2019 2063

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 2019 1937 2037 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 2019 1937 2037 2063

execute if score #rg_area_51 switch.data matches 559.. in minecraft:overworld run forceload remove 2037 1937 2055 2063
execute if score #rg_area_51 switch.data matches 559.. in switch:game run forceload remove 2037 1937 2055 2063

execute if score #rg_area_51 switch.data matches 559.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"area_51","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_area_51 switch.data matches 559.. run data modify storage switch:main MessageToLog set value '{"text":"Map `area_51` just regenerated!"}'
execute if score #rg_area_51 switch.data matches 559.. run function switch:engine/log_message/apply

execute if score #rg_area_51 switch.data matches 559.. in switch:game run function switch:maps/regenerate_doors_macro {name:"area_51"}
execute if score #rg_area_51 switch.data matches 559.. run scoreboard players reset #rg_area_51 switch.data
execute if score #rg_area_51 switch.data matches 1.. run schedule function switch:maps/survival/area_51/regenerate 1t

