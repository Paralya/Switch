
#> switch:maps/survival/stardust_spawn/regenerate
#
# @within	switch:maps/survival/stardust_spawn/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_spawn switch.data 1
execute if score #rg_stardust_spawn switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_spawn set value 2b
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -10000 -10000 -9980 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -10000 -10000 -9980 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9980 -10000 -9960 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -9980 -10000 -9960 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9960 -10000 -9940 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -9960 -10000 -9940 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9940 -10000 -9920 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -9940 -10000 -9920 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9920 -10000 -9900 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -9920 -10000 -9900 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in minecraft:overworld run forceload add -9900 -10000 -9880 -9880
execute if score #rg_stardust_spawn switch.data matches 1 in switch:game run forceload add -9900 -10000 -9880 -9880

execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_y switch.data 100
execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_mod switch.data 0
execute if score #rg_stardust_spawn switch.data matches ..546 summon marker run function switch:maps/survival/stardust_spawn/regeneration_on_marker

execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run kill @e[type=item,x=-9940,y=100,z=-9940,distance=..1000]
execute if score #rg_stardust_spawn switch.data matches 547.. run data remove storage switch:maps to_regenerate.stardust_spawn

execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -10000 -10000 -9980 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -10000 -10000 -9980 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -9980 -10000 -9960 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -9980 -10000 -9960 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -9960 -10000 -9940 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -9960 -10000 -9940 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -9940 -10000 -9920 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -9940 -10000 -9920 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -9920 -10000 -9900 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -9920 -10000 -9900 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in minecraft:overworld run forceload remove -9900 -10000 -9880 -9880
execute if score #rg_stardust_spawn switch.data matches 547.. in switch:game run forceload remove -9900 -10000 -9880 -9880

execute if score #rg_stardust_spawn switch.data matches 547.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Spawn","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_spawn switch.data matches 547.. run function switch:engine/log_message/apply {message:"Map `Stardust Spawn` just regenerated!"}

execute if score #rg_stardust_spawn switch.data matches 547.. run scoreboard players reset #rg_stardust_spawn switch.data
execute if score #rg_stardust_spawn switch.data matches 1.. run schedule function switch:maps/survival/stardust_spawn/regenerate 1t

