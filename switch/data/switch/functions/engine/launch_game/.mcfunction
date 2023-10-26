
gamerule sendCommandFeedback true

scoreboard players set #state switch.data 3
scoreboard players add total_games switch.last_total_games 1

function switch:engine/voting_time/update_votes

scoreboard players set #max switch.data 0
execute if score #vote_game_1 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_1 switch.data
execute if score #vote_game_2 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_2 switch.data
execute if score #vote_game_3 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_3 switch.data
execute if score #vote_game_4 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_4 switch.data
execute if score #vote_game_5 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_5 switch.data
execute if score #vote_game_6 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_6 switch.data

data modify storage switch:main voted_games set value []
data modify storage switch:main current_game set value ""
execute if score #vote_game_1 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[0]
execute if score #vote_game_2 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[1]
execute if score #vote_game_3 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[2]
execute if score #vote_game_4 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[3]
execute if score #vote_game_5 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[4]
execute if score #vote_game_6 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[5]

scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main voted_games
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game set from storage switch:main voted_games[0].id
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game_name set from storage switch:main voted_games[0].Name
execute if score #modulo_rand switch.data matches 1 store result score #game_1 switch.data run data get storage switch:main voted_games[0].index
execute if score #modulo_rand switch.data matches 2.. run function switch:engine/launch_game/get_random_max
execute if score #modulo_rand switch.data matches 2.. run tellraw @a[tag=!switch.detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Égalité entre plusieurs mode de jeux, choix aléatoire !\n"}]

weather clear
difficulty normal
scoreboard players reset #set_spec switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}
function #switch:signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!switch.detached] at @s run playsound ui.toast.in ambient @s

# Depending on the game, add a score to the player
function switch:engine/launch_game/add_played_stat with storage switch:main

