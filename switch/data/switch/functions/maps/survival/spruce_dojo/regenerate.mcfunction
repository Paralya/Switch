
scoreboard players add #rg_spruce_dojo switch.data 1
execute if score #rg_spruce_dojo switch.data matches 1 run forceload add 84000 84000 84028 84069
execute if score #rg_spruce_dojo switch.data matches 1 run forceload add 84028 84000 84055 84069
execute if score #rg_spruce_dojo switch.data matches 1 run forceload add 84055 84000 84083 84069

execute if score #rg_spruce_dojo switch.data matches 1 run scoreboard players set #rg_spruce_dojo_y switch.data -64
execute if score #rg_spruce_dojo switch.data matches 1 run scoreboard players set #rg_spruce_dojo_mod switch.data 0
execute if score #rg_spruce_dojo switch.data matches ..138 summon marker run function switch:maps/survival/spruce_dojo/regeneration_on_marker

execute if score #rg_spruce_dojo switch.data matches 139.. run kill @e[type=item,x=84041,y=0,z=84034,distance=..1000]
execute if score #rg_spruce_dojo switch.data matches 139.. run forceload remove 84000 84000 84028 84069
execute if score #rg_spruce_dojo switch.data matches 139.. run forceload remove 84028 84000 84055 84069
execute if score #rg_spruce_dojo switch.data matches 139.. run forceload remove 84055 84000 84083 84069
execute if score #rg_spruce_dojo switch.data matches 139.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"spruce_dojo","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_spruce_dojo switch.data matches 139.. run scoreboard players reset #rg_spruce_dojo switch.data

execute if score #rg_spruce_dojo switch.data matches 1.. run schedule function switch:maps/survival/spruce_dojo/regenerate 1t

