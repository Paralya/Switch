
scoreboard players add #rg_snk_tower switch.data 1
execute if score #rg_snk_tower switch.data matches 1 run forceload add 61000 61000 61028 61049
execute if score #rg_snk_tower switch.data matches 1 run forceload add 61028 61000 61056 61049
execute if score #rg_snk_tower switch.data matches 1 run forceload add 61056 61000 61084 61049

execute if score #rg_snk_tower switch.data matches 1 run scoreboard players set #rg_snk_tower_y switch.data -64
execute if score #rg_snk_tower switch.data matches 1 run scoreboard players set #rg_snk_tower_mod switch.data 0
execute if score #rg_snk_tower switch.data matches ..264 summon marker run function switch:maps/survival/snk_tower/regeneration_on_marker

execute if score #rg_snk_tower switch.data matches 265.. run kill @e[type=item,x=61042,y=0,z=61024,distance=..1000]
execute if score #rg_snk_tower switch.data matches 265.. run forceload remove 61000 61000 61028 61049
execute if score #rg_snk_tower switch.data matches 265.. run forceload remove 61028 61000 61056 61049
execute if score #rg_snk_tower switch.data matches 265.. run forceload remove 61056 61000 61084 61049
execute if score #rg_snk_tower switch.data matches 265.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snk_tower","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snk_tower switch.data matches 265.. run scoreboard players reset #rg_snk_tower switch.data

execute if score #rg_snk_tower switch.data matches 1.. run schedule function switch:maps/survival/snk_tower/regenerate 1t

