
#> switch:engine/launch_game/main
#
# @within	switch:engine/voting_time/tick
#

function switch:engine/voting_time/update_votes

# max_game is used by an advancement on launch (we exclude random)
scoreboard players set #max switch.data 0
scoreboard players set #max_game switch.data -10
execute if score #vote_game_1 switch.data > #max switch.data run scoreboard players set #max_game switch.data -1
execute if score #vote_game_1 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_1 switch.data
execute if score #vote_game_2 switch.data > #max switch.data run scoreboard players set #max_game switch.data -2
execute if score #vote_game_2 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_2 switch.data
execute if score #vote_game_3 switch.data > #max switch.data run scoreboard players set #max_game switch.data -3
execute if score #vote_game_3 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_3 switch.data
execute if score #vote_game_4 switch.data > #max switch.data run scoreboard players set #max_game switch.data -4
execute if score #vote_game_4 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_4 switch.data
execute if score #vote_game_5 switch.data > #max switch.data run scoreboard players set #max_game switch.data -5
execute if score #vote_game_5 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_5 switch.data
execute if score #vote_game_6 switch.data > #max switch.data run scoreboard players set #max_game switch.data -6
execute if score #vote_game_6 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_6 switch.data
execute if score #vote_game_7 switch.data > #max switch.data run scoreboard players set #max_game switch.data -7
execute if score #vote_game_7 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_7 switch.data
execute if score #vote_game_8 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_8 switch.data

data modify storage switch:main voted_games set value []
data modify storage switch:main current_game set value ""
execute if score #vote_game_1 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[0]
execute if score #vote_game_2 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[1]
execute if score #vote_game_3 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[2]
execute if score #vote_game_4 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[3]
execute if score #vote_game_5 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[4]
execute if score #vote_game_6 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[5]
execute if score #vote_game_7 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[6]
execute if score #vote_game_8 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[7]

execute store result score #modulo_rand switch.data run data get storage switch:main voted_games
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game set from storage switch:main voted_games[0].id
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game_name set from storage switch:main voted_games[0].name_fr
execute if score #modulo_rand switch.data matches 1 store result score #game_1 switch.data run data get storage switch:main voted_games[0].index
execute if score #modulo_rand switch.data matches 2.. run function switch:engine/launch_game/get_random_max
function switch:engine/translations/launch_game_

# Round 2: the winner is a game of the winning group, launch it
execute if score #vote_round switch.data matches 2 run return run function switch:engine/launch_game/transition

# Round 1: the winner is a group, resolve it (launch directly or start a second vote between its games)
function switch:engine/launch_game/resolve_group

