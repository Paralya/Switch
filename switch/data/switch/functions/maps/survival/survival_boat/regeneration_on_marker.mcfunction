
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_survival_boat_y switch.data

execute if score #rg_survival_boat_mod switch.data matches 0 at @s run particle cloud 79010 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 0 at @s run clone 79000 ~ 79000 79021 ~ 79102 79000 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 1 at @s run particle cloud 79031 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 1 at @s run clone 79021 ~ 79000 79042 ~ 79102 79021 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 2 at @s run particle cloud 79052 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 2 at @s run clone 79042 ~ 79000 79063 ~ 79102 79042 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 3 at @s run particle cloud 79073 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 3 at @s run clone 79063 ~ 79000 79084 ~ 79102 79063 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 4 at @s run particle cloud 79094 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 4 at @s run clone 79084 ~ 79000 79105 ~ 79102 79084 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 5 at @s run particle cloud 79115 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 5 at @s run clone 79105 ~ 79000 79126 ~ 79102 79105 ~100 79000 replace force
execute if score #rg_survival_boat_mod switch.data matches 6 run kill @e[type=item,x=79063,y=0,z=79051,distance=..1000]

scoreboard players add #rg_survival_boat_mod switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players add #rg_survival_boat_y switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players set #rg_survival_boat_mod switch.data 0

kill @s

