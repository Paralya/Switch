
#> switch:maps/survival/friends_black_ball/regenerate
#
# @within	switch:maps/survival/friends_black_ball/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_friends_black_ball switch.data 1
execute if score #rg_friends_black_ball switch.data matches 1 run data modify storage switch:maps to_regenerate.friends_black_ball set value 2b
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5934 5933 5952 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 5934 5933 5952 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5952 5933 5971 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 5952 5933 5971 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5971 5933 5989 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 5971 5933 5989 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 5989 5933 6008 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 5989 5933 6008 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6008 5933 6026 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 6008 5933 6026 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6026 5933 6045 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 6026 5933 6045 6067
execute if score #rg_friends_black_ball switch.data matches 1 in minecraft:overworld run forceload add 6045 5933 6063 6067
execute if score #rg_friends_black_ball switch.data matches 1 in switch:game run forceload add 6045 5933 6063 6067

execute if score #rg_friends_black_ball switch.data matches 1 run scoreboard players set #rg_friends_black_ball_y switch.data 0
execute if score #rg_friends_black_ball switch.data matches 1 run scoreboard players set #rg_friends_black_ball_mod switch.data 0
execute if score #rg_friends_black_ball switch.data matches ..518 summon marker run function switch:maps/survival/friends_black_ball/regeneration_on_marker

execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run kill @e[type=item,x=5998,y=0,z=6000,distance=..1000]
execute if score #rg_friends_black_ball switch.data matches 519.. run data remove storage switch:maps to_regenerate.friends_black_ball

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 5934 5933 5952 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 5934 5933 5952 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 5952 5933 5971 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 5952 5933 5971 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 5971 5933 5989 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 5971 5933 5989 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 5989 5933 6008 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 5989 5933 6008 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 6008 5933 6026 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 6008 5933 6026 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 6026 5933 6045 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 6026 5933 6045 6067

execute if score #rg_friends_black_ball switch.data matches 519.. in minecraft:overworld run forceload remove 6045 5933 6063 6067
execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run forceload remove 6045 5933 6063 6067

execute if score #rg_friends_black_ball switch.data matches 519.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"friends_black_ball","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_friends_black_ball switch.data matches 519.. run data modify storage switch:main MessageToLog set value '{"text":"Map `friends_black_ball` just regenerated!"}'
execute if score #rg_friends_black_ball switch.data matches 519.. run function switch:engine/log_message/apply

execute if score #rg_friends_black_ball switch.data matches 519.. in switch:game run function switch:maps/regenerate_doors_macro {name:"friends_black_ball"}
execute if score #rg_friends_black_ball switch.data matches 519.. run scoreboard players reset #rg_friends_black_ball switch.data
execute if score #rg_friends_black_ball switch.data matches 1.. run schedule function switch:maps/survival/friends_black_ball/regenerate 1t

