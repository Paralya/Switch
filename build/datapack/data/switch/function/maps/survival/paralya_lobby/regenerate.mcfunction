
#> switch:maps/survival/paralya_lobby/regenerate
#
# @within	switch:maps/survival/paralya_lobby/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_paralya_lobby switch.data 1
execute if score #rg_paralya_lobby switch.data matches 1 run data modify storage switch:maps to_regenerate.paralya_lobby set value 2b
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -10000 -6000 -9986 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -10000 -6000 -9986 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9986 -6000 -9971 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9986 -6000 -9971 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9971 -6000 -9957 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9971 -6000 -9957 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9957 -6000 -9943 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9957 -6000 -9943 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9943 -6000 -9929 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9943 -6000 -9929 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9929 -6000 -9914 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9929 -6000 -9914 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9914 -6000 -9900 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9914 -6000 -9900 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9900 -6000 -9886 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9900 -6000 -9886 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9886 -6000 -9871 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9886 -6000 -9871 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9871 -6000 -9857 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9871 -6000 -9857 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9857 -6000 -9843 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9857 -6000 -9843 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9843 -6000 -9829 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9843 -6000 -9829 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9829 -6000 -9814 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9829 -6000 -9814 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in minecraft:overworld run forceload add -9814 -6000 -9800 -5800
execute if score #rg_paralya_lobby switch.data matches 1 in switch:game run forceload add -9814 -6000 -9800 -5800

execute if score #rg_paralya_lobby switch.data matches 1 run scoreboard players set #rg_paralya_lobby_y switch.data 100
execute if score #rg_paralya_lobby switch.data matches 1 run scoreboard players set #rg_paralya_lobby_mod switch.data 0
execute if score #rg_paralya_lobby switch.data matches ..2268 summon marker run function switch:maps/survival/paralya_lobby/regeneration_on_marker

execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run kill @e[type=item,x=-9900,y=100,z=-5900,distance=..1000]
execute if score #rg_paralya_lobby switch.data matches 2269.. run data remove storage switch:maps to_regenerate.paralya_lobby

execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -10000 -6000 -9986 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -10000 -6000 -9986 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9986 -6000 -9971 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9986 -6000 -9971 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9971 -6000 -9957 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9971 -6000 -9957 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9957 -6000 -9943 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9957 -6000 -9943 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9943 -6000 -9929 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9943 -6000 -9929 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9929 -6000 -9914 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9929 -6000 -9914 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9914 -6000 -9900 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9914 -6000 -9900 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9900 -6000 -9886 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9900 -6000 -9886 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9886 -6000 -9871 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9886 -6000 -9871 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9871 -6000 -9857 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9871 -6000 -9857 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9857 -6000 -9843 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9857 -6000 -9843 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9843 -6000 -9829 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9843 -6000 -9829 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9829 -6000 -9814 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9829 -6000 -9814 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in minecraft:overworld run forceload remove -9814 -6000 -9800 -5800
execute if score #rg_paralya_lobby switch.data matches 2269.. in switch:game run forceload remove -9814 -6000 -9800 -5800

execute if score #rg_paralya_lobby switch.data matches 2269.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Paralya Lobby","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"53","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_paralya_lobby switch.data matches 2269.. run function switch:engine/log_message/apply {message:"Map `Paralya Lobby` just regenerated!"}

execute if score #rg_paralya_lobby switch.data matches 2269.. run scoreboard players reset #rg_paralya_lobby switch.data
execute if score #rg_paralya_lobby switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby/regenerate 1t

