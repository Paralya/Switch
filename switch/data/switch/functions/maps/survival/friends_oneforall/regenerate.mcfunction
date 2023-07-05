
scoreboard players add #rg_friends_oneforall switch.data 1
execute if score #rg_friends_oneforall switch.data matches 1 run forceload add 7977 7976 8001 8024
execute if score #rg_friends_oneforall switch.data matches 1 run forceload add 8001 7976 8025 8024

execute if score #rg_friends_oneforall switch.data matches 1 run scoreboard players set #rg_friends_oneforall_y switch.data 0
execute if score #rg_friends_oneforall switch.data matches 1 run scoreboard players set #rg_friends_oneforall_mod switch.data 0
execute if score #rg_friends_oneforall switch.data matches ..64 summon marker run function switch:maps/survival/friends_oneforall/regeneration_on_marker

execute if score #rg_friends_oneforall switch.data matches 65.. run kill @e[type=item,x=8001,y=0,z=8000,distance=..1000]
execute if score #rg_friends_oneforall switch.data matches 65.. run forceload remove 7977 7976 8001 8024
execute if score #rg_friends_oneforall switch.data matches 65.. run forceload remove 8001 7976 8025 8024
execute if score #rg_friends_oneforall switch.data matches 65.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"friends_oneforall","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"03","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_oneforall switch.data matches 65.. run data modify storage switch:main MessageToLog set value '{"text": "La map `friends_oneforall` a fini sa régénération !"}'
execute if score #rg_friends_oneforall switch.data matches 65.. run function switch:engine/log_message/apply
execute if score #rg_friends_oneforall switch.data matches 65.. run scoreboard players reset #rg_friends_oneforall switch.data

execute if score #rg_friends_oneforall switch.data matches 1.. run schedule function switch:maps/survival/friends_oneforall/regenerate 1t

