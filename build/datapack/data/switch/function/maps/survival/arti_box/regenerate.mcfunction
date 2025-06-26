
#> switch:maps/survival/arti_box/regenerate
#
# @within	switch:maps/survival/arti_box/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_arti_box switch.data 1
execute if score #rg_arti_box switch.data matches 1 run data modify storage switch:maps to_regenerate.arti_box set value 2b
execute if score #rg_arti_box switch.data matches 1 in minecraft:overworld run forceload add 119000 119000 119024 119047
execute if score #rg_arti_box switch.data matches 1 in switch:game run forceload add 119000 119000 119024 119047
execute if score #rg_arti_box switch.data matches 1 in minecraft:overworld run forceload add 119024 119000 119047 119047
execute if score #rg_arti_box switch.data matches 1 in switch:game run forceload add 119024 119000 119047 119047

execute if score #rg_arti_box switch.data matches 1 run scoreboard players set #rg_arti_box_y switch.data 100
execute if score #rg_arti_box switch.data matches 1 run scoreboard players set #rg_arti_box_mod switch.data 0
execute if score #rg_arti_box switch.data matches ..70 summon marker run function switch:maps/survival/arti_box/regeneration_on_marker

execute if score #rg_arti_box switch.data matches 71.. in switch:game run kill @e[type=item,x=119023,y=100,z=119023,distance=..1000]
execute if score #rg_arti_box switch.data matches 71.. run data remove storage switch:maps to_regenerate.arti_box

execute if score #rg_arti_box switch.data matches 71.. in minecraft:overworld run forceload remove 119000 119000 119024 119047
execute if score #rg_arti_box switch.data matches 71.. in switch:game run forceload remove 119000 119000 119024 119047

execute if score #rg_arti_box switch.data matches 71.. in minecraft:overworld run forceload remove 119024 119000 119047 119047
execute if score #rg_arti_box switch.data matches 71.. in switch:game run forceload remove 119024 119000 119047 119047

execute if score #rg_arti_box switch.data matches 71.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"arti_box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_arti_box switch.data matches 71.. run data modify storage switch:main MessageToLog set value '{"text":"Map `arti_box` just regenerated!"}'
execute if score #rg_arti_box switch.data matches 71.. run function switch:engine/log_message/apply

execute if score #rg_arti_box switch.data matches 71.. in switch:game run function switch:maps/regenerate_doors_macro {name:"arti_box"}
execute if score #rg_arti_box switch.data matches 71.. run scoreboard players reset #rg_arti_box switch.data
execute if score #rg_arti_box switch.data matches 1.. run schedule function switch:maps/survival/arti_box/regenerate 1t

