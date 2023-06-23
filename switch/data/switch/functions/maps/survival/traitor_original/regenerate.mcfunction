
scoreboard players add #rg_traitor_original switch.data 1
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1408 1423 1426 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1426 1423 1445 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1445 1423 1463 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1463 1423 1482 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1482 1423 1500 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1500 1423 1518 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1518 1423 1537 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1537 1423 1555 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1555 1423 1574 1578
execute if score #rg_traitor_original switch.data matches 1 run forceload add 1574 1423 1592 1578

execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_y switch.data 0
execute if score #rg_traitor_original switch.data matches 1 run scoreboard players set #rg_traitor_original_mod switch.data 0
execute if score #rg_traitor_original switch.data matches ..640 summon marker run function switch:maps/survival/traitor_original/regeneration_on_marker

execute if score #rg_traitor_original switch.data matches 641.. run kill @e[type=item,x=1500,y=0,z=1500,distance=..1000]
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1408 1423 1426 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1426 1423 1445 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1445 1423 1463 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1463 1423 1482 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1482 1423 1500 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1500 1423 1518 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1518 1423 1537 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1537 1423 1555 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1555 1423 1574 1578
execute if score #rg_traitor_original switch.data matches 641.. run forceload remove 1574 1423 1592 1578
execute if score #rg_traitor_original switch.data matches 641.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"traitor_original","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"32","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_traitor_original switch.data matches 641.. run scoreboard players reset #rg_traitor_original switch.data

execute if score #rg_traitor_original switch.data matches 1.. run schedule function switch:maps/survival/traitor_original/regenerate 1t

