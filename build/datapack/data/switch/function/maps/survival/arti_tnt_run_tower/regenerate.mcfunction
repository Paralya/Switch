
#> switch:maps/survival/arti_tnt_run_tower/regenerate
#
# @within	switch:maps/survival/arti_tnt_run_tower/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_arti_tnt_run_tower switch.data 1
execute if score #rg_arti_tnt_run_tower switch.data matches 1 run data modify storage switch:maps to_regenerate.arti_tnt_run_tower set value 2b
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add 152000 152000 152010 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add 152000 152000 152010 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in minecraft:overworld run forceload add 152010 152000 152020 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 1 in switch:game run forceload add 152010 152000 152020 152020

execute if score #rg_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #rg_arti_tnt_run_tower_y switch.data 100
execute if score #rg_arti_tnt_run_tower switch.data matches 1 run scoreboard players set #rg_arti_tnt_run_tower_mod switch.data 0
execute if score #rg_arti_tnt_run_tower switch.data matches ..148 summon marker run function switch:maps/survival/arti_tnt_run_tower/regeneration_on_marker

execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in switch:game run kill @e[type=item,x=152010,y=100,z=152010,distance=..1000]
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. run data remove storage switch:maps to_regenerate.arti_tnt_run_tower

execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in minecraft:overworld run forceload remove 152000 152000 152010 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in switch:game run forceload remove 152000 152000 152010 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in minecraft:overworld run forceload remove 152010 152000 152020 152020
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in switch:game run forceload remove 152010 152000 152020 152020

execute if score #rg_arti_tnt_run_tower switch.data matches 149.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"TNT Run Tower","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. run data modify storage switch:main MessageToLog set value '{"text":"Map `TNT Run Tower` just regenerated!"}'
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. run function switch:engine/log_message/apply

execute if score #rg_arti_tnt_run_tower switch.data matches 149.. in switch:game run function switch:maps/regenerate_doors_macro {name:"arti_tnt_run_tower"}
execute if score #rg_arti_tnt_run_tower switch.data matches 149.. run scoreboard players reset #rg_arti_tnt_run_tower switch.data
execute if score #rg_arti_tnt_run_tower switch.data matches 1.. run schedule function switch:maps/survival/arti_tnt_run_tower/regenerate 1t

