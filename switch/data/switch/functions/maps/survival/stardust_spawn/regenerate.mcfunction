
scoreboard players add #rg_stardust_spawn switch.data 1
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101000 101000 101020 101120
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101020 101000 101040 101120
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101040 101000 101060 101120
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101060 101000 101080 101120
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101080 101000 101100 101120
execute if score #rg_stardust_spawn switch.data matches 1 run forceload add 101100 101000 101120 101120

execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_y switch.data -64
execute if score #rg_stardust_spawn switch.data matches 1 run scoreboard players set #rg_stardust_spawn_mod switch.data 0
execute if score #rg_stardust_spawn switch.data matches ..540 summon marker run function switch:maps/survival/stardust_spawn/regeneration_on_marker

execute if score #rg_stardust_spawn switch.data matches 541.. run kill @e[type=item,x=101060,y=0,z=101060,distance=..1000]
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101000 101000 101020 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101020 101000 101040 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101040 101000 101060 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101060 101000 101080 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101080 101000 101100 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run forceload remove 101100 101000 101120 101120
execute if score #rg_stardust_spawn switch.data matches 541.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"stardust_spawn","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"27","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_spawn switch.data matches 541.. run scoreboard players reset #rg_stardust_spawn switch.data

execute if score #rg_stardust_spawn switch.data matches 1.. run schedule function switch:maps/survival/stardust_spawn/regenerate 1t

