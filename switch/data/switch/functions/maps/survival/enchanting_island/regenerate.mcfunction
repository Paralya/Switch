
scoreboard players add #rg_enchanting_island switch.data 1
execute if score #rg_enchanting_island switch.data matches 1 run forceload add 6970 6970 6990 7030
execute if score #rg_enchanting_island switch.data matches 1 run forceload add 6990 6970 7010 7030
execute if score #rg_enchanting_island switch.data matches 1 run forceload add 7010 6970 7030 7030

execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_y switch.data 0
execute if score #rg_enchanting_island switch.data matches 1 run scoreboard players set #rg_enchanting_island_mod switch.data 0
execute if score #rg_enchanting_island switch.data matches ..150 summon marker run function switch:maps/survival/enchanting_island/regeneration_on_marker

execute if score #rg_enchanting_island switch.data matches 151.. run kill @e[type=item,x=7000,y=0,z=7000,distance=..1000]
execute if score #rg_enchanting_island switch.data matches 151.. run forceload remove 6970 6970 6990 7030
execute if score #rg_enchanting_island switch.data matches 151.. run forceload remove 6990 6970 7010 7030
execute if score #rg_enchanting_island switch.data matches 151.. run forceload remove 7010 6970 7030 7030
execute if score #rg_enchanting_island switch.data matches 151.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"enchanting_island","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"07","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_enchanting_island switch.data matches 151.. run scoreboard players reset #rg_enchanting_island switch.data

execute if score #rg_enchanting_island switch.data matches 1.. run schedule function switch:maps/survival/enchanting_island/regenerate 1t

