
#> switch:maps/survival/stardust_prison/regenerate
#
# @within	switch:maps/survival/stardust_prison/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_prison switch.data 1
execute if score #rg_stardust_prison switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_prison set value 2b
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106000 106000 106015 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106000 106000 106015 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106015 106000 106029 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106015 106000 106029 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106029 106000 106044 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106029 106000 106044 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106044 106000 106059 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106044 106000 106059 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106059 106000 106073 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106059 106000 106073 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106073 106000 106088 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106073 106000 106088 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106088 106000 106103 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106088 106000 106103 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106103 106000 106117 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106103 106000 106117 106178
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add 106117 106000 106132 106178
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add 106117 106000 106132 106178

execute if score #rg_stardust_prison switch.data matches 1 run scoreboard players set #rg_stardust_prison_y switch.data 100
execute if score #rg_stardust_prison switch.data matches 1 run scoreboard players set #rg_stardust_prison_mod switch.data 0
execute if score #rg_stardust_prison switch.data matches ..522 summon marker run function switch:maps/survival/stardust_prison/regeneration_on_marker

execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run kill @e[type=item,x=106066,y=100,z=106089,distance=..1000]
execute if score #rg_stardust_prison switch.data matches 523.. run data remove storage switch:maps to_regenerate.stardust_prison

execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106000 106000 106015 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106000 106000 106015 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106015 106000 106029 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106015 106000 106029 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106029 106000 106044 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106029 106000 106044 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106044 106000 106059 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106044 106000 106059 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106059 106000 106073 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106059 106000 106073 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106073 106000 106088 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106073 106000 106088 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106088 106000 106103 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106088 106000 106103 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106103 106000 106117 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106103 106000 106117 106178
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove 106117 106000 106132 106178
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove 106117 106000 106132 106178

execute if score #rg_stardust_prison switch.data matches 523.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Prison","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_prison switch.data matches 523.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Stardust Prison` just regenerated!"}'
execute if score #rg_stardust_prison switch.data matches 523.. run function switch:engine/log_message/apply

execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run function switch:maps/regenerate_doors_macro {name:"stardust_prison"}
execute if score #rg_stardust_prison switch.data matches 523.. run scoreboard players reset #rg_stardust_prison switch.data
execute if score #rg_stardust_prison switch.data matches 1.. run schedule function switch:maps/survival/stardust_prison/regenerate 1t

