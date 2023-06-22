
scoreboard players add #rg_scartmania switch.data 1
execute if score #rg_scartmania switch.data matches 1 run forceload add 58000 58000 58015 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58015 58000 58029 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58029 58000 58044 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58044 58000 58058 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58058 58000 58073 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58073 58000 58087 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58087 58000 58102 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58102 58000 58116 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58116 58000 58131 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58131 58000 58145 58188
execute if score #rg_scartmania switch.data matches 1 run forceload add 58145 58000 58160 58188

execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_y switch.data -64
execute if score #rg_scartmania switch.data matches 1 run scoreboard players set #rg_scartmania_mod switch.data 0
execute if score #rg_scartmania switch.data matches ..1001 summon marker run function switch:maps/survival/scartmania/regeneration_on_marker

execute if score #rg_scartmania switch.data matches 1002.. run kill @e[type=item,x=58080,y=0,z=58094,distance=..1000]
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58000 58000 58015 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58015 58000 58029 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58029 58000 58044 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58044 58000 58058 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58058 58000 58073 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58073 58000 58087 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58087 58000 58102 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58102 58000 58116 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58116 58000 58131 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58131 58000 58145 58188
execute if score #rg_scartmania switch.data matches 1002.. run forceload remove 58145 58000 58160 58188
execute if score #rg_scartmania switch.data matches 1002.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"scartmania","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"50","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_scartmania switch.data matches 1002.. run scoreboard players reset #rg_scartmania switch.data

execute if score #rg_scartmania switch.data matches 1.. run schedule function switch:maps/survival/scartmania/regenerate 1t

