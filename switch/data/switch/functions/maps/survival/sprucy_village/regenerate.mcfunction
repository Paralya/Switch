
scoreboard players add #rg_sprucy_village switch.data 1
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78000 78000 78024 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78024 78000 78049 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78049 78000 78073 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78073 78000 78098 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78098 78000 78122 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78122 78000 78147 78112
execute if score #rg_sprucy_village switch.data matches 1 run forceload add 78147 78000 78171 78112

execute if score #rg_sprucy_village switch.data matches 1 run scoreboard players set #rg_sprucy_village_y switch.data 0
execute if score #rg_sprucy_village switch.data matches 1 run scoreboard players set #rg_sprucy_village_mod switch.data 0
execute if score #rg_sprucy_village switch.data matches ..574 summon marker run function switch:maps/survival/sprucy_village/regeneration_on_marker

execute if score #rg_sprucy_village switch.data matches 575.. run kill @e[type=item,x=78085,y=0,z=78056,distance=..1000]
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78000 78000 78024 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78024 78000 78049 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78049 78000 78073 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78073 78000 78098 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78098 78000 78122 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78122 78000 78147 78112
execute if score #rg_sprucy_village switch.data matches 575.. run forceload remove 78147 78000 78171 78112
execute if score #rg_sprucy_village switch.data matches 575.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sprucy_village","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sprucy_village switch.data matches 575.. run scoreboard players reset #rg_sprucy_village switch.data

execute if score #rg_sprucy_village switch.data matches 1.. run schedule function switch:maps/survival/sprucy_village/regenerate 1t

