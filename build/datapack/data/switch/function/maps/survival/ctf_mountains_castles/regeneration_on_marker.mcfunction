
#> switch:maps/survival/ctf_mountains_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_mountains_castles_y switch.data

execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s in switch:game run particle cloud 147009 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld 147000 ~ 147000 147019 ~ 147158 to switch:game 147000 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s in switch:game run particle cloud 147028 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld 147019 ~ 147000 147038 ~ 147158 to switch:game 147019 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s in switch:game run particle cloud 147047 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld 147038 ~ 147000 147057 ~ 147158 to switch:game 147038 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s in switch:game run particle cloud 147066 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld 147057 ~ 147000 147076 ~ 147158 to switch:game 147057 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s in switch:game run particle cloud 147086 ~164.5 147079 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld 147076 ~ 147000 147096 ~ 147158 to switch:game 147076 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s in switch:game run particle cloud 147105 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld 147096 ~ 147000 147115 ~ 147158 to switch:game 147096 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s in switch:game run particle cloud 147124 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld 147115 ~ 147000 147134 ~ 147158 to switch:game 147115 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s in switch:game run particle cloud 147143 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld 147134 ~ 147000 147153 ~ 147158 to switch:game 147134 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s in switch:game run particle cloud 147162 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s run clone from minecraft:overworld 147153 ~ 147000 147172 ~ 147158 to switch:game 147153 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s in switch:game run particle cloud 147181 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s run clone from minecraft:overworld 147172 ~ 147000 147191 ~ 147158 to switch:game 147172 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s in switch:game run particle cloud 147200 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s run clone from minecraft:overworld 147191 ~ 147000 147210 ~ 147158 to switch:game 147191 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s in switch:game run particle cloud 147219 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s run clone from minecraft:overworld 147210 ~ 147000 147229 ~ 147158 to switch:game 147210 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s in switch:game run particle cloud 147238 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s run clone from minecraft:overworld 147229 ~ 147000 147248 ~ 147158 to switch:game 147229 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s in switch:game run particle cloud 147257 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s run clone from minecraft:overworld 147248 ~ 147000 147267 ~ 147158 to switch:game 147248 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s in switch:game run particle cloud 147277 ~164.5 147079 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s run clone from minecraft:overworld 147267 ~ 147000 147287 ~ 147158 to switch:game 147267 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s in switch:game run particle cloud 147296 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s run clone from minecraft:overworld 147287 ~ 147000 147306 ~ 147158 to switch:game 147287 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s in switch:game run particle cloud 147315 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s run clone from minecraft:overworld 147306 ~ 147000 147325 ~ 147158 to switch:game 147306 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s in switch:game run particle cloud 147334 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s run clone from minecraft:overworld 147325 ~ 147000 147344 ~ 147158 to switch:game 147325 ~164 147000 replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s in switch:game run particle cloud 147353 ~164.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s run clone from minecraft:overworld 147344 ~ 147000 147363 ~ 147158 to switch:game 147344 ~164 147000 replace force

scoreboard players add #rg_ctf_mountains_castles_mod switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 in switch:game run kill @e[type=item,x=147181,y=-64,z=147079,distance=..1000]
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players add #rg_ctf_mountains_castles_y switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0

kill @s

