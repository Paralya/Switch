
scoreboard players add #rg_highland_mansion switch.data 1
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85000 85000 85019 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85019 85000 85038 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85038 85000 85056 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85056 85000 85075 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85075 85000 85094 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85094 85000 85112 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85112 85000 85131 85142
execute if score #rg_highland_mansion switch.data matches 1 run forceload add 85131 85000 85150 85142

execute if score #rg_highland_mansion switch.data matches 1 run scoreboard players set #rg_highland_mansion_y switch.data -64
execute if score #rg_highland_mansion switch.data matches 1 run scoreboard players set #rg_highland_mansion_mod switch.data 0
execute if score #rg_highland_mansion switch.data matches ..576 summon marker run function switch:maps/survival/highland_mansion/regeneration_on_marker

execute if score #rg_highland_mansion switch.data matches 577.. run kill @e[type=item,x=85075,y=0,z=85071,distance=..1000]
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85000 85000 85019 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85019 85000 85038 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85038 85000 85056 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85056 85000 85075 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85075 85000 85094 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85094 85000 85112 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85112 85000 85131 85142
execute if score #rg_highland_mansion switch.data matches 577.. run forceload remove 85131 85000 85150 85142
execute if score #rg_highland_mansion switch.data matches 577.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"highland_mansion","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"28","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_highland_mansion switch.data matches 577.. run scoreboard players reset #rg_highland_mansion switch.data

execute if score #rg_highland_mansion switch.data matches 1.. run schedule function switch:maps/survival/highland_mansion/regenerate 1t

