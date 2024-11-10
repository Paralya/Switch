
#> switch:maps/survival/werewolf_village/regenerate
#
# @within	switch:maps/survival/werewolf_village/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_werewolf_village switch.data 1
execute if score #rg_werewolf_village switch.data matches 1 run data modify storage switch:maps to_regenerate.werewolf_village set value 2b
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93000 93000 93020 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93000 93000 93020 93122
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93020 93000 93041 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93020 93000 93041 93122
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93041 93000 93061 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93041 93000 93061 93122
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93061 93000 93081 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93061 93000 93081 93122
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93081 93000 93102 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93081 93000 93102 93122
execute if score #rg_werewolf_village switch.data matches 1 in minecraft:overworld run forceload add 93102 93000 93122 93122
execute if score #rg_werewolf_village switch.data matches 1 in switch:game run forceload add 93102 93000 93122 93122

execute if score #rg_werewolf_village switch.data matches 1 run scoreboard players set #rg_werewolf_village_y switch.data 0
execute if score #rg_werewolf_village switch.data matches 1 run scoreboard players set #rg_werewolf_village_mod switch.data 0
execute if score #rg_werewolf_village switch.data matches ..390 summon marker run function switch:maps/survival/werewolf_village/regeneration_on_marker

execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run kill @e[type=item,x=93061,y=0,z=93061,distance=..1000]
execute if score #rg_werewolf_village switch.data matches 391.. run data remove storage switch:maps to_regenerate.werewolf_village

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93000 93000 93020 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93000 93000 93020 93122

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93020 93000 93041 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93020 93000 93041 93122

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93041 93000 93061 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93041 93000 93061 93122

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93061 93000 93081 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93061 93000 93081 93122

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93081 93000 93102 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93081 93000 93102 93122

execute if score #rg_werewolf_village switch.data matches 391.. in minecraft:overworld run forceload remove 93102 93000 93122 93122
execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run forceload remove 93102 93000 93122 93122

execute if score #rg_werewolf_village switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"werewolf_village","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_werewolf_village switch.data matches 391.. run data modify storage switch:main MessageToLog set value '{"text":"Map `werewolf_village` just regenerated!"}'
execute if score #rg_werewolf_village switch.data matches 391.. run function switch:engine/log_message/apply

execute if score #rg_werewolf_village switch.data matches 391.. in switch:game run function switch:maps/regenerate_doors_macro {name:"werewolf_village"}
execute if score #rg_werewolf_village switch.data matches 391.. run scoreboard players reset #rg_werewolf_village switch.data
execute if score #rg_werewolf_village switch.data matches 1.. run schedule function switch:maps/survival/werewolf_village/regenerate 1t

