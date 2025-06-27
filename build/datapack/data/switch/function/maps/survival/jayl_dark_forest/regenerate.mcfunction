
#> switch:maps/survival/jayl_dark_forest/regenerate
#
# @within	switch:maps/survival/jayl_dark_forest/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jayl_dark_forest switch.data 1
execute if score #rg_jayl_dark_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.jayl_dark_forest set value 2b
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34000 34000 34021 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34000 34000 34021 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34021 34000 34042 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34021 34000 34042 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34042 34000 34062 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34042 34000 34062 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34062 34000 34083 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34062 34000 34083 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34083 34000 34104 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34083 34000 34104 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34104 34000 34125 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34104 34000 34125 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34125 34000 34145 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34125 34000 34145 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34145 34000 34166 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34145 34000 34166 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in minecraft:overworld run forceload add 34166 34000 34187 34127
execute if score #rg_jayl_dark_forest switch.data matches 1 in switch:game run forceload add 34166 34000 34187 34127

execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_y switch.data 100
execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0
execute if score #rg_jayl_dark_forest switch.data matches ..819 summon marker run function switch:maps/survival/jayl_dark_forest/regeneration_on_marker

execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run kill @e[type=item,x=34093,y=100,z=34063,distance=..1000]
execute if score #rg_jayl_dark_forest switch.data matches 820.. run data remove storage switch:maps to_regenerate.jayl_dark_forest

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34000 34000 34021 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34000 34000 34021 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34021 34000 34042 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34021 34000 34042 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34042 34000 34062 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34042 34000 34062 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34062 34000 34083 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34062 34000 34083 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34083 34000 34104 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34083 34000 34104 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34104 34000 34125 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34104 34000 34125 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34125 34000 34145 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34125 34000 34145 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34145 34000 34166 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34145 34000 34166 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. in minecraft:overworld run forceload remove 34166 34000 34187 34127
execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run forceload remove 34166 34000 34187 34127

execute if score #rg_jayl_dark_forest switch.data matches 820.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Jayl Dark Forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jayl_dark_forest switch.data matches 820.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Jayl Dark Forest` just regenerated!"}'
execute if score #rg_jayl_dark_forest switch.data matches 820.. run function switch:engine/log_message/apply

execute if score #rg_jayl_dark_forest switch.data matches 820.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jayl_dark_forest"}
execute if score #rg_jayl_dark_forest switch.data matches 820.. run scoreboard players reset #rg_jayl_dark_forest switch.data
execute if score #rg_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

