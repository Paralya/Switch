
scoreboard players add #rg_sky_tower switch.data 1
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80000 80000 80018 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80018 80000 80036 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80036 80000 80053 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80053 80000 80071 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80071 80000 80089 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80089 80000 80106 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80106 80000 80124 80142
execute if score #rg_sky_tower switch.data matches 1 run forceload add 80124 80000 80142 80142

execute if score #rg_sky_tower switch.data matches 1 run scoreboard players set #rg_sky_tower_y switch.data -64
execute if score #rg_sky_tower switch.data matches 1 run scoreboard players set #rg_sky_tower_mod switch.data 0
execute if score #rg_sky_tower switch.data matches ..1696 summon marker run function switch:maps/survival/sky_tower/regeneration_on_marker

execute if score #rg_sky_tower switch.data matches 1697.. run kill @e[type=item,x=80071,y=-64,z=80071,distance=..1000]
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80000 80000 80018 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80018 80000 80036 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80036 80000 80053 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80053 80000 80071 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80071 80000 80089 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80089 80000 80106 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80106 80000 80124 80142
execute if score #rg_sky_tower switch.data matches 1697.. run forceload remove 80124 80000 80142 80142
execute if score #rg_sky_tower switch.data matches 1697.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sky_tower","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sky_tower switch.data matches 1697.. run scoreboard players reset #rg_sky_tower switch.data

execute if score #rg_sky_tower switch.data matches 1.. run schedule function switch:maps/survival/sky_tower/regenerate 1t

