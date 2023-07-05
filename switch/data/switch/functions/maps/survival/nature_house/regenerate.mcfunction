
scoreboard players add #rg_nature_house switch.data 1
execute if score #rg_nature_house switch.data matches 1 run forceload add 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 1 run forceload add 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 1 run forceload add 88045 88000 88068 88068

execute if score #rg_nature_house switch.data matches 1 run scoreboard players set #rg_nature_house_y switch.data 0
execute if score #rg_nature_house switch.data matches 1 run scoreboard players set #rg_nature_house_mod switch.data 0
execute if score #rg_nature_house switch.data matches ..99 summon marker run function switch:maps/survival/nature_house/regeneration_on_marker

execute if score #rg_nature_house switch.data matches 100.. run kill @e[type=item,x=88034,y=0,z=88034,distance=..1000]
execute if score #rg_nature_house switch.data matches 100.. run forceload remove 88000 88000 88023 88068
execute if score #rg_nature_house switch.data matches 100.. run forceload remove 88023 88000 88045 88068
execute if score #rg_nature_house switch.data matches 100.. run forceload remove 88045 88000 88068 88068
execute if score #rg_nature_house switch.data matches 100.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"nature_house","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"04","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nature_house switch.data matches 100.. run data modify storage switch:main MessageToLog set value '{"text": "La map `nature_house` a fini sa regeneration !"}'
execute if score #rg_nature_house switch.data matches 100.. run function switch:engine/log_message/apply
execute if score #rg_nature_house switch.data matches 100.. run scoreboard players reset #rg_nature_house switch.data

execute if score #rg_nature_house switch.data matches 1.. run schedule function switch:maps/survival/nature_house/regenerate 1t

