
#> switch:maps/survival/elytra_box/regenerate
#
# @within	switch:maps/survival/elytra_box/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_elytra_box switch.data 1
execute if score #rg_elytra_box switch.data matches 1 run data modify storage switch:maps to_regenerate.elytra_box set value 2b
execute if score #rg_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6000 6000 6012 6159
execute if score #rg_elytra_box switch.data matches 1 in switch:game run forceload add 6000 6000 6012 6159
execute if score #rg_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6012 6000 6025 6159
execute if score #rg_elytra_box switch.data matches 1 in switch:game run forceload add 6012 6000 6025 6159
execute if score #rg_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6025 6000 6037 6159
execute if score #rg_elytra_box switch.data matches 1 in switch:game run forceload add 6025 6000 6037 6159
execute if score #rg_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6037 6000 6050 6159
execute if score #rg_elytra_box switch.data matches 1 in switch:game run forceload add 6037 6000 6050 6159
execute if score #rg_elytra_box switch.data matches 1 in minecraft:overworld run forceload add 6050 6000 6062 6159
execute if score #rg_elytra_box switch.data matches 1 in switch:game run forceload add 6050 6000 6062 6159

execute if score #rg_elytra_box switch.data matches 1 run scoreboard players set #rg_elytra_box_y switch.data 100
execute if score #rg_elytra_box switch.data matches 1 run scoreboard players set #rg_elytra_box_mod switch.data 0
execute if score #rg_elytra_box switch.data matches ..155 summon marker run function switch:maps/survival/elytra_box/regeneration_on_marker

execute if score #rg_elytra_box switch.data matches 156.. in switch:game run kill @e[type=item,x=6031,y=100,z=6079,distance=..1000]
execute if score #rg_elytra_box switch.data matches 156.. run data remove storage switch:maps to_regenerate.elytra_box

execute if score #rg_elytra_box switch.data matches 156.. in minecraft:overworld run forceload remove 6000 6000 6012 6159
execute if score #rg_elytra_box switch.data matches 156.. in switch:game run forceload remove 6000 6000 6012 6159

execute if score #rg_elytra_box switch.data matches 156.. in minecraft:overworld run forceload remove 6012 6000 6025 6159
execute if score #rg_elytra_box switch.data matches 156.. in switch:game run forceload remove 6012 6000 6025 6159

execute if score #rg_elytra_box switch.data matches 156.. in minecraft:overworld run forceload remove 6025 6000 6037 6159
execute if score #rg_elytra_box switch.data matches 156.. in switch:game run forceload remove 6025 6000 6037 6159

execute if score #rg_elytra_box switch.data matches 156.. in minecraft:overworld run forceload remove 6037 6000 6050 6159
execute if score #rg_elytra_box switch.data matches 156.. in switch:game run forceload remove 6037 6000 6050 6159

execute if score #rg_elytra_box switch.data matches 156.. in minecraft:overworld run forceload remove 6050 6000 6062 6159
execute if score #rg_elytra_box switch.data matches 156.. in switch:game run forceload remove 6050 6000 6062 6159

execute if score #rg_elytra_box switch.data matches 156.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"elytra_box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_elytra_box switch.data matches 156.. run data modify storage switch:main MessageToLog set value '{"text":"Map `elytra_box` just regenerated!"}'
execute if score #rg_elytra_box switch.data matches 156.. run function switch:engine/log_message/apply

execute if score #rg_elytra_box switch.data matches 156.. in switch:game run function switch:maps/regenerate_doors_macro {name:"elytra_box"}
execute if score #rg_elytra_box switch.data matches 156.. run scoreboard players reset #rg_elytra_box switch.data
execute if score #rg_elytra_box switch.data matches 1.. run schedule function switch:maps/survival/elytra_box/regenerate 1t

