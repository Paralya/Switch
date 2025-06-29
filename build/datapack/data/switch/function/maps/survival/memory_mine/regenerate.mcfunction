
#> switch:maps/survival/memory_mine/regenerate
#
# @within	switch:maps/survival/memory_mine/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_memory_mine switch.data 1
execute if score #rg_memory_mine switch.data matches 1 run data modify storage switch:maps to_regenerate.memory_mine set value 2b
execute if score #rg_memory_mine switch.data matches 1 in minecraft:overworld run forceload add 153000 153000 153014 153036
execute if score #rg_memory_mine switch.data matches 1 in switch:game run forceload add 153000 153000 153014 153036
execute if score #rg_memory_mine switch.data matches 1 in minecraft:overworld run forceload add 153014 153000 153029 153036
execute if score #rg_memory_mine switch.data matches 1 in switch:game run forceload add 153014 153000 153029 153036

execute if score #rg_memory_mine switch.data matches 1 run scoreboard players set #rg_memory_mine_y switch.data 100
execute if score #rg_memory_mine switch.data matches 1 run scoreboard players set #rg_memory_mine_mod switch.data 0
execute if score #rg_memory_mine switch.data matches ..34 summon marker run function switch:maps/survival/memory_mine/regeneration_on_marker

execute if score #rg_memory_mine switch.data matches 35.. in switch:game run kill @e[type=item,x=153014,y=100,z=153018,distance=..1000]
execute if score #rg_memory_mine switch.data matches 35.. run data remove storage switch:maps to_regenerate.memory_mine

execute if score #rg_memory_mine switch.data matches 35.. in minecraft:overworld run forceload remove 153000 153000 153014 153036
execute if score #rg_memory_mine switch.data matches 35.. in switch:game run forceload remove 153000 153000 153014 153036
execute if score #rg_memory_mine switch.data matches 35.. in minecraft:overworld run forceload remove 153014 153000 153029 153036
execute if score #rg_memory_mine switch.data matches 35.. in switch:game run forceload remove 153014 153000 153029 153036

execute if score #rg_memory_mine switch.data matches 35.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Memory Mine","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_memory_mine switch.data matches 35.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Memory Mine` just regenerated!"}'
execute if score #rg_memory_mine switch.data matches 35.. run function switch:engine/log_message/apply

execute if score #rg_memory_mine switch.data matches 35.. in switch:game run function switch:maps/regenerate_doors_macro {name:"memory_mine"}
execute if score #rg_memory_mine switch.data matches 35.. run scoreboard players reset #rg_memory_mine switch.data
execute if score #rg_memory_mine switch.data matches 1.. run schedule function switch:maps/survival/memory_mine/regenerate 1t

