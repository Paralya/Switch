
scoreboard players add #rg_pitch_creep_2 switch.data 1
execute if score #rg_pitch_creep_2 switch.data matches 1 run forceload add 37986 37974 38000 38026
execute if score #rg_pitch_creep_2 switch.data matches 1 run forceload add 38000 37974 38014 38026

execute if score #rg_pitch_creep_2 switch.data matches 1 run scoreboard players set #rg_pitch_creep_2_y switch.data 0
execute if score #rg_pitch_creep_2 switch.data matches 1 run scoreboard players set #rg_pitch_creep_2_mod switch.data 0
execute if score #rg_pitch_creep_2 switch.data matches ..34 summon marker run function switch:maps/survival/pitch_creep_2/regeneration_on_marker

execute if score #rg_pitch_creep_2 switch.data matches 35.. run kill @e[type=item,x=38000,y=0,z=38000,distance=..1000]
execute if score #rg_pitch_creep_2 switch.data matches 35.. run forceload remove 37986 37974 38000 38026
execute if score #rg_pitch_creep_2 switch.data matches 35.. run forceload remove 38000 37974 38014 38026
execute if score #rg_pitch_creep_2 switch.data matches 35.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"pitch_creep_2","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"01","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_pitch_creep_2 switch.data matches 35.. run data modify storage switch:main MessageToLog set value '{"text": "La map `pitch_creep_2` a fini sa regeneration !"}'
execute if score #rg_pitch_creep_2 switch.data matches 35.. run function switch:engine/log_message/apply
execute if score #rg_pitch_creep_2 switch.data matches 35.. run scoreboard players reset #rg_pitch_creep_2 switch.data

execute if score #rg_pitch_creep_2 switch.data matches 1.. run schedule function switch:maps/survival/pitch_creep_2/regenerate 1t

