
scoreboard players add #rg_spectre_original switch.data 1
execute if score #rg_spectre_original switch.data matches 1 run forceload add 2459 2452 2480 2547
execute if score #rg_spectre_original switch.data matches 1 run forceload add 2480 2452 2502 2547
execute if score #rg_spectre_original switch.data matches 1 run forceload add 2502 2452 2524 2547
execute if score #rg_spectre_original switch.data matches 1 run forceload add 2524 2452 2545 2547

execute if score #rg_spectre_original switch.data matches 1 run scoreboard players set #rg_spectre_original_y switch.data -64
execute if score #rg_spectre_original switch.data matches 1 run scoreboard players set #rg_spectre_original_mod switch.data 0
execute if score #rg_spectre_original switch.data matches ..340 summon marker run function switch:maps/survival/spectre_original/regeneration_on_marker

execute if score #rg_spectre_original switch.data matches 341.. run kill @e[type=item,x=2502,y=0,z=2499,distance=..1000]
execute if score #rg_spectre_original switch.data matches 341.. run forceload remove 2459 2452 2480 2547
execute if score #rg_spectre_original switch.data matches 341.. run forceload remove 2480 2452 2502 2547
execute if score #rg_spectre_original switch.data matches 341.. run forceload remove 2502 2452 2524 2547
execute if score #rg_spectre_original switch.data matches 341.. run forceload remove 2524 2452 2545 2547
execute if score #rg_spectre_original switch.data matches 341.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"spectre_original","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_spectre_original switch.data matches 341.. run scoreboard players reset #rg_spectre_original switch.data

execute if score #rg_spectre_original switch.data matches 1.. run schedule function switch:maps/survival/spectre_original/regenerate 1t

