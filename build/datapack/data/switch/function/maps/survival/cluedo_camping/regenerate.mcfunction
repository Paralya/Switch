
#> switch:maps/survival/cluedo_camping/regenerate
#
# @within	switch:maps/survival/cluedo_camping/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cluedo_camping switch.data 1
execute if score #rg_cluedo_camping switch.data matches 1 run data modify storage switch:maps to_regenerate.cluedo_camping set value 2b
execute if score #rg_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54000 54000 54022 54094
execute if score #rg_cluedo_camping switch.data matches 1 in switch:game run forceload add 54000 54000 54022 54094
execute if score #rg_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54022 54000 54045 54094
execute if score #rg_cluedo_camping switch.data matches 1 in switch:game run forceload add 54022 54000 54045 54094
execute if score #rg_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54045 54000 54067 54094
execute if score #rg_cluedo_camping switch.data matches 1 in switch:game run forceload add 54045 54000 54067 54094
execute if score #rg_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54067 54000 54090 54094
execute if score #rg_cluedo_camping switch.data matches 1 in switch:game run forceload add 54067 54000 54090 54094
execute if score #rg_cluedo_camping switch.data matches 1 in minecraft:overworld run forceload add 54090 54000 54112 54094
execute if score #rg_cluedo_camping switch.data matches 1 in switch:game run forceload add 54090 54000 54112 54094

execute if score #rg_cluedo_camping switch.data matches 1 run scoreboard players set #rg_cluedo_camping_y switch.data 100
execute if score #rg_cluedo_camping switch.data matches 1 run scoreboard players set #rg_cluedo_camping_mod switch.data 0
execute if score #rg_cluedo_camping switch.data matches ..120 summon marker run function switch:maps/survival/cluedo_camping/regeneration_on_marker

execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run kill @e[type=item,x=54056,y=100,z=54047,distance=..1000]
execute if score #rg_cluedo_camping switch.data matches 121.. run data remove storage switch:maps to_regenerate.cluedo_camping

execute if score #rg_cluedo_camping switch.data matches 121.. in minecraft:overworld run forceload remove 54000 54000 54022 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run forceload remove 54000 54000 54022 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in minecraft:overworld run forceload remove 54022 54000 54045 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run forceload remove 54022 54000 54045 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in minecraft:overworld run forceload remove 54045 54000 54067 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run forceload remove 54045 54000 54067 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in minecraft:overworld run forceload remove 54067 54000 54090 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run forceload remove 54067 54000 54090 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in minecraft:overworld run forceload remove 54090 54000 54112 54094
execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run forceload remove 54090 54000 54112 54094

execute if score #rg_cluedo_camping switch.data matches 121.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cluedo Camping","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cluedo_camping switch.data matches 121.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cluedo Camping` just regenerated!"}'
execute if score #rg_cluedo_camping switch.data matches 121.. run function switch:engine/log_message/apply

execute if score #rg_cluedo_camping switch.data matches 121.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cluedo_camping"}
execute if score #rg_cluedo_camping switch.data matches 121.. run scoreboard players reset #rg_cluedo_camping switch.data
execute if score #rg_cluedo_camping switch.data matches 1.. run schedule function switch:maps/survival/cluedo_camping/regenerate 1t

