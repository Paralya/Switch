
scoreboard players add #rg_wyvern_towers switch.data 1
execute if score #rg_wyvern_towers switch.data matches 1 run forceload add 94000 94000 94025 94076
execute if score #rg_wyvern_towers switch.data matches 1 run forceload add 94025 94000 94051 94076
execute if score #rg_wyvern_towers switch.data matches 1 run forceload add 94051 94000 94076 94076

execute if score #rg_wyvern_towers switch.data matches 1 run scoreboard players set #rg_wyvern_towers_y switch.data 0
execute if score #rg_wyvern_towers switch.data matches 1 run scoreboard players set #rg_wyvern_towers_mod switch.data 0
execute if score #rg_wyvern_towers switch.data matches ..300 summon marker run function switch:maps/survival/wyvern_towers/regeneration_on_marker

execute if score #rg_wyvern_towers switch.data matches 301.. run kill @e[type=item,x=94038,y=0,z=94038,distance=..1000]
execute if score #rg_wyvern_towers switch.data matches 301.. run forceload remove 94000 94000 94025 94076
execute if score #rg_wyvern_towers switch.data matches 301.. run forceload remove 94025 94000 94051 94076
execute if score #rg_wyvern_towers switch.data matches 301.. run forceload remove 94051 94000 94076 94076
execute if score #rg_wyvern_towers switch.data matches 301.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"wyvern_towers","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"15","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_wyvern_towers switch.data matches 301.. run data modify storage switch:main MessageToLog set value '{"text": "La map `wyvern_towers` a fini sa régénération !"}'
execute if score #rg_wyvern_towers switch.data matches 301.. run function switch:engine/log_message/apply
execute if score #rg_wyvern_towers switch.data matches 301.. run scoreboard players reset #rg_wyvern_towers switch.data

execute if score #rg_wyvern_towers switch.data matches 1.. run schedule function switch:maps/survival/wyvern_towers/regenerate 1t

