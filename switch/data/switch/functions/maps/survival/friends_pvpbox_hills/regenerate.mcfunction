
scoreboard players add #rg_friends_pvpbox_hills switch.data 1
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run forceload add 11957 11965 11980 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run forceload add 11980 11965 12002 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run forceload add 12002 11965 12024 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run forceload add 12024 11965 12047 12055

execute if score #rg_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_hills_y switch.data 0
execute if score #rg_friends_pvpbox_hills switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_hills_mod switch.data 0
execute if score #rg_friends_pvpbox_hills switch.data matches ..272 summon marker run function switch:maps/survival/friends_pvpbox_hills/regeneration_on_marker

execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run kill @e[type=item,x=12002,y=0,z=12010,distance=..1000]
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run forceload remove 11957 11965 11980 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run forceload remove 11980 11965 12002 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run forceload remove 12002 11965 12024 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run forceload remove 12024 11965 12047 12055
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"friends_pvpbox_hills","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run data modify storage switch:main MessageToLog set value '{"text": "La map `friends_pvpbox_hills` a fini sa regeneration !"}'
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run function switch:engine/log_message/apply
execute if score #rg_friends_pvpbox_hills switch.data matches 273.. run scoreboard players reset #rg_friends_pvpbox_hills switch.data

execute if score #rg_friends_pvpbox_hills switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_hills/regenerate 1t

