
scoreboard players add #rg_sumo_lawef switch.data 1
execute if score #rg_sumo_lawef switch.data matches 1 run forceload add 54979 54996 55000 55037
execute if score #rg_sumo_lawef switch.data matches 1 run forceload add 55000 54996 55020 55037

execute if score #rg_sumo_lawef switch.data matches 1 run scoreboard players set #rg_sumo_lawef_y switch.data 0
execute if score #rg_sumo_lawef switch.data matches 1 run scoreboard players set #rg_sumo_lawef_mod switch.data 0
execute if score #rg_sumo_lawef switch.data matches ..80 summon marker run function switch:maps/survival/sumo_lawef/regeneration_on_marker

execute if score #rg_sumo_lawef switch.data matches 81.. run kill @e[type=item,x=54999,y=0,z=55016,distance=..1000]
execute if score #rg_sumo_lawef switch.data matches 81.. run forceload remove 54979 54996 55000 55037
execute if score #rg_sumo_lawef switch.data matches 81.. run forceload remove 55000 54996 55020 55037
execute if score #rg_sumo_lawef switch.data matches 81.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sumo_lawef","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"04","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sumo_lawef switch.data matches 81.. run data modify storage switch:main MessageToLog set value '{"text": "La map `sumo_lawef` a fini sa régénération !"}'
execute if score #rg_sumo_lawef switch.data matches 81.. run function switch:engine/log_message/apply
execute if score #rg_sumo_lawef switch.data matches 81.. run scoreboard players reset #rg_sumo_lawef switch.data

execute if score #rg_sumo_lawef switch.data matches 1.. run schedule function switch:maps/survival/sumo_lawef/regenerate 1t

