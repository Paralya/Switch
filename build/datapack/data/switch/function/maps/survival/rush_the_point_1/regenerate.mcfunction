
#> switch:maps/survival/rush_the_point_1/regenerate
#
# @executed	in switch:game
#
# @within	switch:maps/survival/rush_the_point_1/regenerate 1t [ scheduled ]
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_rush_the_point_1 switch.data 1
execute if score #rg_rush_the_point_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.rush_the_point_1 set value 2b
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add 14085 13901 14099 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add 14085 13901 14099 14099

execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_y switch.data 0
execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_mod switch.data 0
execute if score #rg_rush_the_point_1 switch.data matches ..256 summon marker run function switch:maps/survival/rush_the_point_1/regeneration_on_marker

execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run kill @e[type=item,x=14000,y=0,z=14000,distance=..1000]
execute if score #rg_rush_the_point_1 switch.data matches 257.. run data remove storage switch:maps to_regenerate.rush_the_point_1

execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove 14085 13901 14099 14099
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove 14085 13901 14099 14099

execute if score #rg_rush_the_point_1 switch.data matches 257.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Rush the Point 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_rush_the_point_1 switch.data matches 257.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Rush the Point 1` just regenerated!"}'
execute if score #rg_rush_the_point_1 switch.data matches 257.. run function switch:engine/log_message/apply

execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run function switch:maps/regenerate_doors_macro {name:"rush_the_point_1"}
execute if score #rg_rush_the_point_1 switch.data matches 257.. run scoreboard players reset #rg_rush_the_point_1 switch.data
execute if score #rg_rush_the_point_1 switch.data matches 1.. run schedule function switch:maps/survival/rush_the_point_1/regenerate 1t

