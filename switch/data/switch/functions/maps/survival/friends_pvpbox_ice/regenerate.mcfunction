
scoreboard players add #rg_friends_pvpbox_ice switch.data 1
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run forceload add 10964 10968 10986 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run forceload add 10986 10968 11007 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run forceload add 11007 10968 11029 11033

execute if score #rg_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_ice_y switch.data 0
execute if score #rg_friends_pvpbox_ice switch.data matches 1 run scoreboard players set #rg_friends_pvpbox_ice_mod switch.data 0
execute if score #rg_friends_pvpbox_ice switch.data matches ..129 summon marker run function switch:maps/survival/friends_pvpbox_ice/regeneration_on_marker

execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run kill @e[type=item,x=10996,y=0,z=11000,distance=..1000]
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run forceload remove 10964 10968 10986 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run forceload remove 10986 10968 11007 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run forceload remove 11007 10968 11029 11033
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"friends_pvpbox_ice","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_pvpbox_ice switch.data matches 130.. run scoreboard players reset #rg_friends_pvpbox_ice switch.data

execute if score #rg_friends_pvpbox_ice switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_ice/regenerate 1t

