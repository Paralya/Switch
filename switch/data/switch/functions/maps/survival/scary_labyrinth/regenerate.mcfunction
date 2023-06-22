
scoreboard players add #rg_scary_labyrinth switch.data 1
execute if score #rg_scary_labyrinth switch.data matches 1 run forceload add 60000 60000 60037 60066
execute if score #rg_scary_labyrinth switch.data matches 1 run forceload add 60037 60000 60074 60066
execute if score #rg_scary_labyrinth switch.data matches 1 run forceload add 60074 60000 60110 60066
execute if score #rg_scary_labyrinth switch.data matches 1 run forceload add 60110 60000 60147 60066
execute if score #rg_scary_labyrinth switch.data matches 1 run forceload add 60147 60000 60184 60066

execute if score #rg_scary_labyrinth switch.data matches 1 run scoreboard players set #rg_scary_labyrinth_y switch.data -64
execute if score #rg_scary_labyrinth switch.data matches 1 run scoreboard players set #rg_scary_labyrinth_mod switch.data 0
execute if score #rg_scary_labyrinth switch.data matches ..365 summon marker run function switch:maps/survival/scary_labyrinth/regeneration_on_marker

execute if score #rg_scary_labyrinth switch.data matches 366.. run kill @e[type=item,x=60092,y=0,z=60033,distance=..1000]
execute if score #rg_scary_labyrinth switch.data matches 366.. run forceload remove 60000 60000 60037 60066
execute if score #rg_scary_labyrinth switch.data matches 366.. run forceload remove 60037 60000 60074 60066
execute if score #rg_scary_labyrinth switch.data matches 366.. run forceload remove 60074 60000 60110 60066
execute if score #rg_scary_labyrinth switch.data matches 366.. run forceload remove 60110 60000 60147 60066
execute if score #rg_scary_labyrinth switch.data matches 366.. run forceload remove 60147 60000 60184 60066
execute if score #rg_scary_labyrinth switch.data matches 366.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"scary_labyrinth","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"18","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_scary_labyrinth switch.data matches 366.. run scoreboard players reset #rg_scary_labyrinth switch.data

execute if score #rg_scary_labyrinth switch.data matches 1.. run schedule function switch:maps/survival/scary_labyrinth/regenerate 1t

