
#> switch:maps/survival/hider_mansion/regenerate
#
# @within	switch:maps/survival/hider_mansion/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_hider_mansion switch.data 1
execute if score #rg_hider_mansion switch.data matches 1 run data modify storage switch:maps to_regenerate.hider_mansion set value 2b
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -2000 8000 -1983 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -2000 8000 -1983 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1983 8000 -1966 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1983 8000 -1966 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1966 8000 -1949 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1966 8000 -1949 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1949 8000 -1932 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1949 8000 -1932 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1932 8000 -1915 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1932 8000 -1915 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1915 8000 -1898 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1915 8000 -1898 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1898 8000 -1881 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1898 8000 -1881 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1881 8000 -1864 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1881 8000 -1864 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1864 8000 -1847 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1864 8000 -1847 8160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add -1847 8000 -1830 8160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add -1847 8000 -1830 8160

execute if score #rg_hider_mansion switch.data matches 1 run scoreboard players set #rg_hider_mansion_y switch.data 100
execute if score #rg_hider_mansion switch.data matches 1 run scoreboard players set #rg_hider_mansion_mod switch.data 0
execute if score #rg_hider_mansion switch.data matches ..710 summon marker run function switch:maps/survival/hider_mansion/regeneration_on_marker

execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run kill @e[type=item,x=-1915,y=100,z=8080,distance=..1000]
execute if score #rg_hider_mansion switch.data matches 711.. run data remove storage switch:maps to_regenerate.hider_mansion

execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -2000 8000 -1983 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -2000 8000 -1983 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1983 8000 -1966 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1983 8000 -1966 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1966 8000 -1949 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1966 8000 -1949 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1949 8000 -1932 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1949 8000 -1932 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1932 8000 -1915 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1932 8000 -1915 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1915 8000 -1898 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1915 8000 -1898 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1898 8000 -1881 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1898 8000 -1881 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1881 8000 -1864 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1881 8000 -1864 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1864 8000 -1847 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1864 8000 -1847 8160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove -1847 8000 -1830 8160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove -1847 8000 -1830 8160

execute if score #rg_hider_mansion switch.data matches 711.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Hider Mansion","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"35","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_hider_mansion switch.data matches 711.. run function switch:engine/log_message/apply {message:"Map `Hider Mansion` just regenerated!"}

execute if score #rg_hider_mansion switch.data matches 711.. run scoreboard players reset #rg_hider_mansion switch.data
execute if score #rg_hider_mansion switch.data matches 1.. run schedule function switch:maps/survival/hider_mansion/regenerate 1t

