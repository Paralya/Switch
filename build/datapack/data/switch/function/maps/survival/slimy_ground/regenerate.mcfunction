
#> switch:maps/survival/slimy_ground/regenerate
#
# @within	switch:maps/survival/slimy_ground/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_slimy_ground switch.data 1
execute if score #rg_slimy_ground switch.data matches 1 run data modify storage switch:maps to_regenerate.slimy_ground set value 2b
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 6000 -8000 6020 -7900
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 6000 -8000 6020 -7900
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 6020 -8000 6040 -7900
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 6020 -8000 6040 -7900
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 6040 -8000 6060 -7900
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 6040 -8000 6060 -7900
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 6060 -8000 6080 -7900
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 6060 -8000 6080 -7900
execute if score #rg_slimy_ground switch.data matches 1 in minecraft:overworld run forceload add 6080 -8000 6100 -7900
execute if score #rg_slimy_ground switch.data matches 1 in switch:game run forceload add 6080 -8000 6100 -7900

execute if score #rg_slimy_ground switch.data matches 1 run scoreboard players set #rg_slimy_ground_y switch.data 100
execute if score #rg_slimy_ground switch.data matches 1 run scoreboard players set #rg_slimy_ground_mod switch.data 0
execute if score #rg_slimy_ground switch.data matches ..455 summon marker run function switch:maps/survival/slimy_ground/regeneration_on_marker

execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run kill @e[type=item,x=6050,y=100,z=-7950,distance=..1000]
execute if score #rg_slimy_ground switch.data matches 456.. run data remove storage switch:maps to_regenerate.slimy_ground

execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 6000 -8000 6020 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 6000 -8000 6020 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 6020 -8000 6040 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 6020 -8000 6040 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 6040 -8000 6060 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 6040 -8000 6060 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 6060 -8000 6080 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 6060 -8000 6080 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in minecraft:overworld run forceload remove 6080 -8000 6100 -7900
execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run forceload remove 6080 -8000 6100 -7900

execute if score #rg_slimy_ground switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Slimy Ground","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_slimy_ground switch.data matches 456.. run function switch:engine/log_message/apply {message:"Map `Slimy Ground` just regenerated!"}

execute if score #rg_slimy_ground switch.data matches 456.. in switch:game run function switch:maps/regenerate_doors_macro {name:"slimy_ground"}
execute if score #rg_slimy_ground switch.data matches 456.. run scoreboard players reset #rg_slimy_ground switch.data
execute if score #rg_slimy_ground switch.data matches 1.. run schedule function switch:maps/survival/slimy_ground/regenerate 1t

