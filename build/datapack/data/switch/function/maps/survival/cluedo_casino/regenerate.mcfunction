
#> switch:maps/survival/cluedo_casino/regenerate
#
# @within	switch:maps/survival/cluedo_casino/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cluedo_casino switch.data 1
execute if score #rg_cluedo_casino switch.data matches 1 run data modify storage switch:maps to_regenerate.cluedo_casino set value 2b
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159000 159000 159025 159069
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 159000 159000 159025 159069
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159025 159000 159050 159069
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 159025 159000 159050 159069
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 159050 159000 159075 159069
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 159050 159000 159075 159069

execute if score #rg_cluedo_casino switch.data matches 1 run scoreboard players set #rg_cluedo_casino_y switch.data 100
execute if score #rg_cluedo_casino switch.data matches 1 run scoreboard players set #rg_cluedo_casino_mod switch.data 0
execute if score #rg_cluedo_casino switch.data matches ..180 summon marker run function switch:maps/survival/cluedo_casino/regeneration_on_marker

execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run kill @e[type=item,x=159037,y=100,z=159034,distance=..1000]
execute if score #rg_cluedo_casino switch.data matches 181.. run data remove storage switch:maps to_regenerate.cluedo_casino

execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 159000 159000 159025 159069
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 159000 159000 159025 159069

execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 159025 159000 159050 159069
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 159025 159000 159050 159069

execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 159050 159000 159075 159069
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 159050 159000 159075 159069

execute if score #rg_cluedo_casino switch.data matches 181.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"cluedo_casino","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_cluedo_casino switch.data matches 181.. run data modify storage switch:main MessageToLog set value '{"text":"Map `cluedo_casino` just regenerated!"}'
execute if score #rg_cluedo_casino switch.data matches 181.. run function switch:engine/log_message/apply

execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cluedo_casino"}
execute if score #rg_cluedo_casino switch.data matches 181.. run scoreboard players reset #rg_cluedo_casino switch.data
execute if score #rg_cluedo_casino switch.data matches 1.. run schedule function switch:maps/survival/cluedo_casino/regenerate 1t

