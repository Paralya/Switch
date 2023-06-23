
scoreboard players add #rg_red_temple switch.data 1
execute if score #rg_red_temple switch.data matches 1 run forceload add 87000 87000 87015 87094
execute if score #rg_red_temple switch.data matches 1 run forceload add 87015 87000 87030 87094
execute if score #rg_red_temple switch.data matches 1 run forceload add 87030 87000 87045 87094

execute if score #rg_red_temple switch.data matches 1 run scoreboard players set #rg_red_temple_y switch.data 0
execute if score #rg_red_temple switch.data matches 1 run scoreboard players set #rg_red_temple_mod switch.data 0
execute if score #rg_red_temple switch.data matches ..123 summon marker run function switch:maps/survival/red_temple/regeneration_on_marker

execute if score #rg_red_temple switch.data matches 124.. run kill @e[type=item,x=87022,y=0,z=87047,distance=..1000]
execute if score #rg_red_temple switch.data matches 124.. run forceload remove 87000 87000 87015 87094
execute if score #rg_red_temple switch.data matches 124.. run forceload remove 87015 87000 87030 87094
execute if score #rg_red_temple switch.data matches 124.. run forceload remove 87030 87000 87045 87094
execute if score #rg_red_temple switch.data matches 124.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"red_temple","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_red_temple switch.data matches 124.. run scoreboard players reset #rg_red_temple switch.data

execute if score #rg_red_temple switch.data matches 1.. run schedule function switch:maps/survival/red_temple/regenerate 1t

