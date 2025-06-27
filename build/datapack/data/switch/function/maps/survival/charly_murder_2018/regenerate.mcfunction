
#> switch:maps/survival/charly_murder_2018/regenerate
#
# @within	switch:maps/survival/charly_murder_2018/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_charly_murder_2018 switch.data 1
execute if score #rg_charly_murder_2018 switch.data matches 1 run data modify storage switch:maps to_regenerate.charly_murder_2018 set value 2b
execute if score #rg_charly_murder_2018 switch.data matches 1 in minecraft:overworld run forceload add 136000 136000 136026 136053
execute if score #rg_charly_murder_2018 switch.data matches 1 in switch:game run forceload add 136000 136000 136026 136053
execute if score #rg_charly_murder_2018 switch.data matches 1 in minecraft:overworld run forceload add 136026 136000 136052 136053
execute if score #rg_charly_murder_2018 switch.data matches 1 in switch:game run forceload add 136026 136000 136052 136053

execute if score #rg_charly_murder_2018 switch.data matches 1 run scoreboard players set #rg_charly_murder_2018_y switch.data 100
execute if score #rg_charly_murder_2018 switch.data matches 1 run scoreboard players set #rg_charly_murder_2018_mod switch.data 0
execute if score #rg_charly_murder_2018 switch.data matches ..64 summon marker run function switch:maps/survival/charly_murder_2018/regeneration_on_marker

execute if score #rg_charly_murder_2018 switch.data matches 65.. in switch:game run kill @e[type=item,x=136026,y=100,z=136026,distance=..1000]
execute if score #rg_charly_murder_2018 switch.data matches 65.. run data remove storage switch:maps to_regenerate.charly_murder_2018

execute if score #rg_charly_murder_2018 switch.data matches 65.. in minecraft:overworld run forceload remove 136000 136000 136026 136053
execute if score #rg_charly_murder_2018 switch.data matches 65.. in switch:game run forceload remove 136000 136000 136026 136053

execute if score #rg_charly_murder_2018 switch.data matches 65.. in minecraft:overworld run forceload remove 136026 136000 136052 136053
execute if score #rg_charly_murder_2018 switch.data matches 65.. in switch:game run forceload remove 136026 136000 136052 136053

execute if score #rg_charly_murder_2018 switch.data matches 65.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"MurderUHC House (2018)","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_charly_murder_2018 switch.data matches 65.. run data modify storage switch:main MessageToLog set value '{"text":"Map `MurderUHC House (2018)` just regenerated!"}'
execute if score #rg_charly_murder_2018 switch.data matches 65.. run function switch:engine/log_message/apply

execute if score #rg_charly_murder_2018 switch.data matches 65.. in switch:game run function switch:maps/regenerate_doors_macro {name:"charly_murder_2018"}
execute if score #rg_charly_murder_2018 switch.data matches 65.. run scoreboard players reset #rg_charly_murder_2018 switch.data
execute if score #rg_charly_murder_2018 switch.data matches 1.. run schedule function switch:maps/survival/charly_murder_2018/regenerate 1t

