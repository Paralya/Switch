
#> switch:maps/survival/trials_run/regeneration_on_marker
#
# @within	switch:maps/survival/trials_run/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_trials_run_y switch.data

execute if score #rg_trials_run_mod switch.data matches 0 at @s in switch:game run particle cloud 67005 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 0 at @s run clone from minecraft:overworld 67000 ~ 67000 67010 ~ 67300 to switch:game 67000 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 1 at @s in switch:game run particle cloud 67015 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 1 at @s run clone from minecraft:overworld 67010 ~ 67000 67020 ~ 67300 to switch:game 67010 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 2 at @s in switch:game run particle cloud 67025 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 2 at @s run clone from minecraft:overworld 67020 ~ 67000 67030 ~ 67300 to switch:game 67020 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 3 at @s in switch:game run particle cloud 67035 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 3 at @s run clone from minecraft:overworld 67030 ~ 67000 67040 ~ 67300 to switch:game 67030 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 4 at @s in switch:game run particle cloud 67045 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 4 at @s run clone from minecraft:overworld 67040 ~ 67000 67050 ~ 67300 to switch:game 67040 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 5 at @s in switch:game run particle cloud 67055 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 5 at @s run clone from minecraft:overworld 67050 ~ 67000 67060 ~ 67300 to switch:game 67050 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 6 at @s in switch:game run particle cloud 67065 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 6 at @s run clone from minecraft:overworld 67060 ~ 67000 67070 ~ 67300 to switch:game 67060 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 7 at @s in switch:game run particle cloud 67075 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 7 at @s run clone from minecraft:overworld 67070 ~ 67000 67080 ~ 67300 to switch:game 67070 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 8 at @s in switch:game run particle cloud 67085 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 8 at @s run clone from minecraft:overworld 67080 ~ 67000 67090 ~ 67300 to switch:game 67080 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 9 at @s in switch:game run particle cloud 67095 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 9 at @s run clone from minecraft:overworld 67090 ~ 67000 67100 ~ 67300 to switch:game 67090 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 10 at @s in switch:game run particle cloud 67105 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 10 at @s run clone from minecraft:overworld 67100 ~ 67000 67110 ~ 67300 to switch:game 67100 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 11 at @s in switch:game run particle cloud 67115 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 11 at @s run clone from minecraft:overworld 67110 ~ 67000 67120 ~ 67300 to switch:game 67110 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 12 at @s in switch:game run particle cloud 67125 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 12 at @s run clone from minecraft:overworld 67120 ~ 67000 67130 ~ 67300 to switch:game 67120 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 13 at @s in switch:game run particle cloud 67135 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 13 at @s run clone from minecraft:overworld 67130 ~ 67000 67140 ~ 67300 to switch:game 67130 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 14 at @s in switch:game run particle cloud 67145 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 14 at @s run clone from minecraft:overworld 67140 ~ 67000 67150 ~ 67300 to switch:game 67140 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 15 at @s in switch:game run particle cloud 67155 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 15 at @s run clone from minecraft:overworld 67150 ~ 67000 67160 ~ 67300 to switch:game 67150 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 16 at @s in switch:game run particle cloud 67165 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 16 at @s run clone from minecraft:overworld 67160 ~ 67000 67170 ~ 67300 to switch:game 67160 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 17 at @s in switch:game run particle cloud 67175 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 17 at @s run clone from minecraft:overworld 67170 ~ 67000 67180 ~ 67300 to switch:game 67170 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 18 at @s in switch:game run particle cloud 67185 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 18 at @s run clone from minecraft:overworld 67180 ~ 67000 67190 ~ 67300 to switch:game 67180 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 19 at @s in switch:game run particle cloud 67195 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 19 at @s run clone from minecraft:overworld 67190 ~ 67000 67200 ~ 67300 to switch:game 67190 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 20 at @s in switch:game run particle cloud 67205 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 20 at @s run clone from minecraft:overworld 67200 ~ 67000 67210 ~ 67300 to switch:game 67200 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 21 at @s in switch:game run particle cloud 67215 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 21 at @s run clone from minecraft:overworld 67210 ~ 67000 67220 ~ 67300 to switch:game 67210 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 22 at @s in switch:game run particle cloud 67225 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 22 at @s run clone from minecraft:overworld 67220 ~ 67000 67230 ~ 67300 to switch:game 67220 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 23 at @s in switch:game run particle cloud 67235 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 23 at @s run clone from minecraft:overworld 67230 ~ 67000 67240 ~ 67300 to switch:game 67230 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 24 at @s in switch:game run particle cloud 67245 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 24 at @s run clone from minecraft:overworld 67240 ~ 67000 67250 ~ 67300 to switch:game 67240 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 25 at @s in switch:game run particle cloud 67255 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 25 at @s run clone from minecraft:overworld 67250 ~ 67000 67260 ~ 67300 to switch:game 67250 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 26 at @s in switch:game run particle cloud 67265 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 26 at @s run clone from minecraft:overworld 67260 ~ 67000 67270 ~ 67300 to switch:game 67260 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 27 at @s in switch:game run particle cloud 67275 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 27 at @s run clone from minecraft:overworld 67270 ~ 67000 67280 ~ 67300 to switch:game 67270 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 28 at @s in switch:game run particle cloud 67285 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 28 at @s run clone from minecraft:overworld 67280 ~ 67000 67290 ~ 67300 to switch:game 67280 ~0 67000 strict replace force

execute if score #rg_trials_run_mod switch.data matches 29 at @s in switch:game run particle cloud 67295 ~0.5 67150 5 0 75 0 250 force
execute if score #rg_trials_run_mod switch.data matches 29 at @s run clone from minecraft:overworld 67290 ~ 67000 67300 ~ 67300 to switch:game 67290 ~0 67000 strict replace force

scoreboard players add #rg_trials_run_mod switch.data 1
execute if score #rg_trials_run_mod switch.data matches 30 in switch:game run kill @e[type=item,x=67150,y=100,z=67150,distance=..1000]
execute if score #rg_trials_run_mod switch.data matches 30 run scoreboard players add #rg_trials_run_y switch.data 1
execute if score #rg_trials_run_mod switch.data matches 30 run scoreboard players set #rg_trials_run_mod switch.data 0

kill @s

