
#> switch:maps/survival/boat_race_1/regeneration_on_marker
#
# @within	switch:maps/survival/boat_race_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_boat_race_1_y switch.data

execute if score #rg_boat_race_1_mod switch.data matches 0 at @s in switch:game run particle cloud 6 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ -4000 12 ~ -3743 to switch:game 0 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 1 at @s in switch:game run particle cloud 18 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 12 ~ -4000 24 ~ -3743 to switch:game 12 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 2 at @s in switch:game run particle cloud 29 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 24 ~ -4000 35 ~ -3743 to switch:game 24 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 3 at @s in switch:game run particle cloud 41 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 35 ~ -4000 47 ~ -3743 to switch:game 35 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 4 at @s in switch:game run particle cloud 53 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 4 at @s run clone from minecraft:overworld 47 ~ -4000 59 ~ -3743 to switch:game 47 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 5 at @s in switch:game run particle cloud 65 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 5 at @s run clone from minecraft:overworld 59 ~ -4000 71 ~ -3743 to switch:game 59 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 6 at @s in switch:game run particle cloud 77 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 6 at @s run clone from minecraft:overworld 71 ~ -4000 83 ~ -3743 to switch:game 71 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 7 at @s in switch:game run particle cloud 88 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 7 at @s run clone from minecraft:overworld 83 ~ -4000 94 ~ -3743 to switch:game 83 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 8 at @s in switch:game run particle cloud 100 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 8 at @s run clone from minecraft:overworld 94 ~ -4000 106 ~ -3743 to switch:game 94 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 9 at @s in switch:game run particle cloud 112 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 9 at @s run clone from minecraft:overworld 106 ~ -4000 118 ~ -3743 to switch:game 106 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 10 at @s in switch:game run particle cloud 124 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 10 at @s run clone from minecraft:overworld 118 ~ -4000 130 ~ -3743 to switch:game 118 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 11 at @s in switch:game run particle cloud 136 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 11 at @s run clone from minecraft:overworld 130 ~ -4000 142 ~ -3743 to switch:game 130 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 12 at @s in switch:game run particle cloud 147 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 12 at @s run clone from minecraft:overworld 142 ~ -4000 153 ~ -3743 to switch:game 142 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 13 at @s in switch:game run particle cloud 159 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 13 at @s run clone from minecraft:overworld 153 ~ -4000 165 ~ -3743 to switch:game 153 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 14 at @s in switch:game run particle cloud 171 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 14 at @s run clone from minecraft:overworld 165 ~ -4000 177 ~ -3743 to switch:game 165 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 15 at @s in switch:game run particle cloud 183 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 15 at @s run clone from minecraft:overworld 177 ~ -4000 189 ~ -3743 to switch:game 177 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 16 at @s in switch:game run particle cloud 194 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 16 at @s run clone from minecraft:overworld 189 ~ -4000 200 ~ -3743 to switch:game 189 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 17 at @s in switch:game run particle cloud 206 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 17 at @s run clone from minecraft:overworld 200 ~ -4000 212 ~ -3743 to switch:game 200 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 18 at @s in switch:game run particle cloud 218 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 18 at @s run clone from minecraft:overworld 212 ~ -4000 224 ~ -3743 to switch:game 212 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 19 at @s in switch:game run particle cloud 230 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 19 at @s run clone from minecraft:overworld 224 ~ -4000 236 ~ -3743 to switch:game 224 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 20 at @s in switch:game run particle cloud 242 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 20 at @s run clone from minecraft:overworld 236 ~ -4000 248 ~ -3743 to switch:game 236 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 21 at @s in switch:game run particle cloud 253 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 21 at @s run clone from minecraft:overworld 248 ~ -4000 259 ~ -3743 to switch:game 248 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 22 at @s in switch:game run particle cloud 265 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 22 at @s run clone from minecraft:overworld 259 ~ -4000 271 ~ -3743 to switch:game 259 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 23 at @s in switch:game run particle cloud 277 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 23 at @s run clone from minecraft:overworld 271 ~ -4000 283 ~ -3743 to switch:game 271 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 24 at @s in switch:game run particle cloud 289 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 24 at @s run clone from minecraft:overworld 283 ~ -4000 295 ~ -3743 to switch:game 283 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 25 at @s in switch:game run particle cloud 301 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 25 at @s run clone from minecraft:overworld 295 ~ -4000 307 ~ -3743 to switch:game 295 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 26 at @s in switch:game run particle cloud 312 ~0.5 -3872 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 26 at @s run clone from minecraft:overworld 307 ~ -4000 318 ~ -3743 to switch:game 307 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 27 at @s in switch:game run particle cloud 324 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 27 at @s run clone from minecraft:overworld 318 ~ -4000 330 ~ -3743 to switch:game 318 ~0 -4000 strict replace force

execute if score #rg_boat_race_1_mod switch.data matches 28 at @s in switch:game run particle cloud 336 ~0.5 -3872 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 28 at @s run clone from minecraft:overworld 330 ~ -4000 342 ~ -3743 to switch:game 330 ~0 -4000 strict replace force

scoreboard players add #rg_boat_race_1_mod switch.data 1
execute if score #rg_boat_race_1_mod switch.data matches 29 in switch:game run kill @e[type=item,x=171,y=100,z=-3871,distance=..1000]
execute if score #rg_boat_race_1_mod switch.data matches 29 run scoreboard players add #rg_boat_race_1_y switch.data 1
execute if score #rg_boat_race_1_mod switch.data matches 29 run scoreboard players set #rg_boat_race_1_mod switch.data 0

kill @s

