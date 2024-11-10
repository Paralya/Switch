
#> switch:maps/survival/sumo_lawef/regenerate
#
# @within	switch:maps/survival/sumo_lawef/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sumo_lawef switch.data 1
execute if score #rg_sumo_lawef switch.data matches 1 run data modify storage switch:maps to_regenerate.sumo_lawef set value 2b
execute if score #rg_sumo_lawef switch.data matches 1 in minecraft:overworld run forceload add 54979 54996 55000 55037
execute if score #rg_sumo_lawef switch.data matches 1 in switch:game run forceload add 54979 54996 55000 55037
execute if score #rg_sumo_lawef switch.data matches 1 in minecraft:overworld run forceload add 55000 54996 55020 55037
execute if score #rg_sumo_lawef switch.data matches 1 in switch:game run forceload add 55000 54996 55020 55037

execute if score #rg_sumo_lawef switch.data matches 1 run scoreboard players set #rg_sumo_lawef_y switch.data 0
execute if score #rg_sumo_lawef switch.data matches 1 run scoreboard players set #rg_sumo_lawef_mod switch.data 0
execute if score #rg_sumo_lawef switch.data matches ..80 summon marker run function switch:maps/survival/sumo_lawef/regeneration_on_marker

execute if score #rg_sumo_lawef switch.data matches 81.. in switch:game run kill @e[type=item,x=54999,y=0,z=55016,distance=..1000]
execute if score #rg_sumo_lawef switch.data matches 81.. run data remove storage switch:maps to_regenerate.sumo_lawef

execute if score #rg_sumo_lawef switch.data matches 81.. in minecraft:overworld run forceload remove 54979 54996 55000 55037
execute if score #rg_sumo_lawef switch.data matches 81.. in switch:game run forceload remove 54979 54996 55000 55037

execute if score #rg_sumo_lawef switch.data matches 81.. in minecraft:overworld run forceload remove 55000 54996 55020 55037
execute if score #rg_sumo_lawef switch.data matches 81.. in switch:game run forceload remove 55000 54996 55020 55037

execute if score #rg_sumo_lawef switch.data matches 81.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sumo_lawef","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"4","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sumo_lawef switch.data matches 81.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sumo_lawef` just regenerated!"}'
execute if score #rg_sumo_lawef switch.data matches 81.. run function switch:engine/log_message/apply

execute if score #rg_sumo_lawef switch.data matches 81.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sumo_lawef"}
execute if score #rg_sumo_lawef switch.data matches 81.. run scoreboard players reset #rg_sumo_lawef switch.data
execute if score #rg_sumo_lawef switch.data matches 1.. run schedule function switch:maps/survival/sumo_lawef/regenerate 1t

