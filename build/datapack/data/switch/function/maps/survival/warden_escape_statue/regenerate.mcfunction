
#> switch:maps/survival/warden_escape_statue/regenerate
#
# @within	switch:maps/survival/warden_escape_statue/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_warden_escape_statue switch.data 1
execute if score #rg_warden_escape_statue switch.data matches 1 run data modify storage switch:maps to_regenerate.warden_escape_statue set value 2b
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69000 69000 69025 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69000 69000 69025 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69025 69000 69049 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69025 69000 69049 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69049 69000 69074 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69049 69000 69074 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69074 69000 69099 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69074 69000 69099 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69099 69000 69123 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69099 69000 69123 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in minecraft:overworld run forceload add 69123 69000 69148 69106
execute if score #rg_warden_escape_statue switch.data matches 1 in switch:game run forceload add 69123 69000 69148 69106

execute if score #rg_warden_escape_statue switch.data matches 1 run scoreboard players set #rg_warden_escape_statue_y switch.data -64
execute if score #rg_warden_escape_statue switch.data matches 1 run scoreboard players set #rg_warden_escape_statue_mod switch.data 0
execute if score #rg_warden_escape_statue switch.data matches ..750 summon marker run function switch:maps/survival/warden_escape_statue/regeneration_on_marker

execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run kill @e[type=item,x=69074,y=-64,z=69053,distance=..1000]
execute if score #rg_warden_escape_statue switch.data matches 751.. run data remove storage switch:maps to_regenerate.warden_escape_statue

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69000 69000 69025 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69000 69000 69025 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69025 69000 69049 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69025 69000 69049 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69049 69000 69074 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69049 69000 69074 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69074 69000 69099 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69074 69000 69099 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69099 69000 69123 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69099 69000 69123 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. in minecraft:overworld run forceload remove 69123 69000 69148 69106
execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run forceload remove 69123 69000 69148 69106

execute if score #rg_warden_escape_statue switch.data matches 751.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"warden_escape_statue","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"37","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_warden_escape_statue switch.data matches 751.. run data modify storage switch:main MessageToLog set value '{"text":"Map `warden_escape_statue` just regenerated!"}'
execute if score #rg_warden_escape_statue switch.data matches 751.. run function switch:engine/log_message/apply

execute if score #rg_warden_escape_statue switch.data matches 751.. in switch:game run function switch:maps/regenerate_doors_macro {name:"warden_escape_statue"}
execute if score #rg_warden_escape_statue switch.data matches 751.. run scoreboard players reset #rg_warden_escape_statue switch.data
execute if score #rg_warden_escape_statue switch.data matches 1.. run schedule function switch:maps/survival/warden_escape_statue/regenerate 1t

