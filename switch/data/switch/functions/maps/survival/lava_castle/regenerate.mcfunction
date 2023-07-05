
scoreboard players add #rg_lava_castle switch.data 1
execute if score #rg_lava_castle switch.data matches 1 run forceload add 83000 83000 83021 83063
execute if score #rg_lava_castle switch.data matches 1 run forceload add 83021 83000 83042 83063
execute if score #rg_lava_castle switch.data matches 1 run forceload add 83042 83000 83063 83063

execute if score #rg_lava_castle switch.data matches 1 run scoreboard players set #rg_lava_castle_y switch.data 0
execute if score #rg_lava_castle switch.data matches 1 run scoreboard players set #rg_lava_castle_mod switch.data 0
execute if score #rg_lava_castle switch.data matches ..258 summon marker run function switch:maps/survival/lava_castle/regeneration_on_marker

execute if score #rg_lava_castle switch.data matches 259.. run kill @e[type=item,x=83031,y=0,z=83031,distance=..1000]
execute if score #rg_lava_castle switch.data matches 259.. run forceload remove 83000 83000 83021 83063
execute if score #rg_lava_castle switch.data matches 259.. run forceload remove 83021 83000 83042 83063
execute if score #rg_lava_castle switch.data matches 259.. run forceload remove 83042 83000 83063 83063
execute if score #rg_lava_castle switch.data matches 259.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"lava_castle","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lava_castle switch.data matches 259.. run data modify storage switch:main MessageToLog set value '{"text": "La map `lava_castle` a fini sa regeneration !"}'
execute if score #rg_lava_castle switch.data matches 259.. run function switch:engine/log_message/apply
execute if score #rg_lava_castle switch.data matches 259.. run scoreboard players reset #rg_lava_castle switch.data

execute if score #rg_lava_castle switch.data matches 1.. run schedule function switch:maps/survival/lava_castle/regenerate 1t

