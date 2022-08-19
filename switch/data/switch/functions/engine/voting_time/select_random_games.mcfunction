
summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[tag=switch.random] run function switch:engine/voting_time/get_random

scoreboard players set #wrong switch.data 0
execute if score #index switch.data matches 2.. if score #random switch.data = #game_1 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 3.. if score #random switch.data = #game_2 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 4.. if score #random switch.data = #game_3 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 5.. if score #random switch.data = #game_4 switch.data run scoreboard players add #wrong switch.data 1

execute if score #wrong switch.data matches 0 if score #index switch.data matches 2 run scoreboard players operation #game_2 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 3 run scoreboard players operation #game_3 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 4 run scoreboard players operation #game_4 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 5 run scoreboard players operation #game_5 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 run scoreboard players add #index switch.data 1

execute if score #index switch.data matches ..5 run function switch:engine/voting_time/select_random_games

