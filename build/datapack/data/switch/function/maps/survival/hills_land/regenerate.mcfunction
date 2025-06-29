
#> switch:maps/survival/hills_land/regenerate
#
# @within	switch:maps/survival/hills_land/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_hills_land switch.data 1
execute if score #rg_hills_land switch.data matches 1 run data modify storage switch:maps to_regenerate.hills_land set value 2b
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20332 19983 20345 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20332 19983 20345 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20345 19983 20358 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20345 19983 20358 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20358 19983 20371 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20358 19983 20371 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20371 19983 20384 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20371 19983 20384 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20384 19983 20396 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20384 19983 20396 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20396 19983 20409 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20396 19983 20409 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20409 19983 20422 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20409 19983 20422 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20422 19983 20435 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20422 19983 20435 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20435 19983 20448 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20435 19983 20448 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20448 19983 20461 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20448 19983 20461 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20461 19983 20474 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20461 19983 20474 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20474 19983 20487 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20474 19983 20487 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20487 19983 20500 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20487 19983 20500 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20500 19983 20512 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20500 19983 20512 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20512 19983 20525 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20512 19983 20525 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20525 19983 20538 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20525 19983 20538 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20538 19983 20551 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20538 19983 20551 20210
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 20551 19983 20564 20210
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 20551 19983 20564 20210

execute if score #rg_hills_land switch.data matches 1 run scoreboard players set #rg_hills_land_y switch.data 85
execute if score #rg_hills_land switch.data matches 1 run scoreboard players set #rg_hills_land_mod switch.data 0
execute if score #rg_hills_land switch.data matches ..1188 summon marker run function switch:maps/survival/hills_land/regeneration_on_marker

execute if score #rg_hills_land switch.data matches 1189.. in switch:game run kill @e[type=item,x=20448,y=85,z=20096,distance=..1000]
execute if score #rg_hills_land switch.data matches 1189.. run data remove storage switch:maps to_regenerate.hills_land

execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20332 19983 20345 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20332 19983 20345 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20345 19983 20358 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20345 19983 20358 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20358 19983 20371 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20358 19983 20371 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20371 19983 20384 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20371 19983 20384 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20384 19983 20396 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20384 19983 20396 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20396 19983 20409 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20396 19983 20409 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20409 19983 20422 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20409 19983 20422 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20422 19983 20435 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20422 19983 20435 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20435 19983 20448 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20435 19983 20448 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20448 19983 20461 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20448 19983 20461 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20461 19983 20474 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20461 19983 20474 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20474 19983 20487 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20474 19983 20487 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20487 19983 20500 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20487 19983 20500 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20500 19983 20512 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20500 19983 20512 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20512 19983 20525 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20512 19983 20525 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20525 19983 20538 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20525 19983 20538 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20538 19983 20551 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20538 19983 20551 20210
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 20551 19983 20564 20210
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 20551 19983 20564 20210

execute if score #rg_hills_land switch.data matches 1189.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Hills Land","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"59","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_hills_land switch.data matches 1189.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Hills Land` just regenerated!"}'
execute if score #rg_hills_land switch.data matches 1189.. run function switch:engine/log_message/apply

execute if score #rg_hills_land switch.data matches 1189.. in switch:game run function switch:maps/regenerate_doors_macro {name:"hills_land"}
execute if score #rg_hills_land switch.data matches 1189.. run scoreboard players reset #rg_hills_land switch.data
execute if score #rg_hills_land switch.data matches 1.. run schedule function switch:maps/survival/hills_land/regenerate 1t

