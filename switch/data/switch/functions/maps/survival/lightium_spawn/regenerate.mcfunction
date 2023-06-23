
scoreboard players add #rg_lightium_spawn switch.data 1
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 1 run forceload add 97111 97000 97129 97129

execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_y switch.data 0
execute if score #rg_lightium_spawn switch.data matches 1 run scoreboard players set #rg_lightium_spawn_mod switch.data 0
execute if score #rg_lightium_spawn switch.data matches ..308 summon marker run function switch:maps/survival/lightium_spawn/regeneration_on_marker

execute if score #rg_lightium_spawn switch.data matches 309.. run kill @e[type=item,x=97064,y=0,z=97064,distance=..1000]
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97000 97000 97018 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97018 97000 97037 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97037 97000 97055 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97055 97000 97074 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97074 97000 97092 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97092 97000 97111 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run forceload remove 97111 97000 97129 97129
execute if score #rg_lightium_spawn switch.data matches 309.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"lightium_spawn","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lightium_spawn switch.data matches 309.. run scoreboard players reset #rg_lightium_spawn switch.data

execute if score #rg_lightium_spawn switch.data matches 1.. run schedule function switch:maps/survival/lightium_spawn/regenerate 1t

