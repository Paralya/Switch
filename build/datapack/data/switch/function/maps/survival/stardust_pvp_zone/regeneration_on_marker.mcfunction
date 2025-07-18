
#> switch:maps/survival/stardust_pvp_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_pvp_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_pvp_zone_y switch.data

execute if score #rg_stardust_pvp_zone_mod switch.data matches 0 at @s in switch:game run particle cloud 105005 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld 105000 ~ 105000 105010 ~ 105314 to switch:game 105000 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 1 at @s in switch:game run particle cloud 105014 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld 105010 ~ 105000 105019 ~ 105314 to switch:game 105010 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 2 at @s in switch:game run particle cloud 105024 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld 105019 ~ 105000 105029 ~ 105314 to switch:game 105019 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 3 at @s in switch:game run particle cloud 105034 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld 105029 ~ 105000 105039 ~ 105314 to switch:game 105029 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 4 at @s in switch:game run particle cloud 105043 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld 105039 ~ 105000 105048 ~ 105314 to switch:game 105039 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 5 at @s in switch:game run particle cloud 105053 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 5 at @s run clone from minecraft:overworld 105048 ~ 105000 105058 ~ 105314 to switch:game 105048 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 6 at @s in switch:game run particle cloud 105063 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 6 at @s run clone from minecraft:overworld 105058 ~ 105000 105068 ~ 105314 to switch:game 105058 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 7 at @s in switch:game run particle cloud 105073 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 7 at @s run clone from minecraft:overworld 105068 ~ 105000 105078 ~ 105314 to switch:game 105068 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 8 at @s in switch:game run particle cloud 105082 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 8 at @s run clone from minecraft:overworld 105078 ~ 105000 105087 ~ 105314 to switch:game 105078 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 9 at @s in switch:game run particle cloud 105092 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 9 at @s run clone from minecraft:overworld 105087 ~ 105000 105097 ~ 105314 to switch:game 105087 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 10 at @s in switch:game run particle cloud 105102 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 10 at @s run clone from minecraft:overworld 105097 ~ 105000 105107 ~ 105314 to switch:game 105097 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 11 at @s in switch:game run particle cloud 105111 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 11 at @s run clone from minecraft:overworld 105107 ~ 105000 105116 ~ 105314 to switch:game 105107 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 12 at @s in switch:game run particle cloud 105121 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 12 at @s run clone from minecraft:overworld 105116 ~ 105000 105126 ~ 105314 to switch:game 105116 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 13 at @s in switch:game run particle cloud 105131 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 13 at @s run clone from minecraft:overworld 105126 ~ 105000 105136 ~ 105314 to switch:game 105126 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 14 at @s in switch:game run particle cloud 105141 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 14 at @s run clone from minecraft:overworld 105136 ~ 105000 105146 ~ 105314 to switch:game 105136 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 15 at @s in switch:game run particle cloud 105150 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 15 at @s run clone from minecraft:overworld 105146 ~ 105000 105155 ~ 105314 to switch:game 105146 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 16 at @s in switch:game run particle cloud 105160 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 16 at @s run clone from minecraft:overworld 105155 ~ 105000 105165 ~ 105314 to switch:game 105155 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 17 at @s in switch:game run particle cloud 105170 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 17 at @s run clone from minecraft:overworld 105165 ~ 105000 105175 ~ 105314 to switch:game 105165 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 18 at @s in switch:game run particle cloud 105179 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 18 at @s run clone from minecraft:overworld 105175 ~ 105000 105184 ~ 105314 to switch:game 105175 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 19 at @s in switch:game run particle cloud 105189 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 19 at @s run clone from minecraft:overworld 105184 ~ 105000 105194 ~ 105314 to switch:game 105184 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 20 at @s in switch:game run particle cloud 105199 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 20 at @s run clone from minecraft:overworld 105194 ~ 105000 105204 ~ 105314 to switch:game 105194 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 21 at @s in switch:game run particle cloud 105208 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 21 at @s run clone from minecraft:overworld 105204 ~ 105000 105213 ~ 105314 to switch:game 105204 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 22 at @s in switch:game run particle cloud 105218 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 22 at @s run clone from minecraft:overworld 105213 ~ 105000 105223 ~ 105314 to switch:game 105213 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 23 at @s in switch:game run particle cloud 105228 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 23 at @s run clone from minecraft:overworld 105223 ~ 105000 105233 ~ 105314 to switch:game 105223 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 24 at @s in switch:game run particle cloud 105237 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 24 at @s run clone from minecraft:overworld 105233 ~ 105000 105242 ~ 105314 to switch:game 105233 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 25 at @s in switch:game run particle cloud 105247 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 25 at @s run clone from minecraft:overworld 105242 ~ 105000 105252 ~ 105314 to switch:game 105242 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 26 at @s in switch:game run particle cloud 105257 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 26 at @s run clone from minecraft:overworld 105252 ~ 105000 105262 ~ 105314 to switch:game 105252 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 27 at @s in switch:game run particle cloud 105267 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 27 at @s run clone from minecraft:overworld 105262 ~ 105000 105272 ~ 105314 to switch:game 105262 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 28 at @s in switch:game run particle cloud 105276 ~0.5 105157 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 28 at @s run clone from minecraft:overworld 105272 ~ 105000 105281 ~ 105314 to switch:game 105272 ~0 105000 replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 29 at @s in switch:game run particle cloud 105286 ~0.5 105157 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 29 at @s run clone from minecraft:overworld 105281 ~ 105000 105291 ~ 105314 to switch:game 105281 ~0 105000 replace force

scoreboard players add #rg_stardust_pvp_zone_mod switch.data 1
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 in switch:game run kill @e[type=item,x=105145,y=100,z=105157,distance=..1000]
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 run scoreboard players add #rg_stardust_pvp_zone_y switch.data 1
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 run scoreboard players set #rg_stardust_pvp_zone_mod switch.data 0

kill @s

