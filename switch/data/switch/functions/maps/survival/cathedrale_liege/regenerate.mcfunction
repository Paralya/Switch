
scoreboard players add #rg_cathedrale_liege switch.data 1
execute if score #rg_cathedrale_liege switch.data matches 1 run forceload add 25961 25944 25989 26028
execute if score #rg_cathedrale_liege switch.data matches 1 run forceload add 25989 25944 26016 26028
execute if score #rg_cathedrale_liege switch.data matches 1 run forceload add 26016 25944 26044 26028
execute if score #rg_cathedrale_liege switch.data matches 1 run forceload add 26044 25944 26071 26028
execute if score #rg_cathedrale_liege switch.data matches 1 run forceload add 26071 25944 26099 26028

execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_y switch.data -64
execute if score #rg_cathedrale_liege switch.data matches 1 run scoreboard players set #rg_cathedrale_liege_mod switch.data 0
execute if score #rg_cathedrale_liege switch.data matches ..815 summon marker run function switch:maps/survival/cathedrale_liege/regeneration_on_marker

execute if score #rg_cathedrale_liege switch.data matches 816.. run kill @e[type=item,x=26030,y=-64,z=25986,distance=..1000]
execute if score #rg_cathedrale_liege switch.data matches 816.. run forceload remove 25961 25944 25989 26028
execute if score #rg_cathedrale_liege switch.data matches 816.. run forceload remove 25989 25944 26016 26028
execute if score #rg_cathedrale_liege switch.data matches 816.. run forceload remove 26016 25944 26044 26028
execute if score #rg_cathedrale_liege switch.data matches 816.. run forceload remove 26044 25944 26071 26028
execute if score #rg_cathedrale_liege switch.data matches 816.. run forceload remove 26071 25944 26099 26028
execute if score #rg_cathedrale_liege switch.data matches 816.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"cathedrale_liege","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cathedrale_liege switch.data matches 816.. run scoreboard players reset #rg_cathedrale_liege switch.data

execute if score #rg_cathedrale_liege switch.data matches 1.. run schedule function switch:maps/survival/cathedrale_liege/regenerate 1t

