
#> switch:maps/survival/city_race/regenerate
#
# @within	switch:maps/survival/city_race/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_city_race switch.data 1
execute if score #rg_city_race switch.data matches 1 run data modify storage switch:maps to_regenerate.city_race set value 2b
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6380 -5906 6392 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6380 -5906 6392 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6392 -5906 6403 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6392 -5906 6403 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6403 -5906 6415 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6403 -5906 6415 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6415 -5906 6427 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6415 -5906 6427 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6427 -5906 6438 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6427 -5906 6438 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6438 -5906 6450 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6438 -5906 6450 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6450 -5906 6462 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6450 -5906 6462 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6462 -5906 6473 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6462 -5906 6473 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6473 -5906 6485 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6473 -5906 6485 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6485 -5906 6497 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6485 -5906 6497 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6497 -5906 6508 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6497 -5906 6508 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6508 -5906 6520 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6508 -5906 6520 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6520 -5906 6532 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6520 -5906 6532 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6532 -5906 6543 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6532 -5906 6543 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6543 -5906 6555 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6543 -5906 6555 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6555 -5906 6567 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6555 -5906 6567 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6567 -5906 6578 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6567 -5906 6578 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6578 -5906 6590 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6578 -5906 6590 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6590 -5906 6602 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6590 -5906 6602 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6602 -5906 6613 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6602 -5906 6613 -5645
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 6613 -5906 6625 -5645
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 6613 -5906 6625 -5645

execute if score #rg_city_race switch.data matches 1 run scoreboard players set #rg_city_race_y switch.data 85
execute if score #rg_city_race switch.data matches 1 run scoreboard players set #rg_city_race_mod switch.data 0
execute if score #rg_city_race switch.data matches ..2520 summon marker run function switch:maps/survival/city_race/regeneration_on_marker

execute if score #rg_city_race switch.data matches 2521.. in switch:game run kill @e[type=item,x=6502,y=85,z=-5775,distance=..1000]
execute if score #rg_city_race switch.data matches 2521.. run data remove storage switch:maps to_regenerate.city_race

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6380 -5906 6392 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6380 -5906 6392 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6392 -5906 6403 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6392 -5906 6403 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6403 -5906 6415 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6403 -5906 6415 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6415 -5906 6427 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6415 -5906 6427 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6427 -5906 6438 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6427 -5906 6438 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6438 -5906 6450 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6438 -5906 6450 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6450 -5906 6462 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6450 -5906 6462 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6462 -5906 6473 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6462 -5906 6473 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6473 -5906 6485 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6473 -5906 6485 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6485 -5906 6497 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6485 -5906 6497 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6497 -5906 6508 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6497 -5906 6508 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6508 -5906 6520 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6508 -5906 6520 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6520 -5906 6532 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6520 -5906 6532 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6532 -5906 6543 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6532 -5906 6543 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6543 -5906 6555 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6543 -5906 6555 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6555 -5906 6567 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6555 -5906 6567 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6567 -5906 6578 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6567 -5906 6578 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6578 -5906 6590 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6578 -5906 6590 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6590 -5906 6602 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6590 -5906 6602 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6602 -5906 6613 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6602 -5906 6613 -5645
execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 6613 -5906 6625 -5645
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 6613 -5906 6625 -5645

execute if score #rg_city_race switch.data matches 2521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"City Race","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_city_race switch.data matches 2521.. run function switch:engine/log_message/apply {message:"Map `City Race` just regenerated!"}

execute if score #rg_city_race switch.data matches 2521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"city_race"}
execute if score #rg_city_race switch.data matches 2521.. run scoreboard players reset #rg_city_race switch.data
execute if score #rg_city_race switch.data matches 1.. run schedule function switch:maps/survival/city_race/regenerate 1t

