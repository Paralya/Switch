
#> switch:maps/survival/paralya_lobby_noel/regenerate
#
# @within	switch:maps/survival/paralya_lobby_noel/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_paralya_lobby_noel switch.data 1
execute if score #rg_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_regenerate.paralya_lobby_noel set value 2b
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40000 40000 40014 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40000 40000 40014 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40014 40000 40029 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40014 40000 40029 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40029 40000 40043 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40029 40000 40043 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40043 40000 40057 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40043 40000 40057 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40057 40000 40071 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40057 40000 40071 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40071 40000 40086 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40071 40000 40086 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40086 40000 40100 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40086 40000 40100 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40100 40000 40114 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40100 40000 40114 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40114 40000 40129 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40114 40000 40129 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40129 40000 40143 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40129 40000 40143 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40143 40000 40157 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40143 40000 40157 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40157 40000 40171 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40157 40000 40171 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40171 40000 40186 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40171 40000 40186 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40186 40000 40200 40200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40186 40000 40200 40200

execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_y switch.data 100
execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0
execute if score #rg_paralya_lobby_noel switch.data matches ..2310 summon marker run function switch:maps/survival/paralya_lobby_noel/regeneration_on_marker

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run kill @e[type=item,x=40100,y=100,z=40100,distance=..1000]
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run data remove storage switch:maps to_regenerate.paralya_lobby_noel

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40000 40000 40014 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40000 40000 40014 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40014 40000 40029 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40014 40000 40029 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40029 40000 40043 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40029 40000 40043 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40043 40000 40057 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40043 40000 40057 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40057 40000 40071 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40057 40000 40071 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40071 40000 40086 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40071 40000 40086 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40086 40000 40100 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40086 40000 40100 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40100 40000 40114 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40100 40000 40114 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40114 40000 40129 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40114 40000 40129 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40129 40000 40143 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40129 40000 40143 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40143 40000 40157 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40143 40000 40157 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40157 40000 40171 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40157 40000 40171 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40171 40000 40186 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40171 40000 40186 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40186 40000 40200 40200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40186 40000 40200 40200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Paralya Lobby Noel","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"55","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Paralya Lobby Noel` just regenerated!"}'
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run function switch:engine/log_message/apply

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run function switch:maps/regenerate_doors_macro {name:"paralya_lobby_noel"}
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run scoreboard players reset #rg_paralya_lobby_noel switch.data
execute if score #rg_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/regenerate 1t

