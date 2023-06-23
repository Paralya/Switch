
scoreboard players add #rg_sky_island_tower switch.data 1
execute if score #rg_sky_island_tower switch.data matches 1 run forceload add 77000 77000 77024 77094
execute if score #rg_sky_island_tower switch.data matches 1 run forceload add 77024 77000 77048 77094
execute if score #rg_sky_island_tower switch.data matches 1 run forceload add 77048 77000 77073 77094
execute if score #rg_sky_island_tower switch.data matches 1 run forceload add 77073 77000 77097 77094

execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_y switch.data -64
execute if score #rg_sky_island_tower switch.data matches 1 run scoreboard players set #rg_sky_island_tower_mod switch.data 0
execute if score #rg_sky_island_tower switch.data matches ..584 summon marker run function switch:maps/survival/sky_island_tower/regeneration_on_marker

execute if score #rg_sky_island_tower switch.data matches 585.. run kill @e[type=item,x=77048,y=-64,z=77047,distance=..1000]
execute if score #rg_sky_island_tower switch.data matches 585.. run forceload remove 77000 77000 77024 77094
execute if score #rg_sky_island_tower switch.data matches 585.. run forceload remove 77024 77000 77048 77094
execute if score #rg_sky_island_tower switch.data matches 585.. run forceload remove 77048 77000 77073 77094
execute if score #rg_sky_island_tower switch.data matches 585.. run forceload remove 77073 77000 77097 77094
execute if score #rg_sky_island_tower switch.data matches 585.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sky_island_tower","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sky_island_tower switch.data matches 585.. run scoreboard players reset #rg_sky_island_tower switch.data

execute if score #rg_sky_island_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_island_tower/regenerate 1t

