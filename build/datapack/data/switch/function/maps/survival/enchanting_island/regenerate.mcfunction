
#> switch:maps/survival/enchanting_island/regenerate
#
# @within	switch:maps/survival/enchanting_island/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_enchanting_island switch.data 1
execute if score #rg_enchanting_island switch.data matches 1 run data modify storage switch:maps to_regenerate.enchanting_island set value 2b
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 7000 7000 7020 7060
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 7000 7000 7020 7060
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 7020 7000 7040 7060
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 7020 7000 7040 7060
execute if score #rg_enchanting_island switch.data matches 1 in minecraft:overworld run forceload add 7040 7000 7060 7060
execute if score #rg_enchanting_island switch.data matches 1 in switch:game run forceload add 7040 7000 7060 7060

execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_y switch.data 100
execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_mod switch.data 0
execute if score #rg_enchanting_island switch.data matches ..150 summon marker run function switch:maps/survival/enchanting_island/regeneration_on_marker

execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run kill @e[type=item,x=7030,y=100,z=7030,distance=..1000]
execute if score #rg_enchanting_island switch.data matches 151.. run data remove storage switch:maps to_regenerate.enchanting_island

execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 7000 7000 7020 7060
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 7000 7000 7020 7060
execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 7020 7000 7040 7060
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 7020 7000 7040 7060
execute if score #rg_enchanting_island switch.data matches 151.. in minecraft:overworld run forceload remove 7040 7000 7060 7060
execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run forceload remove 7040 7000 7060 7060

execute if score #rg_enchanting_island switch.data matches 151.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Enchanting Island","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_enchanting_island switch.data matches 151.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Enchanting Island` just regenerated!"}'
execute if score #rg_enchanting_island switch.data matches 151.. run function switch:engine/log_message/apply

execute if score #rg_enchanting_island switch.data matches 151.. in switch:game run function switch:maps/regenerate_doors_macro {name:"enchanting_island"}
execute if score #rg_enchanting_island switch.data matches 151.. run scoreboard players reset #rg_enchanting_island switch.data
execute if score #rg_enchanting_island switch.data matches 1.. run schedule function switch:maps/survival/enchanting_island/regenerate 1t

