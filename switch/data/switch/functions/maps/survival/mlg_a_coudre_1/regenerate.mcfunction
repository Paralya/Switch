
scoreboard players add #rg_mlg_a_coudre_1 switch.data 1
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run forceload add 30987 30987 30999 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run forceload add 30999 30987 31011 31013

execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_y switch.data 100
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run scoreboard players set #rg_mlg_a_coudre_1_mod switch.data 0
execute if score #rg_mlg_a_coudre_1 switch.data matches ..4 summon marker run function switch:maps/survival/mlg_a_coudre_1/regeneration_on_marker

execute if score #rg_mlg_a_coudre_1 switch.data matches 5.. run kill @e[type=item,x=30999,y=100,z=31000,distance=..1000]
execute if score #rg_mlg_a_coudre_1 switch.data matches 5.. run forceload remove 30987 30987 30999 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 5.. run forceload remove 30999 30987 31011 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 5.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"mlg_a_coudre_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"00","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mlg_a_coudre_1 switch.data matches 5.. run scoreboard players reset #rg_mlg_a_coudre_1 switch.data

execute if score #rg_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

