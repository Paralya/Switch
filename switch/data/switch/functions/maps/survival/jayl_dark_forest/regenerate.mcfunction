
scoreboard players add #rg_jayl_dark_forest switch.data 1
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33813 33873 33834 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33834 33873 33855 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33855 33873 33875 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33875 33873 33896 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33896 33873 33917 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33917 33873 33938 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33938 33873 33958 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33958 33873 33979 34000
execute if score #rg_jayl_dark_forest switch.data matches 1 run forceload add 33979 33873 34000 34000

execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_y switch.data -64
execute if score #rg_jayl_dark_forest switch.data matches 1 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0
execute if score #rg_jayl_dark_forest switch.data matches ..801 summon marker run function switch:maps/survival/jayl_dark_forest/regeneration_on_marker

execute if score #rg_jayl_dark_forest switch.data matches 802.. run kill @e[type=item,x=33906,y=0,z=33936,distance=..1000]
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33813 33873 33834 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33834 33873 33855 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33855 33873 33875 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33875 33873 33896 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33896 33873 33917 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33917 33873 33938 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33938 33873 33958 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33958 33873 33979 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run forceload remove 33979 33873 34000 34000
execute if score #rg_jayl_dark_forest switch.data matches 802.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"jayl_dark_forest","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jayl_dark_forest switch.data matches 802.. run scoreboard players reset #rg_jayl_dark_forest switch.data

execute if score #rg_jayl_dark_forest switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

