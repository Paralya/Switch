
#> switch:maps/survival/bombardement/regenerate
#
# @within	switch:maps/survival/bombardement/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_bombardement switch.data 1
execute if score #rg_bombardement switch.data matches 1 run data modify storage switch:maps to_regenerate.bombardement set value 2b
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121000 121000 121023 121087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 121000 121000 121023 121087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121023 121000 121046 121087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 121023 121000 121046 121087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121046 121000 121069 121087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 121046 121000 121069 121087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121069 121000 121092 121087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 121069 121000 121092 121087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 121092 121000 121115 121087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 121092 121000 121115 121087

execute if score #rg_bombardement switch.data matches 1 run scoreboard players set #rg_bombardement_y switch.data 100
execute if score #rg_bombardement switch.data matches 1 run scoreboard players set #rg_bombardement_mod switch.data 0
execute if score #rg_bombardement switch.data matches ..390 summon marker run function switch:maps/survival/bombardement/regeneration_on_marker

execute if score #rg_bombardement switch.data matches 391.. in switch:game run kill @e[type=item,x=121057,y=100,z=121043,distance=..1000]
execute if score #rg_bombardement switch.data matches 391.. run data remove storage switch:maps to_regenerate.bombardement

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 121000 121000 121023 121087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 121000 121000 121023 121087

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 121023 121000 121046 121087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 121023 121000 121046 121087

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 121046 121000 121069 121087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 121046 121000 121069 121087

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 121069 121000 121092 121087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 121069 121000 121092 121087

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 121092 121000 121115 121087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 121092 121000 121115 121087

execute if score #rg_bombardement switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"bombardement","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_bombardement switch.data matches 391.. run data modify storage switch:main MessageToLog set value '{"text":"Map `bombardement` just regenerated!"}'
execute if score #rg_bombardement switch.data matches 391.. run function switch:engine/log_message/apply

execute if score #rg_bombardement switch.data matches 391.. in switch:game run function switch:maps/regenerate_doors_macro {name:"bombardement"}
execute if score #rg_bombardement switch.data matches 391.. run scoreboard players reset #rg_bombardement switch.data
execute if score #rg_bombardement switch.data matches 1.. run schedule function switch:maps/survival/bombardement/regenerate 1t

