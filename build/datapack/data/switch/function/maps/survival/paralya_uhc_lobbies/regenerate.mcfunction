
#> switch:maps/survival/paralya_uhc_lobbies/regenerate
#
# @within	switch:maps/survival/paralya_uhc_lobbies/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_paralya_uhc_lobbies switch.data 1
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run data modify storage switch:maps to_regenerate.paralya_uhc_lobbies set value 2b
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add 98000 98000 98022 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add 98000 98000 98022 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add 98022 98000 98045 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add 98022 98000 98045 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add 98045 98000 98068 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add 98045 98000 98068 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in minecraft:overworld run forceload add 98068 98000 98090 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 in switch:game run forceload add 98068 98000 98090 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #rg_paralya_uhc_lobbies_y switch.data 100
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #rg_paralya_uhc_lobbies_mod switch.data 0
execute if score #rg_paralya_uhc_lobbies switch.data matches ..376 summon marker run function switch:maps/survival/paralya_uhc_lobbies/regeneration_on_marker

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run kill @e[type=item,x=98045,y=100,z=98045,distance=..1000]
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run data remove storage switch:maps to_regenerate.paralya_uhc_lobbies

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in minecraft:overworld run forceload remove 98000 98000 98022 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run forceload remove 98000 98000 98022 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in minecraft:overworld run forceload remove 98022 98000 98045 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run forceload remove 98022 98000 98045 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in minecraft:overworld run forceload remove 98045 98000 98068 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run forceload remove 98045 98000 98068 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in minecraft:overworld run forceload remove 98068 98000 98090 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run forceload remove 98068 98000 98090 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"paralya_uhc_lobbies","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"18","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run data modify storage switch:main MessageToLog set value '{"text":"Map `paralya_uhc_lobbies` just regenerated!"}'
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run function switch:engine/log_message/apply

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. in switch:game run function switch:maps/regenerate_doors_macro {name:"paralya_uhc_lobbies"}
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run scoreboard players reset #rg_paralya_uhc_lobbies switch.data
execute if score #rg_paralya_uhc_lobbies switch.data matches 1.. run schedule function switch:maps/survival/paralya_uhc_lobbies/regenerate 1t

