
scoreboard players add #rg_snow_hills switch.data 1
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49906 49918 49922 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49922 49918 49938 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49938 49918 49954 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49954 49918 49970 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49970 49918 49986 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 49986 49918 50002 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50002 49918 50018 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50018 49918 50033 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50033 49918 50049 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50049 49918 50065 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50065 49918 50081 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50081 49918 50097 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50097 49918 50113 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50113 49918 50129 50103
execute if score #rg_snow_hills switch.data matches 1 run forceload add 50129 49918 50145 50103

execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_y switch.data -64
execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_mod switch.data 0
execute if score #rg_snow_hills switch.data matches ..900 summon marker run function switch:maps/survival/snow_hills/regeneration_on_marker

execute if score #rg_snow_hills switch.data matches 901.. run kill @e[type=item,x=50025,y=0,z=50010,distance=..1000]
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49906 49918 49922 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49922 49918 49938 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49938 49918 49954 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49954 49918 49970 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49970 49918 49986 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 49986 49918 50002 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50002 49918 50018 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50018 49918 50033 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50033 49918 50049 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50049 49918 50065 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50065 49918 50081 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50081 49918 50097 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50097 49918 50113 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50113 49918 50129 50103
execute if score #rg_snow_hills switch.data matches 901.. run forceload remove 50129 49918 50145 50103
execute if score #rg_snow_hills switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snow_hills","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snow_hills switch.data matches 901.. run scoreboard players reset #rg_snow_hills switch.data

execute if score #rg_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/regenerate 1t

