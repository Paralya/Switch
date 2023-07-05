
scoreboard players add #rg_de_a_coudre_1 switch.data 1
execute if score #rg_de_a_coudre_1 switch.data matches 1 run forceload add 28987 28987 29009 29013
execute if score #rg_de_a_coudre_1 switch.data matches 1 run forceload add 29009 28987 29031 29013

execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_y switch.data 100
execute if score #rg_de_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_de_a_coudre_1_mod switch.data 0
execute if score #rg_de_a_coudre_1 switch.data matches ..56 summon marker run function switch:maps/survival/de_a_coudre_1/regeneration_on_marker

execute if score #rg_de_a_coudre_1 switch.data matches 57.. run kill @e[type=item,x=29009,y=100,z=29000,distance=..1000]
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run forceload remove 28987 28987 29009 29013
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run forceload remove 29009 28987 29031 29013
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"de_a_coudre_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"02","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run data modify storage switch:main MessageToLog set value '{"text": "La map `de_a_coudre_1` a fini sa régénération !"}'
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run function switch:engine/log_message/apply
execute if score #rg_de_a_coudre_1 switch.data matches 57.. run scoreboard players reset #rg_de_a_coudre_1 switch.data

execute if score #rg_de_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/regenerate 1t

