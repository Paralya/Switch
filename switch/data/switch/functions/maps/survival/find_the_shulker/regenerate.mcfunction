
scoreboard players add #rg_find_the_shulker switch.data 1
execute if score #rg_find_the_shulker switch.data matches 1 run forceload add 57000 57000 57018 57113
execute if score #rg_find_the_shulker switch.data matches 1 run forceload add 57018 57000 57037 57113
execute if score #rg_find_the_shulker switch.data matches 1 run forceload add 57037 57000 57056 57113
execute if score #rg_find_the_shulker switch.data matches 1 run forceload add 57056 57000 57074 57113

execute if score #rg_find_the_shulker switch.data matches 1 run scoreboard players set #rg_find_the_shulker_y switch.data 0
execute if score #rg_find_the_shulker switch.data matches 1 run scoreboard players set #rg_find_the_shulker_mod switch.data 0
execute if score #rg_find_the_shulker switch.data matches ..224 summon marker run function switch:maps/survival/find_the_shulker/regeneration_on_marker

execute if score #rg_find_the_shulker switch.data matches 225.. run kill @e[type=item,x=57037,y=0,z=57056,distance=..1000]
execute if score #rg_find_the_shulker switch.data matches 225.. run forceload remove 57000 57000 57018 57113
execute if score #rg_find_the_shulker switch.data matches 225.. run forceload remove 57018 57000 57037 57113
execute if score #rg_find_the_shulker switch.data matches 225.. run forceload remove 57037 57000 57056 57113
execute if score #rg_find_the_shulker switch.data matches 225.. run forceload remove 57056 57000 57074 57113
execute if score #rg_find_the_shulker switch.data matches 225.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"find_the_shulker","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_find_the_shulker switch.data matches 225.. run data modify storage switch:main MessageToLog set value '{"text": "La map `find_the_shulker` a fini sa régénération !"}'
execute if score #rg_find_the_shulker switch.data matches 225.. run function switch:engine/log_message/apply
execute if score #rg_find_the_shulker switch.data matches 225.. run scoreboard players reset #rg_find_the_shulker switch.data

execute if score #rg_find_the_shulker switch.data matches 1.. run schedule function switch:maps/survival/find_the_shulker/regenerate 1t

