
#> switch:maps/survival/cathedrale_liege/regenerate
#
# @within	switch:maps/survival/cathedrale_liege/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cathedrale_liege switch.data 1
execute if score #rg_cathedrale_liege switch.data matches 1 run data modify storage switch:maps to_regenerate.cathedrale_liege set value 2b
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -2000 -6000 -1972 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add -2000 -6000 -1972 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1972 -6000 -1945 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1972 -6000 -1945 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1945 -6000 -1917 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1945 -6000 -1917 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1917 -6000 -1890 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1917 -6000 -1890 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in minecraft:overworld run forceload add -1890 -6000 -1862 -5916
execute if score #rg_cathedrale_liege switch.data matches 1 in switch:game run forceload add -1890 -6000 -1862 -5916

execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_y switch.data 100
execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0
execute if score #rg_cathedrale_liege switch.data matches ..830 summon marker run function switch:maps/survival/cathedrale_liege/regeneration_on_marker

execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run kill @e[type=item,x=-1931,y=100,z=-5958,distance=..1000]
execute if score #rg_cathedrale_liege switch.data matches 831.. run data remove storage switch:maps to_regenerate.cathedrale_liege

execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove -2000 -6000 -1972 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove -2000 -6000 -1972 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove -1972 -6000 -1945 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove -1972 -6000 -1945 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove -1945 -6000 -1917 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove -1945 -6000 -1917 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove -1917 -6000 -1890 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove -1917 -6000 -1890 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in minecraft:overworld run forceload remove -1890 -6000 -1862 -5916
execute if score #rg_cathedrale_liege switch.data matches 831.. in switch:game run forceload remove -1890 -6000 -1862 -5916

execute if score #rg_cathedrale_liege switch.data matches 831.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cathédrale Saint-Lambert de Liège","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cathedrale_liege switch.data matches 831.. run function switch:engine/log_message/apply {message:"Map `Cathédrale Saint-Lambert de Liège` just regenerated!"}

execute if score #rg_cathedrale_liege switch.data matches 831.. run scoreboard players reset #rg_cathedrale_liege switch.data
execute if score #rg_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/regenerate 1t

