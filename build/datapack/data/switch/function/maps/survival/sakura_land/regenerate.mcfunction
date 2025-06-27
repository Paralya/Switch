
#> switch:maps/survival/sakura_land/regenerate
#
# @within	switch:maps/survival/sakura_land/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sakura_land switch.data 1
execute if score #rg_sakura_land switch.data matches 1 run data modify storage switch:maps to_regenerate.sakura_land set value 2b
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19821 19979 19833 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19821 19979 19833 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19833 19979 19845 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19833 19979 19845 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19845 19979 19856 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19845 19979 19856 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19856 19979 19868 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19856 19979 19868 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19868 19979 19880 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19868 19979 19880 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19880 19979 19892 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19880 19979 19892 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19892 19979 19903 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19892 19979 19903 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19903 19979 19915 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19903 19979 19915 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19915 19979 19927 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19915 19979 19927 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19927 19979 19939 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19927 19979 19939 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19939 19979 19950 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19939 19979 19950 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19950 19979 19962 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19950 19979 19962 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19962 19979 19974 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19962 19979 19974 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19974 19979 19986 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19974 19979 19986 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19986 19979 19997 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19986 19979 19997 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 19997 19979 20009 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 19997 19979 20009 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20009 19979 20021 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 20009 19979 20021 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20021 19979 20033 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 20021 19979 20033 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20033 19979 20044 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 20033 19979 20044 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20044 19979 20056 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 20044 19979 20056 20228
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 20056 19979 20068 20228
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 20056 19979 20068 20228

execute if score #rg_sakura_land switch.data matches 1 run scoreboard players set #rg_sakura_land_y switch.data 85
execute if score #rg_sakura_land switch.data matches 1 run scoreboard players set #rg_sakura_land_mod switch.data 0
execute if score #rg_sakura_land switch.data matches ..1008 summon marker run function switch:maps/survival/sakura_land/regeneration_on_marker

execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run kill @e[type=item,x=19944,y=85,z=20103,distance=..1000]
execute if score #rg_sakura_land switch.data matches 1009.. run data remove storage switch:maps to_regenerate.sakura_land

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19821 19979 19833 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19821 19979 19833 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19833 19979 19845 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19833 19979 19845 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19845 19979 19856 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19845 19979 19856 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19856 19979 19868 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19856 19979 19868 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19868 19979 19880 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19868 19979 19880 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19880 19979 19892 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19880 19979 19892 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19892 19979 19903 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19892 19979 19903 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19903 19979 19915 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19903 19979 19915 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19915 19979 19927 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19915 19979 19927 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19927 19979 19939 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19927 19979 19939 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19939 19979 19950 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19939 19979 19950 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19950 19979 19962 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19950 19979 19962 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19962 19979 19974 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19962 19979 19974 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19974 19979 19986 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19974 19979 19986 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19986 19979 19997 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19986 19979 19997 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 19997 19979 20009 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 19997 19979 20009 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 20009 19979 20021 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 20009 19979 20021 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 20021 19979 20033 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 20021 19979 20033 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 20033 19979 20044 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 20033 19979 20044 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 20044 19979 20056 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 20044 19979 20056 20228

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 20056 19979 20068 20228
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 20056 19979 20068 20228

execute if score #rg_sakura_land switch.data matches 1009.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sakura Land","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"50","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sakura_land switch.data matches 1009.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Sakura Land` just regenerated!"}'
execute if score #rg_sakura_land switch.data matches 1009.. run function switch:engine/log_message/apply

execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sakura_land"}
execute if score #rg_sakura_land switch.data matches 1009.. run scoreboard players reset #rg_sakura_land switch.data
execute if score #rg_sakura_land switch.data matches 1.. run schedule function switch:maps/survival/sakura_land/regenerate 1t

