
#> switch:maps/survival/enchanting_island/regenerate
#
# @within	switch:maps/survival/enchanting_island/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_enchanting_island switch.data 1
execute if score #rg_enchanting_island switch.data matches 1 run data modify storage switch:maps to_regenerate.enchanting_island set value 2b
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 6970 6970 6990 7030
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 6970 6970 6990 7030
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 6990 6970 7010 7030
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 6990 6970 7010 7030
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 7010 6970 7030 7030
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 7010 6970 7030 7030

execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_y switch.data 0
execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_mod switch.data 0
execute if score #rg_enchanting_island switch.data matches ..150 summon marker run function switch:maps/survival/enchanting_island/regeneration_on_marker

execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run kill @e[type=item,x=7000,y=0,z=7000,distance=..1000]
execute if score #rg_enchanting_island switch.data matches 151.. run data remove storage switch:maps to_regenerate.enchanting_island

execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 6970 6970 6990 7030
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 6970 6970 6990 7030

execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 6990 6970 7010 7030
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 6990 6970 7010 7030

execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 7010 6970 7030 7030
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 7010 6970 7030 7030

execute if score #rg_enchanting_island switch.data matches 151.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"enchanting_island","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_enchanting_island switch.data matches 151.. run data modify storage switch:main MessageToLog set value '{"text":"Map `enchanting_island` just regenerated!"}'
execute if score #rg_enchanting_island switch.data matches 151.. run function switch:engine/log_message/apply

execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run function switch:maps/regenerate_doors_macro {name:"enchanting_island"}
execute if score #rg_enchanting_island switch.data matches 151.. run scoreboard players reset #rg_enchanting_island switch.data
execute if score #rg_enchanting_island switch.data matches 1.. run schedule function switch:maps/survival/enchanting_island/regenerate 1t

