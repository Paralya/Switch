
scoreboard players add #rg_spleef_1 switch.data 1
execute if score #rg_spleef_1 switch.data matches 1 run forceload add 27969 27969 27990 28031
execute if score #rg_spleef_1 switch.data matches 1 run forceload add 27990 27969 28010 28031
execute if score #rg_spleef_1 switch.data matches 1 run forceload add 28010 27969 28031 28031

execute if score #rg_spleef_1 switch.data matches 1 run scoreboard players set #rg_spleef_1_y switch.data 63
execute if score #rg_spleef_1 switch.data matches 1 run scoreboard players set #rg_spleef_1_mod switch.data 0
execute if score #rg_spleef_1 switch.data matches ..60 summon marker run function switch:maps/survival/spleef_1/regeneration_on_marker

execute if score #rg_spleef_1 switch.data matches 61.. run kill @e[type=item,x=28000,y=63,z=28000,distance=..1000]
execute if score #rg_spleef_1 switch.data matches 61.. run forceload remove 27969 27969 27990 28031
execute if score #rg_spleef_1 switch.data matches 61.. run forceload remove 27990 27969 28010 28031
execute if score #rg_spleef_1 switch.data matches 61.. run forceload remove 28010 27969 28031 28031
execute if score #rg_spleef_1 switch.data matches 61.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"spleef_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"03","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_spleef_1 switch.data matches 61.. run data modify storage switch:main MessageToLog set value '{"text": "La map `spleef_1` a fini sa régénération !"}'
execute if score #rg_spleef_1 switch.data matches 61.. run function switch:engine/log_message/apply
execute if score #rg_spleef_1 switch.data matches 61.. run scoreboard players reset #rg_spleef_1 switch.data

execute if score #rg_spleef_1 switch.data matches 1.. run schedule function switch:maps/survival/spleef_1/regenerate 1t

