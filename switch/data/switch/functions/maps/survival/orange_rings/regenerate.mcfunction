
scoreboard players add #rg_orange_rings switch.data 1
execute if score #rg_orange_rings switch.data matches 1 run forceload add 65000 65000 65020 65103
execute if score #rg_orange_rings switch.data matches 1 run forceload add 65020 65000 65040 65103
execute if score #rg_orange_rings switch.data matches 1 run forceload add 65040 65000 65059 65103
execute if score #rg_orange_rings switch.data matches 1 run forceload add 65059 65000 65079 65103
execute if score #rg_orange_rings switch.data matches 1 run forceload add 65079 65000 65099 65103

execute if score #rg_orange_rings switch.data matches 1 run scoreboard players set #rg_orange_rings_y switch.data -64
execute if score #rg_orange_rings switch.data matches 1 run scoreboard players set #rg_orange_rings_mod switch.data 0
execute if score #rg_orange_rings switch.data matches ..470 summon marker run function switch:maps/survival/orange_rings/regeneration_on_marker

execute if score #rg_orange_rings switch.data matches 471.. run kill @e[type=item,x=65049,y=0,z=65051,distance=..1000]
execute if score #rg_orange_rings switch.data matches 471.. run forceload remove 65000 65000 65020 65103
execute if score #rg_orange_rings switch.data matches 471.. run forceload remove 65020 65000 65040 65103
execute if score #rg_orange_rings switch.data matches 471.. run forceload remove 65040 65000 65059 65103
execute if score #rg_orange_rings switch.data matches 471.. run forceload remove 65059 65000 65079 65103
execute if score #rg_orange_rings switch.data matches 471.. run forceload remove 65079 65000 65099 65103
execute if score #rg_orange_rings switch.data matches 471.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"orange_rings","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"23","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_orange_rings switch.data matches 471.. run scoreboard players reset #rg_orange_rings switch.data

execute if score #rg_orange_rings switch.data matches 1.. run schedule function switch:maps/survival/orange_rings/regenerate 1t

