
scoreboard players add #rg_sakura_house switch.data 1
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86000 86000 86017 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86017 86000 86035 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86035 86000 86052 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86052 86000 86069 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86069 86000 86086 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86086 86000 86104 86135
execute if score #rg_sakura_house switch.data matches 1 run forceload add 86104 86000 86121 86135

execute if score #rg_sakura_house switch.data matches 1 run scoreboard players set #rg_sakura_house_y switch.data -64
execute if score #rg_sakura_house switch.data matches 1 run scoreboard players set #rg_sakura_house_mod switch.data 0
execute if score #rg_sakura_house switch.data matches ..658 summon marker run function switch:maps/survival/sakura_house/regeneration_on_marker

execute if score #rg_sakura_house switch.data matches 659.. run kill @e[type=item,x=86060,y=0,z=86067,distance=..1000]
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86000 86000 86017 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86017 86000 86035 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86035 86000 86052 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86052 86000 86069 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86069 86000 86086 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86086 86000 86104 86135
execute if score #rg_sakura_house switch.data matches 659.. run forceload remove 86104 86000 86121 86135
execute if score #rg_sakura_house switch.data matches 659.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sakura_house","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"32","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sakura_house switch.data matches 659.. run scoreboard players reset #rg_sakura_house switch.data

execute if score #rg_sakura_house switch.data matches 1.. run schedule function switch:maps/survival/sakura_house/regenerate 1t

