
#> switch:maps/survival/survival_boat/regenerate
#
# @within	switch:maps/survival/survival_boat/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_survival_boat switch.data 1
execute if score #rg_survival_boat switch.data matches 1 run data modify storage switch:maps to_regenerate.survival_boat set value 2b
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79000 79000 79021 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79000 79000 79021 79102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79021 79000 79042 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79021 79000 79042 79102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79042 79000 79063 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79042 79000 79063 79102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79063 79000 79084 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79063 79000 79084 79102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79084 79000 79105 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79084 79000 79105 79102
execute if score #rg_survival_boat switch.data matches 1 in minecraft:overworld run forceload add 79105 79000 79126 79102
execute if score #rg_survival_boat switch.data matches 1 in switch:game run forceload add 79105 79000 79126 79102

execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_y switch.data 100
execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_mod switch.data 0
execute if score #rg_survival_boat switch.data matches ..600 summon marker run function switch:maps/survival/survival_boat/regeneration_on_marker

execute if score #rg_survival_boat switch.data matches 601.. in switch:game run kill @e[type=item,x=79063,y=100,z=79051,distance=..1000]
execute if score #rg_survival_boat switch.data matches 601.. run data remove storage switch:maps to_regenerate.survival_boat

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79000 79000 79021 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79000 79000 79021 79102

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79021 79000 79042 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79021 79000 79042 79102

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79042 79000 79063 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79042 79000 79063 79102

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79063 79000 79084 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79063 79000 79084 79102

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79084 79000 79105 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79084 79000 79105 79102

execute if score #rg_survival_boat switch.data matches 601.. in minecraft:overworld run forceload remove 79105 79000 79126 79102
execute if score #rg_survival_boat switch.data matches 601.. in switch:game run forceload remove 79105 79000 79126 79102

execute if score #rg_survival_boat switch.data matches 601.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Survival Boat","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"30","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_survival_boat switch.data matches 601.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Survival Boat` just regenerated!"}'
execute if score #rg_survival_boat switch.data matches 601.. run function switch:engine/log_message/apply

execute if score #rg_survival_boat switch.data matches 601.. in switch:game run function switch:maps/regenerate_doors_macro {name:"survival_boat"}
execute if score #rg_survival_boat switch.data matches 601.. run scoreboard players reset #rg_survival_boat switch.data
execute if score #rg_survival_boat switch.data matches 1.. run schedule function switch:maps/survival/survival_boat/regenerate 1t

