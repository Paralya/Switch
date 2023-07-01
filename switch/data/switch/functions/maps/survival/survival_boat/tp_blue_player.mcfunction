
scoreboard players add #s_survival_boat_blue switch.data 1

execute if score #s_survival_boat_blue switch.data matches 1 run tp @s 79067 125 79069 180 0

execute if score #s_survival_boat_blue switch.data matches 1.. run scoreboard players set #s_survival_boat_blue switch.data 0

