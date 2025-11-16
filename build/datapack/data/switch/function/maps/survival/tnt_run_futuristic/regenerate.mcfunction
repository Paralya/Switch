
#> switch:maps/survival/tnt_run_futuristic/regenerate
#
# @within	switch:maps/survival/tnt_run_futuristic/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_tnt_run_futuristic switch.data 1
execute if score #rg_tnt_run_futuristic switch.data matches 1 run data modify storage switch:maps to_regenerate.tnt_run_futuristic set value 2b
execute if score #rg_tnt_run_futuristic switch.data matches 1 in minecraft:overworld run forceload add 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 1 in switch:game run forceload add 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 1 in minecraft:overworld run forceload add 109030 109000 109059 109046
execute if score #rg_tnt_run_futuristic switch.data matches 1 in switch:game run forceload add 109030 109000 109059 109046

execute if score #rg_tnt_run_futuristic switch.data matches 1 run scoreboard players set #rg_tnt_run_futuristic_y switch.data 100
execute if score #rg_tnt_run_futuristic switch.data matches 1 run scoreboard players set #rg_tnt_run_futuristic_mod switch.data 0
execute if score #rg_tnt_run_futuristic switch.data matches ..138 summon marker run function switch:maps/survival/tnt_run_futuristic/regeneration_on_marker

execute if score #rg_tnt_run_futuristic switch.data matches 139.. in switch:game run kill @e[type=item,x=109029,y=100,z=109023,distance=..1000]
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run data remove storage switch:maps to_regenerate.tnt_run_futuristic

execute if score #rg_tnt_run_futuristic switch.data matches 139.. in minecraft:overworld run forceload remove 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 139.. in switch:game run forceload remove 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 139.. in minecraft:overworld run forceload remove 109030 109000 109059 109046
execute if score #rg_tnt_run_futuristic switch.data matches 139.. in switch:game run forceload remove 109030 109000 109059 109046

execute if score #rg_tnt_run_futuristic switch.data matches 139.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"TNT Run Futuristic","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run data modify storage switch:main MessageToLog set value '{"text":"Map `TNT Run Futuristic` just regenerated!"}'
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run function switch:engine/log_message/apply

execute if score #rg_tnt_run_futuristic switch.data matches 139.. in switch:game run function switch:maps/regenerate_doors_macro {name:"tnt_run_futuristic"}
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run scoreboard players reset #rg_tnt_run_futuristic switch.data
execute if score #rg_tnt_run_futuristic switch.data matches 1.. run schedule function switch:maps/survival/tnt_run_futuristic/regenerate 1t

