
#> switch:maps/survival/giant_zoo/regeneration_on_marker
#
# @within	switch:maps/survival/giant_zoo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_giant_zoo_y switch.data

execute if score #rg_giant_zoo_mod switch.data matches 0 at @s in switch:game run particle cloud 70005 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 0 at @s run clone from minecraft:overworld 70000 ~ 70000 70010 ~ 70287 to switch:game 70000 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 1 at @s in switch:game run particle cloud 70015 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 1 at @s run clone from minecraft:overworld 70010 ~ 70000 70021 ~ 70287 to switch:game 70010 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 2 at @s in switch:game run particle cloud 70026 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 2 at @s run clone from minecraft:overworld 70021 ~ 70000 70031 ~ 70287 to switch:game 70021 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 3 at @s in switch:game run particle cloud 70036 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 3 at @s run clone from minecraft:overworld 70031 ~ 70000 70042 ~ 70287 to switch:game 70031 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 4 at @s in switch:game run particle cloud 70047 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 4 at @s run clone from minecraft:overworld 70042 ~ 70000 70052 ~ 70287 to switch:game 70042 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 5 at @s in switch:game run particle cloud 70057 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 5 at @s run clone from minecraft:overworld 70052 ~ 70000 70063 ~ 70287 to switch:game 70052 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 6 at @s in switch:game run particle cloud 70068 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 6 at @s run clone from minecraft:overworld 70063 ~ 70000 70073 ~ 70287 to switch:game 70063 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 7 at @s in switch:game run particle cloud 70078 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 7 at @s run clone from minecraft:overworld 70073 ~ 70000 70084 ~ 70287 to switch:game 70073 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 8 at @s in switch:game run particle cloud 70089 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 8 at @s run clone from minecraft:overworld 70084 ~ 70000 70094 ~ 70287 to switch:game 70084 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 9 at @s in switch:game run particle cloud 70099 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 9 at @s run clone from minecraft:overworld 70094 ~ 70000 70104 ~ 70287 to switch:game 70094 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 10 at @s in switch:game run particle cloud 70109 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 10 at @s run clone from minecraft:overworld 70104 ~ 70000 70115 ~ 70287 to switch:game 70104 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 11 at @s in switch:game run particle cloud 70120 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 11 at @s run clone from minecraft:overworld 70115 ~ 70000 70125 ~ 70287 to switch:game 70115 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 12 at @s in switch:game run particle cloud 70130 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 12 at @s run clone from minecraft:overworld 70125 ~ 70000 70136 ~ 70287 to switch:game 70125 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 13 at @s in switch:game run particle cloud 70141 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 13 at @s run clone from minecraft:overworld 70136 ~ 70000 70146 ~ 70287 to switch:game 70136 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 14 at @s in switch:game run particle cloud 70151 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 14 at @s run clone from minecraft:overworld 70146 ~ 70000 70157 ~ 70287 to switch:game 70146 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 15 at @s in switch:game run particle cloud 70162 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 15 at @s run clone from minecraft:overworld 70157 ~ 70000 70167 ~ 70287 to switch:game 70157 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 16 at @s in switch:game run particle cloud 70172 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 16 at @s run clone from minecraft:overworld 70167 ~ 70000 70178 ~ 70287 to switch:game 70167 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 17 at @s in switch:game run particle cloud 70183 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 17 at @s run clone from minecraft:overworld 70178 ~ 70000 70188 ~ 70287 to switch:game 70178 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 18 at @s in switch:game run particle cloud 70193 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 18 at @s run clone from minecraft:overworld 70188 ~ 70000 70199 ~ 70287 to switch:game 70188 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 19 at @s in switch:game run particle cloud 70204 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 19 at @s run clone from minecraft:overworld 70199 ~ 70000 70209 ~ 70287 to switch:game 70199 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 20 at @s in switch:game run particle cloud 70214 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 20 at @s run clone from minecraft:overworld 70209 ~ 70000 70219 ~ 70287 to switch:game 70209 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 21 at @s in switch:game run particle cloud 70224 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 21 at @s run clone from minecraft:overworld 70219 ~ 70000 70230 ~ 70287 to switch:game 70219 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 22 at @s in switch:game run particle cloud 70235 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 22 at @s run clone from minecraft:overworld 70230 ~ 70000 70240 ~ 70287 to switch:game 70230 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 23 at @s in switch:game run particle cloud 70245 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 23 at @s run clone from minecraft:overworld 70240 ~ 70000 70251 ~ 70287 to switch:game 70240 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 24 at @s in switch:game run particle cloud 70256 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 24 at @s run clone from minecraft:overworld 70251 ~ 70000 70261 ~ 70287 to switch:game 70251 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 25 at @s in switch:game run particle cloud 70266 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 25 at @s run clone from minecraft:overworld 70261 ~ 70000 70272 ~ 70287 to switch:game 70261 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 26 at @s in switch:game run particle cloud 70277 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 26 at @s run clone from minecraft:overworld 70272 ~ 70000 70282 ~ 70287 to switch:game 70272 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 27 at @s in switch:game run particle cloud 70287 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 27 at @s run clone from minecraft:overworld 70282 ~ 70000 70293 ~ 70287 to switch:game 70282 ~100 70000 replace force

execute if score #rg_giant_zoo_mod switch.data matches 28 at @s in switch:game run particle cloud 70298 ~100.5 70143 5 0 71 0 250 force
execute if score #rg_giant_zoo_mod switch.data matches 28 at @s run clone from minecraft:overworld 70293 ~ 70000 70303 ~ 70287 to switch:game 70293 ~100 70000 replace force

scoreboard players add #rg_giant_zoo_mod switch.data 1
execute if score #rg_giant_zoo_mod switch.data matches 29 in switch:game run kill @e[type=item,x=70151,y=0,z=70143,distance=..1000]
execute if score #rg_giant_zoo_mod switch.data matches 29 run scoreboard players add #rg_giant_zoo_y switch.data 1
execute if score #rg_giant_zoo_mod switch.data matches 29 run scoreboard players set #rg_giant_zoo_mod switch.data 0

kill @s

