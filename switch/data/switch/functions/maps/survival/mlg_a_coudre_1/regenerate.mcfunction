
scoreboard players add #rg_mlg_a_coudre_1 switch.data 1
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run forceload add 30987 30987 30999 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 1 run forceload add 30999 30987 31011 31013

execute if score #rg_mlg_a_coudre_1 switch.data matches 20 run fill 30987 100 30987 30999 100 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 20 run fill 30999 100 30987 31011 100 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 21 run fill 30987 101 30987 30999 101 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 21 run fill 30999 101 30987 31011 101 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 22 run fill 30987 102 30987 30999 102 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 22 run fill 30999 102 30987 31011 102 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 23 run fill 30987 103 30987 30999 103 31013 air replace #switch:de_a_coudre
execute if score #rg_mlg_a_coudre_1 switch.data matches 23 run fill 30999 103 30987 31011 103 31013 air replace #switch:de_a_coudre

execute if score #rg_mlg_a_coudre_1 switch.data matches 24.. run kill @e[type=item]
execute if score #rg_mlg_a_coudre_1 switch.data matches 24.. run forceload remove 30987 30987 30999 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 24.. run forceload remove 30999 30987 31011 31013
execute if score #rg_mlg_a_coudre_1 switch.data matches 24.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"mlg_a_coudre_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"01","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_mlg_a_coudre_1 switch.data matches 24.. run scoreboard players reset #rg_mlg_a_coudre_1 switch.data

execute if score #rg_mlg_a_coudre_1 switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

