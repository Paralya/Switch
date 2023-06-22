
scoreboard players add #rg_pitchout_1 switch.data 1
execute if score #rg_pitchout_1 switch.data matches 1 run forceload add 950 1050 970 1150
execute if score #rg_pitchout_1 switch.data matches 1 run forceload add 970 1050 990 1150
execute if score #rg_pitchout_1 switch.data matches 1 run forceload add 990 1050 1010 1150
execute if score #rg_pitchout_1 switch.data matches 1 run forceload add 1010 1050 1030 1150
execute if score #rg_pitchout_1 switch.data matches 1 run forceload add 1030 1050 1050 1150

execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_y switch.data -64
execute if score #rg_pitchout_1 switch.data matches 1 run scoreboard players set #rg_pitchout_1_mod switch.data 0
execute if score #rg_pitchout_1 switch.data matches ..220 summon marker run function switch:maps/survival/pitchout_1/regeneration_on_marker

execute if score #rg_pitchout_1 switch.data matches 221.. run kill @e[type=item,x=1000,y=0,z=1100,distance=..1000]
execute if score #rg_pitchout_1 switch.data matches 221.. run forceload remove 950 1050 970 1150
execute if score #rg_pitchout_1 switch.data matches 221.. run forceload remove 970 1050 990 1150
execute if score #rg_pitchout_1 switch.data matches 221.. run forceload remove 990 1050 1010 1150
execute if score #rg_pitchout_1 switch.data matches 221.. run forceload remove 1010 1050 1030 1150
execute if score #rg_pitchout_1 switch.data matches 221.. run forceload remove 1030 1050 1050 1150
execute if score #rg_pitchout_1 switch.data matches 221.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"pitchout_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_pitchout_1 switch.data matches 221.. run scoreboard players reset #rg_pitchout_1 switch.data

execute if score #rg_pitchout_1 switch.data matches 1.. run schedule function switch:maps/survival/pitchout_1/regenerate 1t

