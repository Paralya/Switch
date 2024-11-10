
#> switch:maps/survival/snk_lab_s11/regenerate
#
# @within	switch:maps/survival/snk_lab_s11/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snk_lab_s11 switch.data 1
execute if score #rg_snk_lab_s11 switch.data matches 1 run data modify storage switch:maps to_regenerate.snk_lab_s11 set value 2b
execute if score #rg_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67000 67000 67022 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67000 67000 67022 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67022 67000 67043 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67022 67000 67043 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 in minecraft:overworld run forceload add 67043 67000 67065 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 in switch:game run forceload add 67043 67000 67065 67073

execute if score #rg_snk_lab_s11 switch.data matches 1 run scoreboard players set #rg_snk_lab_s11_y switch.data 0
execute if score #rg_snk_lab_s11 switch.data matches 1 run scoreboard players set #rg_snk_lab_s11_mod switch.data 0
execute if score #rg_snk_lab_s11 switch.data matches ..102 summon marker run function switch:maps/survival/snk_lab_s11/regeneration_on_marker

execute if score #rg_snk_lab_s11 switch.data matches 103.. in switch:game run kill @e[type=item,x=67032,y=0,z=67036,distance=..1000]
execute if score #rg_snk_lab_s11 switch.data matches 103.. run data remove storage switch:maps to_regenerate.snk_lab_s11

execute if score #rg_snk_lab_s11 switch.data matches 103.. in minecraft:overworld run forceload remove 67000 67000 67022 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. in switch:game run forceload remove 67000 67000 67022 67073

execute if score #rg_snk_lab_s11 switch.data matches 103.. in minecraft:overworld run forceload remove 67022 67000 67043 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. in switch:game run forceload remove 67022 67000 67043 67073

execute if score #rg_snk_lab_s11 switch.data matches 103.. in minecraft:overworld run forceload remove 67043 67000 67065 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. in switch:game run forceload remove 67043 67000 67065 67073

execute if score #rg_snk_lab_s11 switch.data matches 103.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"snk_lab_s11","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_snk_lab_s11 switch.data matches 103.. run data modify storage switch:main MessageToLog set value '{"text":"Map `snk_lab_s11` just regenerated!"}'
execute if score #rg_snk_lab_s11 switch.data matches 103.. run function switch:engine/log_message/apply

execute if score #rg_snk_lab_s11 switch.data matches 103.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snk_lab_s11"}
execute if score #rg_snk_lab_s11 switch.data matches 103.. run scoreboard players reset #rg_snk_lab_s11 switch.data
execute if score #rg_snk_lab_s11 switch.data matches 1.. run schedule function switch:maps/survival/snk_lab_s11/regenerate 1t

