
scoreboard players add #rg_enigma_lab_2 switch.data 1
execute if score #rg_enigma_lab_2 switch.data matches 1 run forceload add 73000 73000 73025 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 run forceload add 73025 73000 73051 73083
execute if score #rg_enigma_lab_2 switch.data matches 1 run forceload add 73051 73000 73076 73083

execute if score #rg_enigma_lab_2 switch.data matches 1 run scoreboard players set #rg_enigma_lab_2_y switch.data -64
execute if score #rg_enigma_lab_2 switch.data matches 1 run scoreboard players set #rg_enigma_lab_2_mod switch.data 0
execute if score #rg_enigma_lab_2 switch.data matches ..87 summon marker run function switch:maps/survival/enigma_lab_2/regeneration_on_marker

execute if score #rg_enigma_lab_2 switch.data matches 88.. run kill @e[type=item,x=73038,y=0,z=73041,distance=..1000]
execute if score #rg_enigma_lab_2 switch.data matches 88.. run forceload remove 73000 73000 73025 73083
execute if score #rg_enigma_lab_2 switch.data matches 88.. run forceload remove 73025 73000 73051 73083
execute if score #rg_enigma_lab_2 switch.data matches 88.. run forceload remove 73051 73000 73076 73083
execute if score #rg_enigma_lab_2 switch.data matches 88.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"enigma_lab_2","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"04","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_enigma_lab_2 switch.data matches 88.. run scoreboard players reset #rg_enigma_lab_2 switch.data

execute if score #rg_enigma_lab_2 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_2/regenerate 1t

