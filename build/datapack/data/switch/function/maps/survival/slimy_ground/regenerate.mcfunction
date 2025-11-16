
#> switch:maps/survival/slimy_ground/regenerate
#
# @within	switch:maps/survival/slimy_ground/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_slimy_ground switch.data 1
execute if score #rg_slimy_ground switch.data matches 1 run data modify storage switch:maps to_regenerate.slimy_ground set value 2b
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60000 60000 60020 60100
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 60000 60000 60020 60100
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60020 60000 60040 60100
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 60020 60000 60040 60100
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60040 60000 60060 60100
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 60040 60000 60060 60100
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60060 60000 60080 60100
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 60060 60000 60080 60100
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 60080 60000 60100 60100
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 60080 60000 60100 60100

execute if score #rg_slimy_ground switch.data matches 1 run scoreboard players set #rg_slimy_ground_y switch.data 100
execute if score #rg_slimy_ground switch.data matches 1 run scoreboard players set #rg_slimy_ground_mod switch.data 0
execute if score #rg_slimy_ground switch.data matches ..455 summon marker run function switch:maps/survival/slimy_ground/regeneration_on_marker

execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run kill @e[type=item,x=60050,y=100,z=60050,distance=..1000]
execute if score #rg_slimy_ground switch.data matches 456.. run data remove storage switch:maps to_regenerate.slimy_ground

execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 60000 60000 60020 60100
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 60000 60000 60020 60100
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 60020 60000 60040 60100
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 60020 60000 60040 60100
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 60040 60000 60060 60100
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 60040 60000 60060 60100
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 60060 60000 60080 60100
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 60060 60000 60080 60100
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 60080 60000 60100 60100
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 60080 60000 60100 60100

execute if score #rg_slimy_ground switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Slimy Ground","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_slimy_ground switch.data matches 456.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Slimy Ground` just regenerated!"}'
execute if score #rg_slimy_ground switch.data matches 456.. run function switch:engine/log_message/apply

execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"slimy_ground"}
execute if score #rg_slimy_ground switch.data matches 456.. run scoreboard players reset #rg_slimy_ground switch.data
execute if score #rg_slimy_ground switch.data matches 1.. run schedule function switch:maps/survival/slimy_ground/regenerate 1t

