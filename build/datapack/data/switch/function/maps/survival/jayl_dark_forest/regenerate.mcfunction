
#> switch:maps/survival/jayl_dark_forest/regenerate
#
# @within	switch:maps/survival/jayl_dark_forest/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jayl_dark_forest switch.data 1
execute if score #rg_jayl_dark_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.jayl_dark_forest set value 2b
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6000 4000 6021 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6000 4000 6021 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6021 4000 6042 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6021 4000 6042 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6042 4000 6062 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6042 4000 6062 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6062 4000 6083 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6062 4000 6083 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6083 4000 6104 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6083 4000 6104 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6104 4000 6125 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6104 4000 6125 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6125 4000 6145 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6125 4000 6145 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6145 4000 6166 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6145 4000 6166 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 6166 4000 6187 4127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 6166 4000 6187 4127

execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_y switch.data 100
execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0
execute if score #rg_jayl_dark_forest switch.data matches ..819 summon marker run function switch:maps/survival/jayl_dark_forest/regeneration_on_marker

execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run kill @e[type=item,x=6093,y=100,z=4063,distance=..1000]
execute if score #rg_jayl_dark_forest switch.data matches 820.. run data remove storage switch:maps to_regenerate.jayl_dark_forest

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6000 4000 6021 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6000 4000 6021 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6021 4000 6042 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6021 4000 6042 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6042 4000 6062 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6042 4000 6062 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6062 4000 6083 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6062 4000 6083 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6083 4000 6104 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6083 4000 6104 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6104 4000 6125 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6104 4000 6125 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6125 4000 6145 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6125 4000 6145 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6145 4000 6166 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6145 4000 6166 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 6166 4000 6187 4127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 6166 4000 6187 4127

execute if score #rg_jayl_dark_forest switch.data matches 820.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Jayl Dark Forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jayl_dark_forest switch.data matches 820.. run function switch:engine/log_message/apply {message:"Map `Jayl Dark Forest` just regenerated!"}

execute if score #rg_jayl_dark_forest switch.data matches 820.. run scoreboard players reset #rg_jayl_dark_forest switch.data
execute if score #rg_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

