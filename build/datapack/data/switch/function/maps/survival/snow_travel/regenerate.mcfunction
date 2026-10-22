
#> switch:maps/survival/snow_travel/regenerate
#
# @within	switch:maps/survival/snow_travel/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snow_travel switch.data 1
execute if score #rg_snow_travel switch.data matches 1 run data modify storage switch:maps to_regenerate.snow_travel set value 2b
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -6000 -4000 -5986 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -6000 -4000 -5986 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5986 -4000 -5972 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5986 -4000 -5972 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5972 -4000 -5959 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5972 -4000 -5959 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5959 -4000 -5945 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5959 -4000 -5945 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5945 -4000 -5931 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5945 -4000 -5931 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5931 -4000 -5917 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5931 -4000 -5917 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5917 -4000 -5903 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5917 -4000 -5903 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5903 -4000 -5890 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5903 -4000 -5890 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5890 -4000 -5876 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5890 -4000 -5876 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5876 -4000 -5862 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5876 -4000 -5862 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5862 -4000 -5848 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5862 -4000 -5848 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5848 -4000 -5834 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5848 -4000 -5834 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5834 -4000 -5821 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5834 -4000 -5821 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5821 -4000 -5807 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5821 -4000 -5807 -3795
execute if score #rg_snow_travel switch.data matches 1 in minecraft:overworld run forceload add -5807 -4000 -5793 -3795
execute if score #rg_snow_travel switch.data matches 1 in switch:game run forceload add -5807 -4000 -5793 -3795

execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_y switch.data 100
execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_mod switch.data 0
execute if score #rg_snow_travel switch.data matches ..1305 summon marker run function switch:maps/survival/snow_travel/regeneration_on_marker

execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run kill @e[type=item,x=-5896,y=100,z=-3897,distance=..1000]
execute if score #rg_snow_travel switch.data matches 1306.. run data remove storage switch:maps to_regenerate.snow_travel

execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -6000 -4000 -5986 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -6000 -4000 -5986 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5986 -4000 -5972 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5986 -4000 -5972 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5972 -4000 -5959 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5972 -4000 -5959 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5959 -4000 -5945 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5959 -4000 -5945 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5945 -4000 -5931 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5945 -4000 -5931 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5931 -4000 -5917 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5931 -4000 -5917 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5917 -4000 -5903 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5917 -4000 -5903 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5903 -4000 -5890 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5903 -4000 -5890 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5890 -4000 -5876 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5890 -4000 -5876 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5876 -4000 -5862 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5876 -4000 -5862 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5862 -4000 -5848 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5862 -4000 -5848 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5848 -4000 -5834 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5848 -4000 -5834 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5834 -4000 -5821 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5834 -4000 -5821 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5821 -4000 -5807 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5821 -4000 -5807 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in minecraft:overworld run forceload remove -5807 -4000 -5793 -3795
execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run forceload remove -5807 -4000 -5793 -3795

execute if score #rg_snow_travel switch.data matches 1306.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Snow Travel","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snow_travel switch.data matches 1306.. run function switch:engine/log_message/apply {message:"Map `Snow Travel` just regenerated!"}

execute if score #rg_snow_travel switch.data matches 1306.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snow_travel"}
execute if score #rg_snow_travel switch.data matches 1306.. run scoreboard players reset #rg_snow_travel switch.data
execute if score #rg_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/regenerate 1t

