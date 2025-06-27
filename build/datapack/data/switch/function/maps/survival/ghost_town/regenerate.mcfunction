
#> switch:maps/survival/ghost_town/regenerate
#
# @within	switch:maps/survival/ghost_town/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ghost_town switch.data 1
execute if score #rg_ghost_town switch.data matches 1 run data modify storage switch:maps to_regenerate.ghost_town set value 2b
execute if score #rg_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42000 42000 42023 42056
execute if score #rg_ghost_town switch.data matches 1 in switch:game run forceload add 42000 42000 42023 42056
execute if score #rg_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42023 42000 42047 42056
execute if score #rg_ghost_town switch.data matches 1 in switch:game run forceload add 42023 42000 42047 42056
execute if score #rg_ghost_town switch.data matches 1 in minecraft:overworld run forceload add 42047 42000 42070 42056
execute if score #rg_ghost_town switch.data matches 1 in switch:game run forceload add 42047 42000 42070 42056

execute if score #rg_ghost_town switch.data matches 1 run scoreboard players set #rg_ghost_town_y switch.data 100
execute if score #rg_ghost_town switch.data matches 1 run scoreboard players set #rg_ghost_town_mod switch.data 0
execute if score #rg_ghost_town switch.data matches ..78 summon marker run function switch:maps/survival/ghost_town/regeneration_on_marker

execute if score #rg_ghost_town switch.data matches 79.. in switch:game run kill @e[type=item,x=42035,y=100,z=42028,distance=..1000]
execute if score #rg_ghost_town switch.data matches 79.. run data remove storage switch:maps to_regenerate.ghost_town

execute if score #rg_ghost_town switch.data matches 79.. in minecraft:overworld run forceload remove 42000 42000 42023 42056
execute if score #rg_ghost_town switch.data matches 79.. in switch:game run forceload remove 42000 42000 42023 42056

execute if score #rg_ghost_town switch.data matches 79.. in minecraft:overworld run forceload remove 42023 42000 42047 42056
execute if score #rg_ghost_town switch.data matches 79.. in switch:game run forceload remove 42023 42000 42047 42056

execute if score #rg_ghost_town switch.data matches 79.. in minecraft:overworld run forceload remove 42047 42000 42070 42056
execute if score #rg_ghost_town switch.data matches 79.. in switch:game run forceload remove 42047 42000 42070 42056

execute if score #rg_ghost_town switch.data matches 79.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Ghost Town","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_ghost_town switch.data matches 79.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Ghost Town` just regenerated!"}'
execute if score #rg_ghost_town switch.data matches 79.. run function switch:engine/log_message/apply

execute if score #rg_ghost_town switch.data matches 79.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ghost_town"}
execute if score #rg_ghost_town switch.data matches 79.. run scoreboard players reset #rg_ghost_town switch.data
execute if score #rg_ghost_town switch.data matches 1.. run schedule function switch:maps/survival/ghost_town/regenerate 1t

