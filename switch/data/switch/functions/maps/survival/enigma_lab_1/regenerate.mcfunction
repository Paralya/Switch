
scoreboard players add #rg_enigma_lab_1 switch.data 1
execute if score #rg_enigma_lab_1 switch.data matches 1 run forceload add 53977 53994 53987 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 run forceload add 53987 53994 53998 54100
execute if score #rg_enigma_lab_1 switch.data matches 1 run forceload add 53998 53994 54008 54100

execute if score #rg_enigma_lab_1 switch.data matches 1 run scoreboard players set #rg_enigma_lab_1_y switch.data 0
execute if score #rg_enigma_lab_1 switch.data matches 1 run scoreboard players set #rg_enigma_lab_1_mod switch.data 0
execute if score #rg_enigma_lab_1 switch.data matches ..123 summon marker run function switch:maps/survival/enigma_lab_1/regeneration_on_marker

execute if score #rg_enigma_lab_1 switch.data matches 124.. run kill @e[type=item,x=53992,y=0,z=54047,distance=..1000]
execute if score #rg_enigma_lab_1 switch.data matches 124.. run forceload remove 53977 53994 53987 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. run forceload remove 53987 53994 53998 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. run forceload remove 53998 53994 54008 54100
execute if score #rg_enigma_lab_1 switch.data matches 124.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"enigma_lab_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_enigma_lab_1 switch.data matches 124.. run scoreboard players reset #rg_enigma_lab_1 switch.data

execute if score #rg_enigma_lab_1 switch.data matches 1.. run schedule function switch:maps/survival/enigma_lab_1/regenerate 1t

