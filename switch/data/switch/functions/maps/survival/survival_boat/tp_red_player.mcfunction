
scoreboard players add #s_survival_boat_red switch.data 1

execute if score #s_survival_boat_red switch.data matches 1 run tp @s 79059 125 79033 0 0

execute if score #s_survival_boat_red switch.data matches 1 run scoreboard players set #s_survival_boat_red switch.data 0

