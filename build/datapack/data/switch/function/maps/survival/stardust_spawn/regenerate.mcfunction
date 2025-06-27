
#> switch:maps/survival/stardust_spawn/regenerate
#
# @within	switch:maps/survival/stardust_spawn/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_spawn switch.data 1
execute if score #rg_stardust_spawn switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_spawn set value 2b
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101000 101000 101020 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101000 101000 101020 101120
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101020 101000 101040 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101020 101000 101040 101120
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101040 101000 101060 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101040 101000 101060 101120
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101060 101000 101080 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101060 101000 101080 101120
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101080 101000 101100 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101080 101000 101100 101120
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add 101100 101000 101120 101120
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add 101100 101000 101120 101120

execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_y switch.data 100
execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_mod switch.data 0
execute if score #rg_stardust_spawn switch.data matches ..546 summon marker run function switch:maps/survival/stardust_spawn/regeneration_on_marker

execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run kill @e[type=item,x=101060,y=100,z=101060,distance=..1000]
execute if score #rg_stardust_spawn switch.data matches 547.. run data remove storage switch:maps to_regenerate.stardust_spawn

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101000 101000 101020 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101000 101000 101020 101120

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101020 101000 101040 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101020 101000 101040 101120

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101040 101000 101060 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101040 101000 101060 101120

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101060 101000 101080 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101060 101000 101080 101120

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101080 101000 101100 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101080 101000 101100 101120

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove 101100 101000 101120 101120
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove 101100 101000 101120 101120

execute if score #rg_stardust_spawn switch.data matches 547.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Spawn","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_stardust_spawn switch.data matches 547.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Stardust Spawn` just regenerated!"}'
execute if score #rg_stardust_spawn switch.data matches 547.. run function switch:engine/log_message/apply

execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run function switch:maps/regenerate_doors_macro {name:"stardust_spawn"}
execute if score #rg_stardust_spawn switch.data matches 547.. run scoreboard players reset #rg_stardust_spawn switch.data
execute if score #rg_stardust_spawn switch.data matches 1.. run schedule function switch:maps/survival/stardust_spawn/regenerate 1t

