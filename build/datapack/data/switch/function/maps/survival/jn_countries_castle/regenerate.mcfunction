
#> switch:maps/survival/jn_countries_castle/regenerate
#
# @within	switch:maps/survival/jn_countries_castle/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_countries_castle switch.data 1
execute if score #rg_jn_countries_castle switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_countries_castle set value 2b
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -2000 10000 -1980 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -2000 10000 -1980 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1980 10000 -1960 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1980 10000 -1960 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1960 10000 -1940 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1960 10000 -1940 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1940 10000 -1920 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1940 10000 -1920 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1920 10000 -1900 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1920 10000 -1900 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in minecraft:overworld run forceload add -1900 10000 -1880 10120
execute if score #rg_jn_countries_castle switch.data matches 1 in switch:game run forceload add -1900 10000 -1880 10120

execute if score #rg_jn_countries_castle switch.data matches 1 run scoreboard players set #rg_jn_countries_castle_y switch.data 100
execute if score #rg_jn_countries_castle switch.data matches 1 run scoreboard players set #rg_jn_countries_castle_mod switch.data 0
execute if score #rg_jn_countries_castle switch.data matches ..264 summon marker run function switch:maps/survival/jn_countries_castle/regeneration_on_marker

execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run kill @e[type=item,x=-1940,y=100,z=10060,distance=..1000]
execute if score #rg_jn_countries_castle switch.data matches 265.. run data remove storage switch:maps to_regenerate.jn_countries_castle

execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -2000 10000 -1980 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -2000 10000 -1980 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -1980 10000 -1960 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -1980 10000 -1960 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -1960 10000 -1940 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -1960 10000 -1940 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -1940 10000 -1920 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -1940 10000 -1920 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -1920 10000 -1900 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -1920 10000 -1900 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in minecraft:overworld run forceload remove -1900 10000 -1880 10120
execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run forceload remove -1900 10000 -1880 10120

execute if score #rg_jn_countries_castle switch.data matches 265.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Countries Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jn_countries_castle switch.data matches 265.. run function switch:engine/log_message/apply {message:"Map `Countries Castle` just regenerated!"}

execute if score #rg_jn_countries_castle switch.data matches 265.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_countries_castle"}
execute if score #rg_jn_countries_castle switch.data matches 265.. run scoreboard players reset #rg_jn_countries_castle switch.data
execute if score #rg_jn_countries_castle switch.data matches 1.. run schedule function switch:maps/survival/jn_countries_castle/regenerate 1t

