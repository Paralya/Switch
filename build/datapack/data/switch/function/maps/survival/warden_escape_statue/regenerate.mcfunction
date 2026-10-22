
#> switch:maps/survival/warden_escape_statue/regenerate
#
# @within	switch:maps/survival/warden_escape_statue/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_warden_escape_statue switch.data 1
execute if score #rg_warden_escape_statue switch.data matches 1 run data modify storage switch:maps to_regenerate.warden_escape_statue set value 2b
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 0 8000 25 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 0 8000 25 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 25 8000 49 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 25 8000 49 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 49 8000 74 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 49 8000 74 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 74 8000 99 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 74 8000 99 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 99 8000 123 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 99 8000 123 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 123 8000 148 8106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 123 8000 148 8106

execute if score #rg_warden_escape_statue switch.data matches 1 run scoreboard players set #rg_warden_escape_statue_y switch.data 100
execute if score #rg_warden_escape_statue switch.data matches 1 run scoreboard players set #rg_warden_escape_statue_mod switch.data 0
execute if score #rg_warden_escape_statue switch.data matches ..744 summon marker run function switch:maps/survival/warden_escape_statue/regeneration_on_marker

execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run kill @e[type=item,x=74,y=100,z=8053,distance=..1000]
execute if score #rg_warden_escape_statue switch.data matches 745.. run data remove storage switch:maps to_regenerate.warden_escape_statue

execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 0 8000 25 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 0 8000 25 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 25 8000 49 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 25 8000 49 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 49 8000 74 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 49 8000 74 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 74 8000 99 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 74 8000 99 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 99 8000 123 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 99 8000 123 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in minecraft:overworld run forceload remove 123 8000 148 8106
execute if score #rg_warden_escape_statue switch.data matches 745.. in switch:game run forceload remove 123 8000 148 8106

execute if score #rg_warden_escape_statue switch.data matches 745.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Warden Escape Statue","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"37","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_warden_escape_statue switch.data matches 745.. run function switch:engine/log_message/apply {message:"Map `Warden Escape Statue` just regenerated!"}

execute if score #rg_warden_escape_statue switch.data matches 745.. run scoreboard players reset #rg_warden_escape_statue switch.data
execute if score #rg_warden_escape_statue switch.data matches 1.. run schedule function switch:maps/survival/warden_escape_statue/regenerate 1t

