
#> switch:maps/survival/boat_race_2/regenerate
#
# @within	switch:maps/survival/boat_race_2/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_boat_race_2 switch.data 1
execute if score #rg_boat_race_2 switch.data matches 1 run data modify storage switch:maps to_regenerate.boat_race_2 set value 2b
execute if score #rg_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51000 51000 51020 51123
execute if score #rg_boat_race_2 switch.data matches 1 in switch:game run forceload add 51000 51000 51020 51123
execute if score #rg_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51020 51000 51040 51123
execute if score #rg_boat_race_2 switch.data matches 1 in switch:game run forceload add 51020 51000 51040 51123
execute if score #rg_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51040 51000 51059 51123
execute if score #rg_boat_race_2 switch.data matches 1 in switch:game run forceload add 51040 51000 51059 51123
execute if score #rg_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51059 51000 51079 51123
execute if score #rg_boat_race_2 switch.data matches 1 in switch:game run forceload add 51059 51000 51079 51123
execute if score #rg_boat_race_2 switch.data matches 1 in minecraft:overworld run forceload add 51079 51000 51099 51123
execute if score #rg_boat_race_2 switch.data matches 1 in switch:game run forceload add 51079 51000 51099 51123

execute if score #rg_boat_race_2 switch.data matches 1 run scoreboard players set #rg_boat_race_2_y switch.data 100
execute if score #rg_boat_race_2 switch.data matches 1 run scoreboard players set #rg_boat_race_2_mod switch.data 0
execute if score #rg_boat_race_2 switch.data matches ..405 summon marker run function switch:maps/survival/boat_race_2/regeneration_on_marker

execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run kill @e[type=item,x=51049,y=100,z=51061,distance=..1000]
execute if score #rg_boat_race_2 switch.data matches 406.. run data remove storage switch:maps to_regenerate.boat_race_2

execute if score #rg_boat_race_2 switch.data matches 406.. in minecraft:overworld run forceload remove 51000 51000 51020 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run forceload remove 51000 51000 51020 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in minecraft:overworld run forceload remove 51020 51000 51040 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run forceload remove 51020 51000 51040 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in minecraft:overworld run forceload remove 51040 51000 51059 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run forceload remove 51040 51000 51059 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in minecraft:overworld run forceload remove 51059 51000 51079 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run forceload remove 51059 51000 51079 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in minecraft:overworld run forceload remove 51079 51000 51099 51123
execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run forceload remove 51079 51000 51099 51123

execute if score #rg_boat_race_2 switch.data matches 406.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Boat Race 2","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_boat_race_2 switch.data matches 406.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Boat Race 2` just regenerated!"}'
execute if score #rg_boat_race_2 switch.data matches 406.. run function switch:engine/log_message/apply

execute if score #rg_boat_race_2 switch.data matches 406.. in switch:game run function switch:maps/regenerate_doors_macro {name:"boat_race_2"}
execute if score #rg_boat_race_2 switch.data matches 406.. run scoreboard players reset #rg_boat_race_2 switch.data
execute if score #rg_boat_race_2 switch.data matches 1.. run schedule function switch:maps/survival/boat_race_2/regenerate 1t

