
scoreboard players add #rg_whity_lab switch.data 1
execute if score #rg_whity_lab switch.data matches 1 run forceload add 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 1 run forceload add 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 1 run forceload add 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 1 run forceload add 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 1 run forceload add 91082 91000 91102 91102

execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_y switch.data 0
execute if score #rg_whity_lab switch.data matches 1 run scoreboard players set #rg_whity_lab_mod switch.data 0
execute if score #rg_whity_lab switch.data matches ..440 summon marker run function switch:maps/survival/whity_lab/regeneration_on_marker

execute if score #rg_whity_lab switch.data matches 441.. run kill @e[type=item,x=91051,y=0,z=91051,distance=..1000]
execute if score #rg_whity_lab switch.data matches 441.. run forceload remove 91000 91000 91020 91102
execute if score #rg_whity_lab switch.data matches 441.. run forceload remove 91020 91000 91041 91102
execute if score #rg_whity_lab switch.data matches 441.. run forceload remove 91041 91000 91061 91102
execute if score #rg_whity_lab switch.data matches 441.. run forceload remove 91061 91000 91082 91102
execute if score #rg_whity_lab switch.data matches 441.. run forceload remove 91082 91000 91102 91102
execute if score #rg_whity_lab switch.data matches 441.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"whity_lab","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_whity_lab switch.data matches 441.. run data modify storage switch:main MessageToLog set value '{"text": "La map `whity_lab` a fini sa regeneration !"}'
execute if score #rg_whity_lab switch.data matches 441.. run function switch:engine/log_message/apply
execute if score #rg_whity_lab switch.data matches 441.. run scoreboard players reset #rg_whity_lab switch.data

execute if score #rg_whity_lab switch.data matches 1.. run schedule function switch:maps/survival/whity_lab/regenerate 1t

