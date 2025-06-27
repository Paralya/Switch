
#> switch:maps/survival/new_grounds/regenerate
#
# @within	switch:maps/survival/new_grounds/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_new_grounds switch.data 1
execute if score #rg_new_grounds switch.data matches 1 run data modify storage switch:maps to_regenerate.new_grounds set value 2b
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48000 48000 48023 48093
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48000 48000 48023 48093
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48023 48000 48046 48093
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48023 48000 48046 48093
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48046 48000 48070 48093
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48046 48000 48070 48093
execute if score #rg_new_grounds switch.data matches 1 in minecraft:overworld run forceload add 48070 48000 48093 48093
execute if score #rg_new_grounds switch.data matches 1 in switch:game run forceload add 48070 48000 48093 48093

execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_y switch.data 100
execute if score #rg_new_grounds switch.data matches 1 run scoreboard players set #rg_new_grounds_mod switch.data 0
execute if score #rg_new_grounds switch.data matches ..168 summon marker run function switch:maps/survival/new_grounds/regeneration_on_marker

execute if score #rg_new_grounds switch.data matches 169.. in switch:game run kill @e[type=item,x=48046,y=100,z=48046,distance=..1000]
execute if score #rg_new_grounds switch.data matches 169.. run data remove storage switch:maps to_regenerate.new_grounds

execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove 48000 48000 48023 48093
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove 48000 48000 48023 48093

execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove 48023 48000 48046 48093
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove 48023 48000 48046 48093

execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove 48046 48000 48070 48093
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove 48046 48000 48070 48093

execute if score #rg_new_grounds switch.data matches 169.. in minecraft:overworld run forceload remove 48070 48000 48093 48093
execute if score #rg_new_grounds switch.data matches 169.. in switch:game run forceload remove 48070 48000 48093 48093

execute if score #rg_new_grounds switch.data matches 169.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"New Grounds","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_new_grounds switch.data matches 169.. run data modify storage switch:main MessageToLog set value '{"text":"Map `New Grounds` just regenerated!"}'
execute if score #rg_new_grounds switch.data matches 169.. run function switch:engine/log_message/apply

execute if score #rg_new_grounds switch.data matches 169.. in switch:game run function switch:maps/regenerate_doors_macro {name:"new_grounds"}
execute if score #rg_new_grounds switch.data matches 169.. run scoreboard players reset #rg_new_grounds switch.data
execute if score #rg_new_grounds switch.data matches 1.. run schedule function switch:maps/survival/new_grounds/regenerate 1t

