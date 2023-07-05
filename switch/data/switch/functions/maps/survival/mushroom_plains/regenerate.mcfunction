
scoreboard players add #rg_mushroom_plains switch.data 1
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 3939 3939 3959 4061
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 3959 3939 3980 4061
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 3980 3939 4000 4061
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 4000 3939 4020 4061
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 4020 3939 4041 4061
execute if score #rg_mushroom_plains switch.data matches 1 run forceload add 4041 3939 4061 4061

execute if score #rg_mushroom_plains switch.data matches 1 run scoreboard players set #rg_mushroom_plains_y switch.data 0
execute if score #rg_mushroom_plains switch.data matches 1 run scoreboard players set #rg_mushroom_plains_mod switch.data 0
execute if score #rg_mushroom_plains switch.data matches ..306 summon marker run function switch:maps/survival/mushroom_plains/regeneration_on_marker

execute if score #rg_mushroom_plains switch.data matches 307.. run kill @e[type=item,x=4000,y=0,z=4000,distance=..1000]
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 3939 3939 3959 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 3959 3939 3980 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 3980 3939 4000 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 4000 3939 4020 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 4020 3939 4041 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run forceload remove 4041 3939 4061 4061
execute if score #rg_mushroom_plains switch.data matches 307.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"mushroom_plains","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mushroom_plains switch.data matches 307.. run data modify storage switch:main MessageToLog set value '{"text": "La map `mushroom_plains` a fini sa régénération !"}'
execute if score #rg_mushroom_plains switch.data matches 307.. run function switch:engine/log_message/apply
execute if score #rg_mushroom_plains switch.data matches 307.. run scoreboard players reset #rg_mushroom_plains switch.data

execute if score #rg_mushroom_plains switch.data matches 1.. run schedule function switch:maps/survival/mushroom_plains/regenerate 1t

