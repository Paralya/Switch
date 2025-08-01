
#> switch:maps/survival/yeti_in_panic/regenerate
#
# @within	switch:maps/survival/yeti_in_panic/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_yeti_in_panic switch.data 1
execute if score #rg_yeti_in_panic switch.data matches 1 run data modify storage switch:maps to_regenerate.yeti_in_panic set value 2b
execute if score #rg_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158000 158000 158026 158070
execute if score #rg_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158000 158000 158026 158070
execute if score #rg_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158026 158000 158051 158070
execute if score #rg_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158026 158000 158051 158070
execute if score #rg_yeti_in_panic switch.data matches 1 in minecraft:overworld run forceload add 158051 158000 158077 158070
execute if score #rg_yeti_in_panic switch.data matches 1 in switch:game run forceload add 158051 158000 158077 158070

execute if score #rg_yeti_in_panic switch.data matches 1 run scoreboard players set #rg_yeti_in_panic_y switch.data 100
execute if score #rg_yeti_in_panic switch.data matches 1 run scoreboard players set #rg_yeti_in_panic_mod switch.data 0
execute if score #rg_yeti_in_panic switch.data matches ..204 summon marker run function switch:maps/survival/yeti_in_panic/regeneration_on_marker

execute if score #rg_yeti_in_panic switch.data matches 205.. in switch:game run kill @e[type=item,x=158038,y=100,z=158035,distance=..1000]
execute if score #rg_yeti_in_panic switch.data matches 205.. run data remove storage switch:maps to_regenerate.yeti_in_panic

execute if score #rg_yeti_in_panic switch.data matches 205.. in minecraft:overworld run forceload remove 158000 158000 158026 158070
execute if score #rg_yeti_in_panic switch.data matches 205.. in switch:game run forceload remove 158000 158000 158026 158070
execute if score #rg_yeti_in_panic switch.data matches 205.. in minecraft:overworld run forceload remove 158026 158000 158051 158070
execute if score #rg_yeti_in_panic switch.data matches 205.. in switch:game run forceload remove 158026 158000 158051 158070
execute if score #rg_yeti_in_panic switch.data matches 205.. in minecraft:overworld run forceload remove 158051 158000 158077 158070
execute if score #rg_yeti_in_panic switch.data matches 205.. in switch:game run forceload remove 158051 158000 158077 158070

execute if score #rg_yeti_in_panic switch.data matches 205.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Yeti in Panic","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_yeti_in_panic switch.data matches 205.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Yeti in Panic` just regenerated!"}'
execute if score #rg_yeti_in_panic switch.data matches 205.. run function switch:engine/log_message/apply

execute if score #rg_yeti_in_panic switch.data matches 205.. in switch:game run function switch:maps/regenerate_doors_macro {name:"yeti_in_panic"}
execute if score #rg_yeti_in_panic switch.data matches 205.. run scoreboard players reset #rg_yeti_in_panic switch.data
execute if score #rg_yeti_in_panic switch.data matches 1.. run schedule function switch:maps/survival/yeti_in_panic/regenerate 1t

