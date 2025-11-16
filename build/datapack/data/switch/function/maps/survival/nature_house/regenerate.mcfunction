
#> switch:maps/survival/nature_house/regenerate
#
# @within	switch:maps/survival/nature_house/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nature_house switch.data 1
execute if score #rg_nature_house switch.data matches 1 run data modify storage switch:maps to_regenerate.nature_house set value 2b
execute if score #rg_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 1 in switch:game run forceload add 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 1 in switch:game run forceload add 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 1 in minecraft:overworld run forceload add 88045 88000 88068 88068
execute if score #rg_nature_house switch.data matches 1 in switch:game run forceload add 88045 88000 88068 88068

execute if score #rg_nature_house switch.data matches 1 run scoreboard players set #rg_nature_house_y switch.data 100
execute if score #rg_nature_house switch.data matches 1 run scoreboard players set #rg_nature_house_mod switch.data 0
execute if score #rg_nature_house switch.data matches ..114 summon marker run function switch:maps/survival/nature_house/regeneration_on_marker

execute if score #rg_nature_house switch.data matches 115.. in switch:game run kill @e[type=item,x=88034,y=100,z=88034,distance=..1000]
execute if score #rg_nature_house switch.data matches 115.. run data remove storage switch:maps to_regenerate.nature_house

execute if score #rg_nature_house switch.data matches 115.. in minecraft:overworld run forceload remove 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 115.. in switch:game run forceload remove 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 115.. in minecraft:overworld run forceload remove 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 115.. in switch:game run forceload remove 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 115.. in minecraft:overworld run forceload remove 88045 88000 88068 88068
execute if score #rg_nature_house switch.data matches 115.. in switch:game run forceload remove 88045 88000 88068 88068

execute if score #rg_nature_house switch.data matches 115.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nature House","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nature_house switch.data matches 115.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Nature House` just regenerated!"}'
execute if score #rg_nature_house switch.data matches 115.. run function switch:engine/log_message/apply

execute if score #rg_nature_house switch.data matches 115.. in switch:game run function switch:maps/regenerate_doors_macro {name:"nature_house"}
execute if score #rg_nature_house switch.data matches 115.. run scoreboard players reset #rg_nature_house switch.data
execute if score #rg_nature_house switch.data matches 1.. run schedule function switch:maps/survival/nature_house/regenerate 1t

