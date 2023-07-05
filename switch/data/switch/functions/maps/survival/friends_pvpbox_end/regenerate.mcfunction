
scoreboard players add #rg_friends_pvpbox_end switch.data 1
execute if score #rg_friends_pvpbox_end switch.data matches 1 run forceload add 12955 12955 12978 13045
execute if score #rg_friends_pvpbox_end switch.data matches 1 run forceload add 12978 12955 13000 13045
execute if score #rg_friends_pvpbox_end switch.data matches 1 run forceload add 13000 12955 13023 13045
execute if score #rg_friends_pvpbox_end switch.data matches 1 run forceload add 13023 12955 13046 13045

execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_y switch.data 0
execute if score #rg_friends_pvpbox_end switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_end_mod switch.data 0
execute if score #rg_friends_pvpbox_end switch.data matches ..136 summon marker run function switch:maps/survival/friends_pvpbox_end/regeneration_on_marker

execute if score #rg_friends_pvpbox_end switch.data matches 137.. run kill @e[type=item,x=13000,y=0,z=13000,distance=..1000]
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run forceload remove 12955 12955 12978 13045
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run forceload remove 12978 12955 13000 13045
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run forceload remove 13000 12955 13023 13045
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run forceload remove 13023 12955 13046 13045
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"friends_pvpbox_end","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run data modify storage switch:main MessageToLog set value '{"text": "La map `friends_pvpbox_end` a fini sa regeneration !"}'
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run function switch:engine/log_message/apply
execute if score #rg_friends_pvpbox_end switch.data matches 137.. run scoreboard players reset #rg_friends_pvpbox_end switch.data

execute if score #rg_friends_pvpbox_end switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/regenerate 1t

