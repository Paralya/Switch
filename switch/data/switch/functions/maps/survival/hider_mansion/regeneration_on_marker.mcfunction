
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_hider_mansion_y switch.data

execute if score #rg_hider_mansion_mod switch.data matches 0 at @s run particle cloud 71008 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 0 at @s run clone 71000 ~ 71000 71017 ~ 71160 71000 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 1 at @s run particle cloud 71025 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 1 at @s run clone 71017 ~ 71000 71034 ~ 71160 71017 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 2 at @s run particle cloud 71042 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 2 at @s run clone 71034 ~ 71000 71051 ~ 71160 71034 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 3 at @s run particle cloud 71059 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 3 at @s run clone 71051 ~ 71000 71068 ~ 71160 71051 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 4 at @s run particle cloud 71076 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 4 at @s run clone 71068 ~ 71000 71085 ~ 71160 71068 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 5 at @s run particle cloud 71093 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 5 at @s run clone 71085 ~ 71000 71102 ~ 71160 71085 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 6 at @s run particle cloud 71110 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 6 at @s run clone 71102 ~ 71000 71119 ~ 71160 71102 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 7 at @s run particle cloud 71127 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 7 at @s run clone 71119 ~ 71000 71136 ~ 71160 71119 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 8 at @s run particle cloud 71144 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 8 at @s run clone 71136 ~ 71000 71153 ~ 71160 71136 ~100 71000 replace force
execute if score #rg_hider_mansion_mod switch.data matches 9 at @s run particle cloud 71161 ~100.5 71080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 9 at @s run clone 71153 ~ 71000 71170 ~ 71160 71153 ~100 71000 replace force

execute if score #rg_hider_mansion_mod switch.data matches 10 run kill @e[type=item,x=71085,y=0,z=71080,distance=..1000]
scoreboard players add #rg_hider_mansion_mod switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players add #rg_hider_mansion_y switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players set #rg_hider_mansion_mod switch.data 0

kill @s

