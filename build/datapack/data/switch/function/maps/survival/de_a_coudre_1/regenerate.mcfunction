
#> switch:maps/survival/de_a_coudre_1/regenerate
#
# @within	switch:maps/survival/de_a_coudre_1/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_de_a_coudre_1 switch.data 1
execute if score #rg_de_a_coudre_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.de_a_coudre_1 set value 2b
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 28968 28971 28996 29031
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 28968 28971 28996 29031
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 28996 28971 29023 29031
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 28996 28971 29023 29031
execute if score #rg_de_a_coudre_1 switch.data matches 1 in minecraft:overworld run forceload add 29023 28971 29051 29031
execute if score #rg_de_a_coudre_1 switch.data matches 1 in switch:game run forceload add 29023 28971 29051 29031

execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_y switch.data 95
execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0
execute if score #rg_de_a_coudre_1 switch.data matches ..294 summon marker run function switch:maps/survival/de_a_coudre_1/regeneration_on_marker

execute if score #rg_de_a_coudre_1 switch.data matches 295.. in switch:game run kill @e[type=item,x=29009,y=95,z=29001,distance=..1000]
execute if score #rg_de_a_coudre_1 switch.data matches 295.. run data remove storage switch:maps to_regenerate.de_a_coudre_1

execute if score #rg_de_a_coudre_1 switch.data matches 295.. in minecraft:overworld run forceload remove 28968 28971 28996 29031
execute if score #rg_de_a_coudre_1 switch.data matches 295.. in switch:game run forceload remove 28968 28971 28996 29031

execute if score #rg_de_a_coudre_1 switch.data matches 295.. in minecraft:overworld run forceload remove 28996 28971 29023 29031
execute if score #rg_de_a_coudre_1 switch.data matches 295.. in switch:game run forceload remove 28996 28971 29023 29031

execute if score #rg_de_a_coudre_1 switch.data matches 295.. in minecraft:overworld run forceload remove 29023 28971 29051 29031
execute if score #rg_de_a_coudre_1 switch.data matches 295.. in switch:game run forceload remove 29023 28971 29051 29031

execute if score #rg_de_a_coudre_1 switch.data matches 295.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"de_a_coudre_1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"14","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_de_a_coudre_1 switch.data matches 295.. run data modify storage switch:main MessageToLog set value '{"text":"Map `de_a_coudre_1` just regenerated!"}'
execute if score #rg_de_a_coudre_1 switch.data matches 295.. run function switch:engine/log_message/apply

execute if score #rg_de_a_coudre_1 switch.data matches 295.. in switch:game run function switch:maps/regenerate_doors_macro {name:"de_a_coudre_1"}
execute if score #rg_de_a_coudre_1 switch.data matches 295.. run scoreboard players reset #rg_de_a_coudre_1 switch.data
execute if score #rg_de_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/regenerate 1t

