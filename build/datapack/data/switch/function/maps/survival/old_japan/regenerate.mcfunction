
#> switch:maps/survival/old_japan/regenerate
#
# @within	switch:maps/survival/old_japan/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_old_japan switch.data 1
execute if score #rg_old_japan switch.data matches 1 run data modify storage switch:maps to_regenerate.old_japan set value 2b
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add 47000 47000 47020 47100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add 47000 47000 47020 47100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add 47020 47000 47040 47100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add 47020 47000 47040 47100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add 47040 47000 47060 47100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add 47040 47000 47060 47100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add 47060 47000 47080 47100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add 47060 47000 47080 47100
execute if score #rg_old_japan switch.data matches 1 in minecraft:overworld run forceload add 47080 47000 47100 47100
execute if score #rg_old_japan switch.data matches 1 in switch:game run forceload add 47080 47000 47100 47100

execute if score #rg_old_japan switch.data matches 1 run scoreboard players set #rg_old_japan_y switch.data 100
execute if score #rg_old_japan switch.data matches 1 run scoreboard players set #rg_old_japan_mod switch.data 0
execute if score #rg_old_japan switch.data matches ..260 summon marker run function switch:maps/survival/old_japan/regeneration_on_marker

execute if score #rg_old_japan switch.data matches 261.. in switch:game run kill @e[type=item,x=47050,y=100,z=47050,distance=..1000]
execute if score #rg_old_japan switch.data matches 261.. run data remove storage switch:maps to_regenerate.old_japan

execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove 47000 47000 47020 47100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove 47000 47000 47020 47100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove 47020 47000 47040 47100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove 47020 47000 47040 47100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove 47040 47000 47060 47100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove 47040 47000 47060 47100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove 47060 47000 47080 47100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove 47060 47000 47080 47100
execute if score #rg_old_japan switch.data matches 261.. in minecraft:overworld run forceload remove 47080 47000 47100 47100
execute if score #rg_old_japan switch.data matches 261.. in switch:game run forceload remove 47080 47000 47100 47100

execute if score #rg_old_japan switch.data matches 261.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Old Japan","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_old_japan switch.data matches 261.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Old Japan` just regenerated!"}'
execute if score #rg_old_japan switch.data matches 261.. run function switch:engine/log_message/apply

execute if score #rg_old_japan switch.data matches 261.. in switch:game run function switch:maps/regenerate_doors_macro {name:"old_japan"}
execute if score #rg_old_japan switch.data matches 261.. run scoreboard players reset #rg_old_japan switch.data
execute if score #rg_old_japan switch.data matches 1.. run schedule function switch:maps/survival/old_japan/regenerate 1t

