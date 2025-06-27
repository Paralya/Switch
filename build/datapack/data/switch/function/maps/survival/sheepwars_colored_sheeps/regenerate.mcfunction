
#> switch:maps/survival/sheepwars_colored_sheeps/regenerate
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sheepwars_colored_sheeps switch.data 1
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 run data modify storage switch:maps to_regenerate.sheepwars_colored_sheeps set value 2b
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154000 154000 154021 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154000 154000 154021 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154021 154000 154043 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154021 154000 154043 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154043 154000 154064 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154043 154000 154064 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154064 154000 154086 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154064 154000 154086 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in minecraft:overworld run forceload add 154086 154000 154107 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 in switch:game run forceload add 154086 154000 154107 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #rg_sheepwars_colored_sheeps_y switch.data 100
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1 run scoreboard players set #rg_sheepwars_colored_sheeps_mod switch.data 0
execute if score #rg_sheepwars_colored_sheeps switch.data matches ..350 summon marker run function switch:maps/survival/sheepwars_colored_sheeps/regeneration_on_marker

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run kill @e[type=item,x=154053,y=100,z=154053,distance=..1000]
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. run data remove storage switch:maps to_regenerate.sheepwars_colored_sheeps

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in minecraft:overworld run forceload remove 154000 154000 154021 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run forceload remove 154000 154000 154021 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in minecraft:overworld run forceload remove 154021 154000 154043 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run forceload remove 154021 154000 154043 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in minecraft:overworld run forceload remove 154043 154000 154064 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run forceload remove 154043 154000 154064 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in minecraft:overworld run forceload remove 154064 154000 154086 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run forceload remove 154064 154000 154086 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in minecraft:overworld run forceload remove 154086 154000 154107 154106
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run forceload remove 154086 154000 154107 154106

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Colored Sheeps","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Colored Sheeps` just regenerated!"}'
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. run function switch:engine/log_message/apply

execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. in switch:game run function switch:maps/regenerate_doors_macro {name:"sheepwars_colored_sheeps"}
execute if score #rg_sheepwars_colored_sheeps switch.data matches 351.. run scoreboard players reset #rg_sheepwars_colored_sheeps switch.data
execute if score #rg_sheepwars_colored_sheeps switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_colored_sheeps/regenerate 1t

