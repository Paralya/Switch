
scoreboard players add #rg_plucky_penguins switch.data 1
execute if score #rg_plucky_penguins switch.data matches 1 run forceload add 68000 68000 68012 68031
execute if score #rg_plucky_penguins switch.data matches 1 run forceload add 68012 68000 68024 68031

execute if score #rg_plucky_penguins switch.data matches 1 run scoreboard players set #rg_plucky_penguins_y switch.data 0
execute if score #rg_plucky_penguins switch.data matches 1 run scoreboard players set #rg_plucky_penguins_mod switch.data 0
execute if score #rg_plucky_penguins switch.data matches ..42 summon marker run function switch:maps/survival/plucky_penguins/regeneration_on_marker

execute if score #rg_plucky_penguins switch.data matches 43.. run kill @e[type=item,x=68012,y=0,z=68015,distance=..1000]
execute if score #rg_plucky_penguins switch.data matches 43.. run forceload remove 68000 68000 68012 68031
execute if score #rg_plucky_penguins switch.data matches 43.. run forceload remove 68012 68000 68024 68031
execute if score #rg_plucky_penguins switch.data matches 43.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"plucky_penguins","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"02","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_plucky_penguins switch.data matches 43.. run data modify storage switch:main MessageToLog set value '{"text": "La map `plucky_penguins` a fini sa régénération !"}'
execute if score #rg_plucky_penguins switch.data matches 43.. run function switch:engine/log_message/apply
execute if score #rg_plucky_penguins switch.data matches 43.. run scoreboard players reset #rg_plucky_penguins switch.data

execute if score #rg_plucky_penguins switch.data matches 1.. run schedule function switch:maps/survival/plucky_penguins/regenerate 1t

