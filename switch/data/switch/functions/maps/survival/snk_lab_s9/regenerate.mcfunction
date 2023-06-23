
scoreboard players add #rg_snk_lab_s9 switch.data 1
execute if score #rg_snk_lab_s9 switch.data matches 1 run forceload add 75000 75000 75022 75076
execute if score #rg_snk_lab_s9 switch.data matches 1 run forceload add 75022 75000 75044 75076
execute if score #rg_snk_lab_s9 switch.data matches 1 run forceload add 75044 75000 75067 75076
execute if score #rg_snk_lab_s9 switch.data matches 1 run forceload add 75067 75000 75089 75076

execute if score #rg_snk_lab_s9 switch.data matches 1 run scoreboard players set #rg_snk_lab_s9_y switch.data 0
execute if score #rg_snk_lab_s9 switch.data matches 1 run scoreboard players set #rg_snk_lab_s9_mod switch.data 0
execute if score #rg_snk_lab_s9 switch.data matches ..144 summon marker run function switch:maps/survival/snk_lab_s9/regeneration_on_marker

execute if score #rg_snk_lab_s9 switch.data matches 145.. run kill @e[type=item,x=75044,y=0,z=75038,distance=..1000]
execute if score #rg_snk_lab_s9 switch.data matches 145.. run forceload remove 75000 75000 75022 75076
execute if score #rg_snk_lab_s9 switch.data matches 145.. run forceload remove 75022 75000 75044 75076
execute if score #rg_snk_lab_s9 switch.data matches 145.. run forceload remove 75044 75000 75067 75076
execute if score #rg_snk_lab_s9 switch.data matches 145.. run forceload remove 75067 75000 75089 75076
execute if score #rg_snk_lab_s9 switch.data matches 145.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snk_lab_s9","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"07","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snk_lab_s9 switch.data matches 145.. run scoreboard players reset #rg_snk_lab_s9 switch.data

execute if score #rg_snk_lab_s9 switch.data matches 1.. run schedule function switch:maps/survival/snk_lab_s9/regenerate 1t

