
scoreboard players add #rg_zonweeb_main switch.data 1
execute if score #rg_zonweeb_main switch.data matches 1 run forceload add 31950 31950 31970 32050
execute if score #rg_zonweeb_main switch.data matches 1 run forceload add 31970 31950 31990 32050
execute if score #rg_zonweeb_main switch.data matches 1 run forceload add 31990 31950 32010 32050
execute if score #rg_zonweeb_main switch.data matches 1 run forceload add 32010 31950 32030 32050
execute if score #rg_zonweeb_main switch.data matches 1 run forceload add 32030 31950 32050 32050

execute if score #rg_zonweeb_main switch.data matches 1 run scoreboard players set #rg_zonweeb_main_y switch.data 0
execute if score #rg_zonweeb_main switch.data matches 1 run scoreboard players set #rg_zonweeb_main_mod switch.data 0
execute if score #rg_zonweeb_main switch.data matches ..225 summon marker run function switch:maps/survival/zonweeb_main/regeneration_on_marker

execute if score #rg_zonweeb_main switch.data matches 226.. run kill @e[type=item,x=32000,y=0,z=32000,distance=..1000]
execute if score #rg_zonweeb_main switch.data matches 226.. run forceload remove 31950 31950 31970 32050
execute if score #rg_zonweeb_main switch.data matches 226.. run forceload remove 31970 31950 31990 32050
execute if score #rg_zonweeb_main switch.data matches 226.. run forceload remove 31990 31950 32010 32050
execute if score #rg_zonweeb_main switch.data matches 226.. run forceload remove 32010 31950 32030 32050
execute if score #rg_zonweeb_main switch.data matches 226.. run forceload remove 32030 31950 32050 32050
execute if score #rg_zonweeb_main switch.data matches 226.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"zonweeb_main","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_zonweeb_main switch.data matches 226.. run data modify storage switch:main MessageToLog set value '{"text": "La map `zonweeb_main` a fini sa regeneration !"}'
execute if score #rg_zonweeb_main switch.data matches 226.. run function switch:engine/log_message/apply
execute if score #rg_zonweeb_main switch.data matches 226.. run scoreboard players reset #rg_zonweeb_main switch.data

execute if score #rg_zonweeb_main switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_main/regenerate 1t

