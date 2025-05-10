
#> switch:maps/survival/boat_race_1/regeneration_on_marker
#
# @within	switch:maps/survival/boat_race_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_boat_race_1_y switch.data

execute if score #rg_boat_race_1_mod switch.data matches 0 at @s in switch:game run particle cloud 5006 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 0 at @s run clone from minecraft:overworld 5000 ~ 5000 5012 ~ 5257 to switch:game 5000 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 1 at @s in switch:game run particle cloud 5018 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 1 at @s run clone from minecraft:overworld 5012 ~ 5000 5024 ~ 5257 to switch:game 5012 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 2 at @s in switch:game run particle cloud 5029 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 2 at @s run clone from minecraft:overworld 5024 ~ 5000 5035 ~ 5257 to switch:game 5024 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 3 at @s in switch:game run particle cloud 5041 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 3 at @s run clone from minecraft:overworld 5035 ~ 5000 5047 ~ 5257 to switch:game 5035 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 4 at @s in switch:game run particle cloud 5053 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 4 at @s run clone from minecraft:overworld 5047 ~ 5000 5059 ~ 5257 to switch:game 5047 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 5 at @s in switch:game run particle cloud 5065 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 5 at @s run clone from minecraft:overworld 5059 ~ 5000 5071 ~ 5257 to switch:game 5059 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 6 at @s in switch:game run particle cloud 5077 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 6 at @s run clone from minecraft:overworld 5071 ~ 5000 5083 ~ 5257 to switch:game 5071 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 7 at @s in switch:game run particle cloud 5088 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 7 at @s run clone from minecraft:overworld 5083 ~ 5000 5094 ~ 5257 to switch:game 5083 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 8 at @s in switch:game run particle cloud 5100 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 8 at @s run clone from minecraft:overworld 5094 ~ 5000 5106 ~ 5257 to switch:game 5094 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 9 at @s in switch:game run particle cloud 5112 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 9 at @s run clone from minecraft:overworld 5106 ~ 5000 5118 ~ 5257 to switch:game 5106 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 10 at @s in switch:game run particle cloud 5124 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 10 at @s run clone from minecraft:overworld 5118 ~ 5000 5130 ~ 5257 to switch:game 5118 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 11 at @s in switch:game run particle cloud 5136 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 11 at @s run clone from minecraft:overworld 5130 ~ 5000 5142 ~ 5257 to switch:game 5130 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 12 at @s in switch:game run particle cloud 5147 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 12 at @s run clone from minecraft:overworld 5142 ~ 5000 5153 ~ 5257 to switch:game 5142 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 13 at @s in switch:game run particle cloud 5159 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 13 at @s run clone from minecraft:overworld 5153 ~ 5000 5165 ~ 5257 to switch:game 5153 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 14 at @s in switch:game run particle cloud 5171 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 14 at @s run clone from minecraft:overworld 5165 ~ 5000 5177 ~ 5257 to switch:game 5165 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 15 at @s in switch:game run particle cloud 5183 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 15 at @s run clone from minecraft:overworld 5177 ~ 5000 5189 ~ 5257 to switch:game 5177 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 16 at @s in switch:game run particle cloud 5194 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 16 at @s run clone from minecraft:overworld 5189 ~ 5000 5200 ~ 5257 to switch:game 5189 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 17 at @s in switch:game run particle cloud 5206 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 17 at @s run clone from minecraft:overworld 5200 ~ 5000 5212 ~ 5257 to switch:game 5200 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 18 at @s in switch:game run particle cloud 5218 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 18 at @s run clone from minecraft:overworld 5212 ~ 5000 5224 ~ 5257 to switch:game 5212 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 19 at @s in switch:game run particle cloud 5230 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 19 at @s run clone from minecraft:overworld 5224 ~ 5000 5236 ~ 5257 to switch:game 5224 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 20 at @s in switch:game run particle cloud 5242 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 20 at @s run clone from minecraft:overworld 5236 ~ 5000 5248 ~ 5257 to switch:game 5236 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 21 at @s in switch:game run particle cloud 5253 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 21 at @s run clone from minecraft:overworld 5248 ~ 5000 5259 ~ 5257 to switch:game 5248 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 22 at @s in switch:game run particle cloud 5265 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 22 at @s run clone from minecraft:overworld 5259 ~ 5000 5271 ~ 5257 to switch:game 5259 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 23 at @s in switch:game run particle cloud 5277 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 23 at @s run clone from minecraft:overworld 5271 ~ 5000 5283 ~ 5257 to switch:game 5271 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 24 at @s in switch:game run particle cloud 5289 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 24 at @s run clone from minecraft:overworld 5283 ~ 5000 5295 ~ 5257 to switch:game 5283 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 25 at @s in switch:game run particle cloud 5301 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 25 at @s run clone from minecraft:overworld 5295 ~ 5000 5307 ~ 5257 to switch:game 5295 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 26 at @s in switch:game run particle cloud 5312 ~0.5 5128 5 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 26 at @s run clone from minecraft:overworld 5307 ~ 5000 5318 ~ 5257 to switch:game 5307 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 27 at @s in switch:game run particle cloud 5324 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 27 at @s run clone from minecraft:overworld 5318 ~ 5000 5330 ~ 5257 to switch:game 5318 ~0 5000 replace force

execute if score #rg_boat_race_1_mod switch.data matches 28 at @s in switch:game run particle cloud 5336 ~0.5 5128 6 0 64 0 250 force
execute if score #rg_boat_race_1_mod switch.data matches 28 at @s run clone from minecraft:overworld 5330 ~ 5000 5342 ~ 5257 to switch:game 5330 ~0 5000 replace force

scoreboard players add #rg_boat_race_1_mod switch.data 1
execute if score #rg_boat_race_1_mod switch.data matches 29 in switch:game run kill @e[type=item,x=5171,y=100,z=5128,distance=..1000]
execute if score #rg_boat_race_1_mod switch.data matches 29 run scoreboard players add #rg_boat_race_1_y switch.data 1
execute if score #rg_boat_race_1_mod switch.data matches 29 run scoreboard players set #rg_boat_race_1_mod switch.data 0

kill @s

