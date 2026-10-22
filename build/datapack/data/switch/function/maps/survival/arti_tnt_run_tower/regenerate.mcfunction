
#> switch:maps/survival/arti_tnt_run_tower/regenerate
#
# @within	switch:maps/survival/arti_tnt_run_tower/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_arti_tnt_run_tower switch.data 1
execute if score #rg_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.arti_tnt_run_tower set value 2b
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add -8000 -12000 -7990 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add -8000 -12000 -7990 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add -7990 -12000 -7980 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add -7990 -12000 -7980 -11980

execute if score #rg_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #rg_arti_tnt_run_tower_y switch.data 100
execute if score #rg_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #rg_arti_tnt_run_tower_mod switch.data 0
execute if score #rg_arti_tnt_run_tower switch.data matches ..166 summon marker run function switch:maps/survival/arti_tnt_run_tower/regeneration_on_marker

execute if score #rg_arti_tnt_run_tower switch.data matches 167.. in switch:game run kill @e[type=item,x=-7990,y=100,z=-11990,distance=..1000]
execute if score #rg_arti_tnt_run_tower switch.data matches 167.. run data remove storage switch:maps to_regenerate.arti_tnt_run_tower

execute if score #rg_arti_tnt_run_tower switch.data matches 167.. in minecraft:overworld run forceload remove -8000 -12000 -7990 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 167.. in switch:game run forceload remove -8000 -12000 -7990 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 167.. in minecraft:overworld run forceload remove -7990 -12000 -7980 -11980
execute if score #rg_arti_tnt_run_tower switch.data matches 167.. in switch:game run forceload remove -7990 -12000 -7980 -11980

execute if score #rg_arti_tnt_run_tower switch.data matches 167.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"TNT Run Tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_arti_tnt_run_tower switch.data matches 167.. run function switch:engine/log_message/apply {message:"Map `TNT Run Tower` just regenerated!"}

execute if score #rg_arti_tnt_run_tower switch.data matches 167.. run scoreboard players reset #rg_arti_tnt_run_tower switch.data
execute if score #rg_arti_tnt_run_tower switch.data matches 1.. run schedule function switch:maps/survival/arti_tnt_run_tower/regenerate 1t

