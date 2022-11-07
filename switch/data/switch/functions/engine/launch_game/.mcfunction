
scoreboard players set #state switch.data 3
scoreboard players add #total_games switch.data 1

function switch:engine/voting_time/update_votes

scoreboard players set #max switch.data 0
execute if score #vote_game_1 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_1 switch.data
execute if score #vote_game_2 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_2 switch.data
execute if score #vote_game_3 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_3 switch.data
execute if score #vote_game_4 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_4 switch.data
execute if score #vote_game_5 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_5 switch.data

data modify storage switch:main voted_games set value []
data modify storage switch:main current_game set value ""
execute if score #vote_game_1 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[0]
execute if score #vote_game_2 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[1]
execute if score #vote_game_3 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[2]
execute if score #vote_game_4 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[3]
execute if score #vote_game_5 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[4]

scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main voted_games
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game set from storage switch:main voted_games[0].id
execute if score #modulo_rand switch.data matches 1 store result score #game_1 switch.data run data get storage switch:main voted_games[0].index
execute if score #modulo_rand switch.data matches 2.. run function switch:engine/launch_game/get_random_max

spawnpoint @a 0 69 0
function #switch:events/start

execute as @e[limit=8] as @a at @s run playsound ui.toast.in ambient @s
