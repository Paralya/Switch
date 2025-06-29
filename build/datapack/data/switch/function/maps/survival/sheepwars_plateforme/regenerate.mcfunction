
#> switch:maps/survival/sheepwars_plateforme/regenerate
#
# @within	switch:maps/survival/sheepwars_plateforme/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_plateforme switch.data 1
execute if score #rg_sheepwars_plateforme switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_plateforme set value 2b
execute if score #rg_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144000 144000 144026 144075
execute if score #rg_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144000 144000 144026 144075
execute if score #rg_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144026 144000 144053 144075
execute if score #rg_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144026 144000 144053 144075
execute if score #rg_sheepwars_plateforme switch.data matches 1 in minecraft:overworld run forceload add 144053 144000 144079 144075
execute if score #rg_sheepwars_plateforme switch.data matches 1 in switch:game run forceload add 144053 144000 144079 144075

execute if score #rg_sheepwars_plateforme switch.data matches 1 run scoreboard players set #rg_sheepwars_plateforme_y switch.data 100
execute if score #rg_sheepwars_plateforme switch.data matches 1 run scoreboard players set #rg_sheepwars_plateforme_mod switch.data 0
execute if score #rg_sheepwars_plateforme switch.data matches ..210 summon marker run function switch:maps/survival/sheepwars_plateforme/regeneration_on_marker

execute if score #rg_sheepwars_plateforme switch.data matches 211.. in switch:game run kill @e[type=item,x=144039,y=100,z=144037,distance=..1000]
execute if score #rg_sheepwars_plateforme switch.data matches 211.. run data remove storage switch:maps to_regenerate.sheepwars_plateforme

execute if score #rg_sheepwars_plateforme switch.data matches 211.. in minecraft:overworld run forceload remove 144000 144000 144026 144075
execute if score #rg_sheepwars_plateforme switch.data matches 211.. in switch:game run forceload remove 144000 144000 144026 144075
execute if score #rg_sheepwars_plateforme switch.data matches 211.. in minecraft:overworld run forceload remove 144026 144000 144053 144075
execute if score #rg_sheepwars_plateforme switch.data matches 211.. in switch:game run forceload remove 144026 144000 144053 144075
execute if score #rg_sheepwars_plateforme switch.data matches 211.. in minecraft:overworld run forceload remove 144053 144000 144079 144075
execute if score #rg_sheepwars_plateforme switch.data matches 211.. in switch:game run forceload remove 144053 144000 144079 144075

execute if score #rg_sheepwars_plateforme switch.data matches 211.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sheepwars Plateforme","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_plateforme switch.data matches 211.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Sheepwars Plateforme` just regenerated!"}'
execute if score #rg_sheepwars_plateforme switch.data matches 211.. run function switch:engine/log_message/apply

execute if score #rg_sheepwars_plateforme switch.data matches 211.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sheepwars_plateforme"}
execute if score #rg_sheepwars_plateforme switch.data matches 211.. run scoreboard players reset #rg_sheepwars_plateforme switch.data
execute if score #rg_sheepwars_plateforme switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_plateforme/regenerate 1t

