
#> switch:maps/survival/zonweeb_main/regenerate
#
# @within	switch:maps/survival/zonweeb_main/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_zonweeb_main switch.data 1
execute if score #rg_zonweeb_main switch.data matches 1 run data modify storage switch:maps to_regenerate.zonweeb_main set value 2b
execute if score #rg_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32000 32000 32020 32100
execute if score #rg_zonweeb_main switch.data matches 1 in switch:game run forceload add 32000 32000 32020 32100
execute if score #rg_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32020 32000 32040 32100
execute if score #rg_zonweeb_main switch.data matches 1 in switch:game run forceload add 32020 32000 32040 32100
execute if score #rg_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32040 32000 32060 32100
execute if score #rg_zonweeb_main switch.data matches 1 in switch:game run forceload add 32040 32000 32060 32100
execute if score #rg_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32060 32000 32080 32100
execute if score #rg_zonweeb_main switch.data matches 1 in switch:game run forceload add 32060 32000 32080 32100
execute if score #rg_zonweeb_main switch.data matches 1 in minecraft:overworld run forceload add 32080 32000 32100 32100
execute if score #rg_zonweeb_main switch.data matches 1 in switch:game run forceload add 32080 32000 32100 32100

execute if score #rg_zonweeb_main switch.data matches 1 run scoreboard players set #rg_zonweeb_main_y switch.data 100
execute if score #rg_zonweeb_main switch.data matches 1 run scoreboard players set #rg_zonweeb_main_mod switch.data 0
execute if score #rg_zonweeb_main switch.data matches ..225 summon marker run function switch:maps/survival/zonweeb_main/regeneration_on_marker

execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run kill @e[type=item,x=32050,y=100,z=32050,distance=..1000]
execute if score #rg_zonweeb_main switch.data matches 226.. run data remove storage switch:maps to_regenerate.zonweeb_main

execute if score #rg_zonweeb_main switch.data matches 226.. in minecraft:overworld run forceload remove 32000 32000 32020 32100
execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run forceload remove 32000 32000 32020 32100

execute if score #rg_zonweeb_main switch.data matches 226.. in minecraft:overworld run forceload remove 32020 32000 32040 32100
execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run forceload remove 32020 32000 32040 32100

execute if score #rg_zonweeb_main switch.data matches 226.. in minecraft:overworld run forceload remove 32040 32000 32060 32100
execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run forceload remove 32040 32000 32060 32100

execute if score #rg_zonweeb_main switch.data matches 226.. in minecraft:overworld run forceload remove 32060 32000 32080 32100
execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run forceload remove 32060 32000 32080 32100

execute if score #rg_zonweeb_main switch.data matches 226.. in minecraft:overworld run forceload remove 32080 32000 32100 32100
execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run forceload remove 32080 32000 32100 32100

execute if score #rg_zonweeb_main switch.data matches 226.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Zonweeb Main","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_zonweeb_main switch.data matches 226.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Zonweeb Main` just regenerated!"}'
execute if score #rg_zonweeb_main switch.data matches 226.. run function switch:engine/log_message/apply

execute if score #rg_zonweeb_main switch.data matches 226.. in switch:game run function switch:maps/regenerate_doors_macro {name:"zonweeb_main"}
execute if score #rg_zonweeb_main switch.data matches 226.. run scoreboard players reset #rg_zonweeb_main switch.data
execute if score #rg_zonweeb_main switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_main/regenerate 1t

