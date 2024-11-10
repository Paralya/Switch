
#> switch:maps/survival/the_four_elements/regenerate
#
# @within	switch:maps/survival/the_four_elements/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_the_four_elements switch.data 1
execute if score #rg_the_four_elements switch.data matches 1 run data modify storage switch:maps to_regenerate.the_four_elements set value 2b
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115000 115000 115020 115101
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 115000 115000 115020 115101
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115020 115000 115040 115101
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 115020 115000 115040 115101
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115040 115000 115061 115101
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 115040 115000 115061 115101
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115061 115000 115081 115101
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 115061 115000 115081 115101
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 115081 115000 115101 115101
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 115081 115000 115101 115101

execute if score #rg_the_four_elements switch.data matches 1 run scoreboard players set #rg_the_four_elements_y switch.data 0
execute if score #rg_the_four_elements switch.data matches 1 run scoreboard players set #rg_the_four_elements_mod switch.data 0
execute if score #rg_the_four_elements switch.data matches ..170 summon marker run function switch:maps/survival/the_four_elements/regeneration_on_marker

execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run kill @e[type=item,x=115050,y=0,z=115050,distance=..1000]
execute if score #rg_the_four_elements switch.data matches 171.. run data remove storage switch:maps to_regenerate.the_four_elements

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 115000 115000 115020 115101
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 115000 115000 115020 115101

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 115020 115000 115040 115101
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 115020 115000 115040 115101

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 115040 115000 115061 115101
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 115040 115000 115061 115101

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 115061 115000 115081 115101
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 115061 115000 115081 115101

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 115081 115000 115101 115101
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 115081 115000 115101 115101

execute if score #rg_the_four_elements switch.data matches 171.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"the_four_elements","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_the_four_elements switch.data matches 171.. run data modify storage switch:main MessageToLog set value '{"text":"Map `the_four_elements` just regenerated!"}'
execute if score #rg_the_four_elements switch.data matches 171.. run function switch:engine/log_message/apply

execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run function switch:maps/regenerate_doors_macro {name:"the_four_elements"}
execute if score #rg_the_four_elements switch.data matches 171.. run scoreboard players reset #rg_the_four_elements switch.data
execute if score #rg_the_four_elements switch.data matches 1.. run schedule function switch:maps/survival/the_four_elements/regenerate 1t

