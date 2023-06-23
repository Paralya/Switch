
scoreboard players add #rg_ghost_town switch.data 1
execute if score #rg_ghost_town switch.data matches 1 run forceload add 41935 41942 41957 42058
execute if score #rg_ghost_town switch.data matches 1 run forceload add 41957 41942 41978 42058
execute if score #rg_ghost_town switch.data matches 1 run forceload add 41978 41942 42000 42058
execute if score #rg_ghost_town switch.data matches 1 run forceload add 42000 41942 42022 42058
execute if score #rg_ghost_town switch.data matches 1 run forceload add 42022 41942 42043 42058
execute if score #rg_ghost_town switch.data matches 1 run forceload add 42043 41942 42065 42058

execute if score #rg_ghost_town switch.data matches 1 run scoreboard players set #rg_ghost_town_y switch.data 0
execute if score #rg_ghost_town switch.data matches 1 run scoreboard players set #rg_ghost_town_mod switch.data 0
execute if score #rg_ghost_town switch.data matches ..234 summon marker run function switch:maps/survival/ghost_town/regeneration_on_marker

execute if score #rg_ghost_town switch.data matches 235.. run kill @e[type=item,x=42000,y=0,z=42000,distance=..1000]
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 41935 41942 41957 42058
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 41957 41942 41978 42058
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 41978 41942 42000 42058
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 42000 41942 42022 42058
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 42022 41942 42043 42058
execute if score #rg_ghost_town switch.data matches 235.. run forceload remove 42043 41942 42065 42058
execute if score #rg_ghost_town switch.data matches 235.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"ghost_town","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ghost_town switch.data matches 235.. run scoreboard players reset #rg_ghost_town switch.data

execute if score #rg_ghost_town switch.data matches 1.. run schedule function switch:maps/survival/ghost_town/regenerate 1t

