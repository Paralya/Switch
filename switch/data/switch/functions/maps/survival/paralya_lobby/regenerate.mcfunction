
scoreboard players add #rg_paralya_lobby switch.data 1
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99000 99000 99014 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99014 99000 99029 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99029 99000 99043 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99043 99000 99057 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99057 99000 99071 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99071 99000 99086 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99086 99000 99100 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99100 99000 99114 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99114 99000 99129 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99129 99000 99143 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99143 99000 99157 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99157 99000 99171 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99171 99000 99186 99200
execute if score #rg_paralya_lobby switch.data matches 1 run forceload add 99186 99000 99200 99200

execute if score #rg_paralya_lobby switch.data matches 1 run scoreboard players set #rg_paralya_lobby_y switch.data -63
execute if score #rg_paralya_lobby switch.data matches 1 run scoreboard players set #rg_paralya_lobby_mod switch.data 0
execute if score #rg_paralya_lobby switch.data matches ..2268 summon marker run function switch:maps/survival/paralya_lobby/regeneration_on_marker

execute if score #rg_paralya_lobby switch.data matches 2269.. run kill @e[type=item,x=99100,y=-63,z=99100,distance=..1000]
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99000 99000 99014 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99014 99000 99029 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99029 99000 99043 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99043 99000 99057 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99057 99000 99071 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99071 99000 99086 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99086 99000 99100 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99100 99000 99114 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99114 99000 99129 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99129 99000 99143 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99143 99000 99157 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99157 99000 99171 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99171 99000 99186 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run forceload remove 99186 99000 99200 99200
execute if score #rg_paralya_lobby switch.data matches 2269.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"paralya_lobby","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"53","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_paralya_lobby switch.data matches 2269.. run data modify storage switch:main MessageToLog set value '{"text": "La map `paralya_lobby` a fini sa régénération !"}'
execute if score #rg_paralya_lobby switch.data matches 2269.. run function switch:engine/log_message/apply
execute if score #rg_paralya_lobby switch.data matches 2269.. run scoreboard players reset #rg_paralya_lobby switch.data

execute if score #rg_paralya_lobby switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby/regenerate 1t

