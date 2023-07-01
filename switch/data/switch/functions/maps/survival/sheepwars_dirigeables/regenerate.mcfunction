
scoreboard players add #rg_sheepwars_dirigeables switch.data 1
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100000 100000 100024 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100024 100000 100048 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100048 100000 100072 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100072 100000 100096 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100096 100000 100120 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100120 100000 100144 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100144 100000 100168 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100168 100000 100192 100103

execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_y switch.data -63
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0
execute if score #rg_sheepwars_dirigeables switch.data matches ..712 summon marker run function switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker

execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run kill @e[type=item,x=100096,y=-63,z=100051,distance=..1000]
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100000 100000 100024 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100024 100000 100048 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100048 100000 100072 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100072 100000 100096 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100096 100000 100120 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100120 100000 100144 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100144 100000 100168 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run forceload remove 100168 100000 100192 100103
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"35","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_dirigeables switch.data matches 713.. run scoreboard players reset #rg_sheepwars_dirigeables switch.data

execute if score #rg_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/regenerate 1t

