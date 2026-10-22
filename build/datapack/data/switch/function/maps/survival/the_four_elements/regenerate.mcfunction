
#> switch:maps/survival/the_four_elements/regenerate
#
# @within	switch:maps/survival/the_four_elements/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_the_four_elements switch.data 1
execute if score #rg_the_four_elements switch.data matches 1 run data modify storage switch:maps to_regenerate.the_four_elements set value 2b
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 10000 -8000 10020 -7899
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 10000 -8000 10020 -7899
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 10020 -8000 10040 -7899
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 10020 -8000 10040 -7899
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 10040 -8000 10061 -7899
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 10040 -8000 10061 -7899
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 10061 -8000 10081 -7899
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 10061 -8000 10081 -7899
execute if score #rg_the_four_elements switch.data matches 1 in minecraft:overworld run forceload add 10081 -8000 10101 -7899
execute if score #rg_the_four_elements switch.data matches 1 in switch:game run forceload add 10081 -8000 10101 -7899

execute if score #rg_the_four_elements switch.data matches 1 run scoreboard players set #rg_the_four_elements_y switch.data 100
execute if score #rg_the_four_elements switch.data matches 1 run scoreboard players set #rg_the_four_elements_mod switch.data 0
execute if score #rg_the_four_elements switch.data matches ..170 summon marker run function switch:maps/survival/the_four_elements/regeneration_on_marker

execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run kill @e[type=item,x=10050,y=100,z=-7949,distance=..1000]
execute if score #rg_the_four_elements switch.data matches 171.. run data remove storage switch:maps to_regenerate.the_four_elements

execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 10000 -8000 10020 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 10000 -8000 10020 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 10020 -8000 10040 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 10020 -8000 10040 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 10040 -8000 10061 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 10040 -8000 10061 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 10061 -8000 10081 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 10061 -8000 10081 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in minecraft:overworld run forceload remove 10081 -8000 10101 -7899
execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run forceload remove 10081 -8000 10101 -7899

execute if score #rg_the_four_elements switch.data matches 171.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"The Four Elements","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_the_four_elements switch.data matches 171.. run function switch:engine/log_message/apply {message:"Map `The Four Elements` just regenerated!"}

execute if score #rg_the_four_elements switch.data matches 171.. in switch:game run function switch:maps/regenerate_doors_macro {name:"the_four_elements"}
execute if score #rg_the_four_elements switch.data matches 171.. run scoreboard players reset #rg_the_four_elements switch.data
execute if score #rg_the_four_elements switch.data matches 1.. run schedule function switch:maps/survival/the_four_elements/regenerate 1t

