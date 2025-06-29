
#> switch:maps/survival/jn_sakura_pvpbox/regenerate
#
# @within	switch:maps/survival/jn_sakura_pvpbox/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_sakura_pvpbox switch.data 1
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_sakura_pvpbox set value 2b
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add 135000 135000 135020 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add 135000 135000 135020 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add 135020 135000 135040 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add 135020 135000 135040 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add 135040 135000 135060 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add 135040 135000 135060 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add 135060 135000 135080 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add 135060 135000 135080 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in minecraft:overworld run forceload add 135080 135000 135100 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 in switch:game run forceload add 135080 135000 135100 135100

execute if score #rg_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #rg_jn_sakura_pvpbox_y switch.data 100
execute if score #rg_jn_sakura_pvpbox switch.data matches 1 run scoreboard players set #rg_jn_sakura_pvpbox_mod switch.data 0
execute if score #rg_jn_sakura_pvpbox switch.data matches ..195 summon marker run function switch:maps/survival/jn_sakura_pvpbox/regeneration_on_marker

execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run kill @e[type=item,x=135050,y=100,z=135050,distance=..1000]
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. run data remove storage switch:maps to_regenerate.jn_sakura_pvpbox

execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in minecraft:overworld run forceload remove 135000 135000 135020 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run forceload remove 135000 135000 135020 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in minecraft:overworld run forceload remove 135020 135000 135040 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run forceload remove 135020 135000 135040 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in minecraft:overworld run forceload remove 135040 135000 135060 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run forceload remove 135040 135000 135060 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in minecraft:overworld run forceload remove 135060 135000 135080 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run forceload remove 135060 135000 135080 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in minecraft:overworld run forceload remove 135080 135000 135100 135100
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run forceload remove 135080 135000 135100 135100

execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sakura PVP Box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Sakura PVP Box` just regenerated!"}'
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. run function switch:engine/log_message/apply

execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_sakura_pvpbox"}
execute if score #rg_jn_sakura_pvpbox switch.data matches 196.. run scoreboard players reset #rg_jn_sakura_pvpbox switch.data
execute if score #rg_jn_sakura_pvpbox switch.data matches 1.. run schedule function switch:maps/survival/jn_sakura_pvpbox/regenerate 1t

