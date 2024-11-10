
#> switch:maps/survival/sakura_house/regenerate
#
# @within	switch:maps/survival/sakura_house/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sakura_house switch.data 1
execute if score #rg_sakura_house switch.data matches 1 run data modify storage switch:maps to_regenerate.sakura_house set value 2b
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86000 86000 86017 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86000 86000 86017 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86017 86000 86035 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86017 86000 86035 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86035 86000 86052 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86035 86000 86052 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86052 86000 86069 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86052 86000 86069 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86069 86000 86086 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86069 86000 86086 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86086 86000 86104 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86086 86000 86104 86135
execute if score #rg_sakura_house switch.data matches 1 in minecraft:overworld run forceload add 86104 86000 86121 86135
execute if score #rg_sakura_house switch.data matches 1 in switch:game run forceload add 86104 86000 86121 86135

execute if score #rg_sakura_house switch.data matches 1 run scoreboard players set #rg_sakura_house_y switch.data 0
execute if score #rg_sakura_house switch.data matches 1 run scoreboard players set #rg_sakura_house_mod switch.data 0
execute if score #rg_sakura_house switch.data matches ..665 summon marker run function switch:maps/survival/sakura_house/regeneration_on_marker

execute if score #rg_sakura_house switch.data matches 666.. in switch:game run kill @e[type=item,x=86060,y=0,z=86067,distance=..1000]
execute if score #rg_sakura_house switch.data matches 666.. run data remove storage switch:maps to_regenerate.sakura_house

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86000 86000 86017 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86000 86000 86017 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86017 86000 86035 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86017 86000 86035 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86035 86000 86052 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86035 86000 86052 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86052 86000 86069 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86052 86000 86069 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86069 86000 86086 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86069 86000 86086 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86086 86000 86104 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86086 86000 86104 86135

execute if score #rg_sakura_house switch.data matches 666.. in minecraft:overworld run forceload remove 86104 86000 86121 86135
execute if score #rg_sakura_house switch.data matches 666.. in switch:game run forceload remove 86104 86000 86121 86135

execute if score #rg_sakura_house switch.data matches 666.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"sakura_house","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sakura_house switch.data matches 666.. run data modify storage switch:main MessageToLog set value '{"text":"Map `sakura_house` just regenerated!"}'
execute if score #rg_sakura_house switch.data matches 666.. run function switch:engine/log_message/apply

execute if score #rg_sakura_house switch.data matches 666.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sakura_house"}
execute if score #rg_sakura_house switch.data matches 666.. run scoreboard players reset #rg_sakura_house switch.data
execute if score #rg_sakura_house switch.data matches 1.. run schedule function switch:maps/survival/sakura_house/regenerate 1t

