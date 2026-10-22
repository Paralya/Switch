
#> switch:maps/survival/survival_boat/regenerate
#
# @within	switch:maps/survival/survival_boat/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_survival_boat switch.data 1
execute if score #rg_survival_boat switch.data matches 1 run data modify storage switch:maps to_regenerate.survival_boat set value 2b
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -8000 6000 -7979 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -8000 6000 -7979 6102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7979 6000 -7958 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -7979 6000 -7958 6102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7958 6000 -7937 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -7958 6000 -7937 6102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7937 6000 -7916 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -7937 6000 -7916 6102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7916 6000 -7895 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -7916 6000 -7895 6102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add -7895 6000 -7874 6102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add -7895 6000 -7874 6102

execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_y switch.data 100
execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_mod switch.data 0
execute if score #rg_survival_boat switch.data matches ..600 summon marker run function switch:maps/survival/survival_boat/regeneration_on_marker

execute if score #rg_survival_boat switch.data matches 601.. in switch:game run kill @e[type=item,x=-7937,y=100,z=6051,distance=..1000]
execute if score #rg_survival_boat switch.data matches 601.. run data remove storage switch:maps to_regenerate.survival_boat

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -8000 6000 -7979 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -8000 6000 -7979 6102
execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -7979 6000 -7958 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -7979 6000 -7958 6102
execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -7958 6000 -7937 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -7958 6000 -7937 6102
execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -7937 6000 -7916 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -7937 6000 -7916 6102
execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -7916 6000 -7895 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -7916 6000 -7895 6102
execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove -7895 6000 -7874 6102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove -7895 6000 -7874 6102

execute if score #rg_survival_boat switch.data matches 601.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Survival Boat","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"30","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_survival_boat switch.data matches 601.. run function switch:engine/log_message/apply {message:"Map `Survival Boat` just regenerated!"}

execute if score #rg_survival_boat switch.data matches 601.. in switch:game run function switch:maps/regenerate_doors_macro {name:"survival_boat"}
execute if score #rg_survival_boat switch.data matches 601.. run scoreboard players reset #rg_survival_boat switch.data
execute if score #rg_survival_boat switch.data matches 1.. run schedule function switch:maps/survival/survival_boat/regenerate 1t

