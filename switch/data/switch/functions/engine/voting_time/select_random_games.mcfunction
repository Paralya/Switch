
function switch:utils/get_random/

scoreboard players set #wrong switch.data 0
function switch:engine/voting_time/get/min_players
function switch:engine/voting_time/get/max_players
execute if score #index switch.data matches 1 if score #player_count switch.data < #min_players switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 1 if score #player_count switch.data > #max_players switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 2.. if score #random switch.data = #game_1 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 3.. if score #random switch.data = #game_2 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 4.. if score #random switch.data = #game_3 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 5.. if score #random switch.data = #game_4 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 6.. if score #random switch.data = #game_5 switch.data run scoreboard players add #wrong switch.data 1
execute if score #wrong switch.data matches 0 if score #player_count switch.data < #min_players switch.data run scoreboard players add #wrong switch.data 1
execute if score #wrong switch.data matches 0 if score #player_count switch.data > #max_players switch.data run scoreboard players add #wrong switch.data 1

execute if score #wrong switch.data matches 1 if score #index switch.data matches 1 run scoreboard players operation #game_1 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 2 run scoreboard players operation #game_2 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 3 run scoreboard players operation #game_3 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 4 run scoreboard players operation #game_4 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 5 run scoreboard players operation #game_5 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 6 run scoreboard players operation #game_6 switch.data = #random switch.data
execute if score #index switch.data matches 2.. if score #wrong switch.data matches 0 run scoreboard players add #index switch.data 1
execute if score #index switch.data matches 1 run scoreboard players add #index switch.data 1

scoreboard players remove #max_tries switch.data 1
execute if score #max_tries switch.data matches 1.. if score #index switch.data matches ..6 run function switch:engine/voting_time/select_random_games

