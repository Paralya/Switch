
#> switch:maps/survival/floating_island/regenerate
#
# @within	switch:maps/survival/floating_island/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_floating_island switch.data 1
execute if score #rg_floating_island switch.data matches 1 run data modify storage switch:maps to_regenerate.floating_island set value 2b
execute if score #rg_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94000 94000 94025 94076
execute if score #rg_floating_island switch.data matches 1 in switch:game run forceload add 94000 94000 94025 94076
execute if score #rg_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94025 94000 94051 94076
execute if score #rg_floating_island switch.data matches 1 in switch:game run forceload add 94025 94000 94051 94076
execute if score #rg_floating_island switch.data matches 1 in minecraft:overworld run forceload add 94051 94000 94076 94076
execute if score #rg_floating_island switch.data matches 1 in switch:game run forceload add 94051 94000 94076 94076

execute if score #rg_floating_island switch.data matches 1 run scoreboard players set #rg_floating_island_y switch.data 100
execute if score #rg_floating_island switch.data matches 1 run scoreboard players set #rg_floating_island_mod switch.data 0
execute if score #rg_floating_island switch.data matches ..300 summon marker run function switch:maps/survival/floating_island/regeneration_on_marker

execute if score #rg_floating_island switch.data matches 301.. in switch:game run kill @e[type=item,x=94038,y=100,z=94038,distance=..1000]
execute if score #rg_floating_island switch.data matches 301.. run data remove storage switch:maps to_regenerate.floating_island

execute if score #rg_floating_island switch.data matches 301.. in minecraft:overworld run forceload remove 94000 94000 94025 94076
execute if score #rg_floating_island switch.data matches 301.. in switch:game run forceload remove 94000 94000 94025 94076

execute if score #rg_floating_island switch.data matches 301.. in minecraft:overworld run forceload remove 94025 94000 94051 94076
execute if score #rg_floating_island switch.data matches 301.. in switch:game run forceload remove 94025 94000 94051 94076

execute if score #rg_floating_island switch.data matches 301.. in minecraft:overworld run forceload remove 94051 94000 94076 94076
execute if score #rg_floating_island switch.data matches 301.. in switch:game run forceload remove 94051 94000 94076 94076

execute if score #rg_floating_island switch.data matches 301.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Floating Island","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_floating_island switch.data matches 301.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Floating Island` just regenerated!"}'
execute if score #rg_floating_island switch.data matches 301.. run function switch:engine/log_message/apply

execute if score #rg_floating_island switch.data matches 301.. in switch:game run function switch:maps/regenerate_doors_macro {name:"floating_island"}
execute if score #rg_floating_island switch.data matches 301.. run scoreboard players reset #rg_floating_island switch.data
execute if score #rg_floating_island switch.data matches 1.. run schedule function switch:maps/survival/floating_island/regenerate 1t

