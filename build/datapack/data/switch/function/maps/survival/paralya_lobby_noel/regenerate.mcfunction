
#> switch:maps/survival/paralya_lobby_noel/regenerate
#
# @within	switch:maps/survival/paralya_lobby_noel/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_paralya_lobby_noel switch.data 1
execute if score #rg_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_regenerate.paralya_lobby_noel set value 2b
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39900 39900 39914 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39900 39900 39914 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39914 39900 39929 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39914 39900 39929 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39929 39900 39943 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39929 39900 39943 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39943 39900 39957 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39943 39900 39957 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39957 39900 39971 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39957 39900 39971 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39971 39900 39986 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39971 39900 39986 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 39986 39900 40000 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 39986 39900 40000 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40000 39900 40014 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40000 39900 40014 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40014 39900 40029 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40014 39900 40029 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40029 39900 40043 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40029 39900 40043 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40043 39900 40057 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40043 39900 40057 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40057 39900 40071 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40057 39900 40071 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40071 39900 40086 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40071 39900 40086 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add 40086 39900 40100 40100
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add 40086 39900 40100 40100

execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_y switch.data -64
execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0
execute if score #rg_paralya_lobby_noel switch.data matches ..2310 summon marker run function switch:maps/survival/paralya_lobby_noel/regeneration_on_marker

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run kill @e[type=item,x=40000,y=-64,z=40000,distance=..1000]
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run data remove storage switch:maps to_regenerate.paralya_lobby_noel

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39900 39900 39914 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39900 39900 39914 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39914 39900 39929 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39914 39900 39929 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39929 39900 39943 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39929 39900 39943 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39943 39900 39957 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39943 39900 39957 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39957 39900 39971 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39957 39900 39971 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39971 39900 39986 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39971 39900 39986 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 39986 39900 40000 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 39986 39900 40000 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40000 39900 40014 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40000 39900 40014 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40014 39900 40029 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40014 39900 40029 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40029 39900 40043 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40029 39900 40043 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40043 39900 40057 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40043 39900 40057 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40057 39900 40071 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40057 39900 40071 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40071 39900 40086 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40071 39900 40086 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove 40086 39900 40100 40100
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove 40086 39900 40100 40100

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"paralya_lobby_noel","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"55","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run data modify storage switch:main MessageToLog set value '{"text":"Map `paralya_lobby_noel` just regenerated!"}'
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run function switch:engine/log_message/apply

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run function switch:maps/regenerate_doors_macro {name:"paralya_lobby_noel"}
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run scoreboard players reset #rg_paralya_lobby_noel switch.data
execute if score #rg_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/regenerate 1t

