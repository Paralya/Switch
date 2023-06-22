
scoreboard players add #rg_friends_cube_lobby switch.data 1
execute if score #rg_friends_cube_lobby switch.data matches 1 run forceload add 16960 16960 16980 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 run forceload add 16980 16960 17000 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 run forceload add 17000 16960 17020 17040
execute if score #rg_friends_cube_lobby switch.data matches 1 run forceload add 17020 16960 17040 17040

execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_y switch.data -64
execute if score #rg_friends_cube_lobby switch.data matches 1 run scoreboard players set #rg_friends_cube_lobby_mod switch.data 0
execute if score #rg_friends_cube_lobby switch.data matches ..180 summon marker run function switch:maps/survival/friends_cube_lobby/regeneration_on_marker

execute if score #rg_friends_cube_lobby switch.data matches 181.. run kill @e[type=item,x=17000,y=0,z=17000,distance=..1000]
execute if score #rg_friends_cube_lobby switch.data matches 181.. run forceload remove 16960 16960 16980 17040
execute if score #rg_friends_cube_lobby switch.data matches 181.. run forceload remove 16980 16960 17000 17040
execute if score #rg_friends_cube_lobby switch.data matches 181.. run forceload remove 17000 16960 17020 17040
execute if score #rg_friends_cube_lobby switch.data matches 181.. run forceload remove 17020 16960 17040 17040
execute if score #rg_friends_cube_lobby switch.data matches 181.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"friends_cube_lobby","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"09","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_friends_cube_lobby switch.data matches 181.. run scoreboard players reset #rg_friends_cube_lobby switch.data

execute if score #rg_friends_cube_lobby switch.data matches 1.. run schedule function switch:maps/survival/friends_cube_lobby/regenerate 1t

