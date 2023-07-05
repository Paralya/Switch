
scoreboard players add #rg_sheepwars_dirigeables switch.data 1
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100028 100000 100049 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100049 100000 100071 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100071 100000 100092 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100092 100000 100114 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100114 100000 100135 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_y switch.data -63
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0
execute if score #rg_sheepwars_dirigeables switch.data matches ..445 summon marker run function switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker

execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run kill @e[type=item,x=100081,y=-63,z=100051,distance=..1000]
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run forceload remove 100028 100000 100049 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run forceload remove 100049 100000 100071 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run forceload remove 100071 100000 100092 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run forceload remove 100092 100000 100114 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run forceload remove 100114 100000 100135 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run data modify storage switch:main MessageToLog set value '{"text": "La map `sheepwars_dirigeables` a fini sa regeneration !"}'
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run function switch:engine/log_message/apply
execute if score #rg_sheepwars_dirigeables switch.data matches 446.. run scoreboard players reset #rg_sheepwars_dirigeables switch.data

execute if score #rg_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/regenerate 1t

