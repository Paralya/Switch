
scoreboard players add #rg_stardust_pvp_zone switch.data 1
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105000 105000 105010 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105010 105000 105019 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105019 105000 105029 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105029 105000 105039 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105039 105000 105048 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105048 105000 105058 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105058 105000 105068 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105068 105000 105078 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105078 105000 105087 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105087 105000 105097 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105097 105000 105107 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105107 105000 105116 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105116 105000 105126 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105126 105000 105136 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105136 105000 105146 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105146 105000 105155 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105155 105000 105165 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105165 105000 105175 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105175 105000 105184 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105184 105000 105194 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105194 105000 105204 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105204 105000 105213 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105213 105000 105223 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105223 105000 105233 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105233 105000 105242 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105242 105000 105252 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105252 105000 105262 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105262 105000 105272 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105272 105000 105281 105314
execute if score #rg_stardust_pvp_zone switch.data matches 1 run forceload add 105281 105000 105291 105314

execute if score #rg_stardust_pvp_zone switch.data matches 1 run scoreboard players set #rg_stardust_pvp_zone_y switch.data -64
execute if score #rg_stardust_pvp_zone switch.data matches 1 run scoreboard players set #rg_stardust_pvp_zone_mod switch.data 0
execute if score #rg_stardust_pvp_zone switch.data matches ..4260 summon marker run function switch:maps/survival/stardust_pvp_zone/regeneration_on_marker

execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run kill @e[type=item,x=105145,y=-63,z=105157,distance=..1000]
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105000 105000 105010 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105010 105000 105019 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105019 105000 105029 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105029 105000 105039 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105039 105000 105048 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105048 105000 105058 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105058 105000 105068 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105068 105000 105078 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105078 105000 105087 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105087 105000 105097 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105097 105000 105107 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105107 105000 105116 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105116 105000 105126 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105126 105000 105136 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105136 105000 105146 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105146 105000 105155 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105155 105000 105165 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105165 105000 105175 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105175 105000 105184 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105184 105000 105194 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105194 105000 105204 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105204 105000 105213 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105213 105000 105223 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105223 105000 105233 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105233 105000 105242 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105242 105000 105252 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105252 105000 105262 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105262 105000 105272 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105272 105000 105281 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run forceload remove 105281 105000 105291 105314
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"stardust_pvp_zone","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"3","color":"gold"},{"text":"m","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_pvp_zone switch.data matches 4261.. run scoreboard players reset #rg_stardust_pvp_zone switch.data

execute if score #rg_stardust_pvp_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_pvp_zone/regenerate 1t

