
#> switch:maps/survival/ctf_mountains_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_mountains_castles_y switch.data

execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s in switch:game run particle cloud 147008 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld 146999 ~ 147000 147018 ~ 147158 to switch:game 146999 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s in switch:game run particle cloud 147027 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld 147018 ~ 147000 147037 ~ 147158 to switch:game 147018 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s in switch:game run particle cloud 147046 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld 147037 ~ 147000 147056 ~ 147158 to switch:game 147037 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s in switch:game run particle cloud 147066 ~0.5 147079 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld 147056 ~ 147000 147076 ~ 147158 to switch:game 147056 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s in switch:game run particle cloud 147085 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld 147076 ~ 147000 147095 ~ 147158 to switch:game 147076 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s in switch:game run particle cloud 147104 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld 147095 ~ 147000 147114 ~ 147158 to switch:game 147095 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s in switch:game run particle cloud 147123 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld 147114 ~ 147000 147133 ~ 147158 to switch:game 147114 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s in switch:game run particle cloud 147142 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld 147133 ~ 147000 147152 ~ 147158 to switch:game 147133 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s in switch:game run particle cloud 147161 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s run clone from minecraft:overworld 147152 ~ 147000 147171 ~ 147158 to switch:game 147152 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s in switch:game run particle cloud 147181 ~0.5 147079 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s run clone from minecraft:overworld 147171 ~ 147000 147191 ~ 147158 to switch:game 147171 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s in switch:game run particle cloud 147200 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s run clone from minecraft:overworld 147191 ~ 147000 147210 ~ 147158 to switch:game 147191 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s in switch:game run particle cloud 147219 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s run clone from minecraft:overworld 147210 ~ 147000 147229 ~ 147158 to switch:game 147210 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s in switch:game run particle cloud 147238 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s run clone from minecraft:overworld 147229 ~ 147000 147248 ~ 147158 to switch:game 147229 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s in switch:game run particle cloud 147257 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s run clone from minecraft:overworld 147248 ~ 147000 147267 ~ 147158 to switch:game 147248 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s in switch:game run particle cloud 147276 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s run clone from minecraft:overworld 147267 ~ 147000 147286 ~ 147158 to switch:game 147267 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s in switch:game run particle cloud 147296 ~0.5 147079 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s run clone from minecraft:overworld 147286 ~ 147000 147306 ~ 147158 to switch:game 147286 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s in switch:game run particle cloud 147315 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s run clone from minecraft:overworld 147306 ~ 147000 147325 ~ 147158 to switch:game 147306 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s in switch:game run particle cloud 147334 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s run clone from minecraft:overworld 147325 ~ 147000 147344 ~ 147158 to switch:game 147325 ~0 147000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s in switch:game run particle cloud 147353 ~0.5 147079 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s run clone from minecraft:overworld 147344 ~ 147000 147363 ~ 147158 to switch:game 147344 ~0 147000 strict replace force

scoreboard players add #rg_ctf_mountains_castles_mod switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 in switch:game run kill @e[type=item,x=147181,y=100,z=147079,distance=..1000]
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players add #rg_ctf_mountains_castles_y switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0

kill @s

