
scoreboard players add #rg_paralya_uhc_lobbies switch.data 1
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run forceload add 98000 98000 98022 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run forceload add 98022 98000 98045 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run forceload add 98045 98000 98068 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run forceload add 98068 98000 98090 98090

execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #rg_paralya_uhc_lobbies_y switch.data 0
execute if score #rg_paralya_uhc_lobbies switch.data matches 1 run scoreboard players set #rg_paralya_uhc_lobbies_mod switch.data 0
execute if score #rg_paralya_uhc_lobbies switch.data matches ..376 summon marker run function switch:maps/survival/paralya_uhc_lobbies/regeneration_on_marker

execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run kill @e[type=item,x=98045,y=0,z=98045,distance=..1000]
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run forceload remove 98000 98000 98022 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run forceload remove 98022 98000 98045 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run forceload remove 98045 98000 98068 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run forceload remove 98068 98000 98090 98090
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"paralya_uhc_lobbies","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"18","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run data modify storage switch:main MessageToLog set value '{"text": "La map `paralya_uhc_lobbies` a fini sa régénération !"}'
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run function switch:engine/log_message/apply
execute if score #rg_paralya_uhc_lobbies switch.data matches 377.. run scoreboard players reset #rg_paralya_uhc_lobbies switch.data

execute if score #rg_paralya_uhc_lobbies switch.data matches 1.. run schedule function switch:maps/survival/paralya_uhc_lobbies/regenerate 1t

