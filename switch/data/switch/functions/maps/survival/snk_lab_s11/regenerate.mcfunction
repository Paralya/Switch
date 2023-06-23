
scoreboard players add #rg_snk_lab_s11 switch.data 1
execute if score #rg_snk_lab_s11 switch.data matches 1 run forceload add 67000 67000 67022 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 run forceload add 67022 67000 67043 67073
execute if score #rg_snk_lab_s11 switch.data matches 1 run forceload add 67043 67000 67065 67073

execute if score #rg_snk_lab_s11 switch.data matches 1 run scoreboard players set #rg_snk_lab_s11_y switch.data 0
execute if score #rg_snk_lab_s11 switch.data matches 1 run scoreboard players set #rg_snk_lab_s11_mod switch.data 0
execute if score #rg_snk_lab_s11 switch.data matches ..102 summon marker run function switch:maps/survival/snk_lab_s11/regeneration_on_marker

execute if score #rg_snk_lab_s11 switch.data matches 103.. run kill @e[type=item,x=67032,y=0,z=67036,distance=..1000]
execute if score #rg_snk_lab_s11 switch.data matches 103.. run forceload remove 67000 67000 67022 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. run forceload remove 67022 67000 67043 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. run forceload remove 67043 67000 67065 67073
execute if score #rg_snk_lab_s11 switch.data matches 103.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snk_lab_s11","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snk_lab_s11 switch.data matches 103.. run scoreboard players reset #rg_snk_lab_s11 switch.data

execute if score #rg_snk_lab_s11 switch.data matches 1.. run schedule function switch:maps/survival/snk_lab_s11/regenerate 1t

