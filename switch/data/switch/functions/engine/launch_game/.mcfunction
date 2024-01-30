
gamerule sendCommandFeedback true

scoreboard players set #engine_state switch.data 3
scoreboard players add total_games switch.last_total_games 1

function switch:engine/voting_time/update_votes

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
execute if score #vote_game_6 switch.data > #max switch.data run scoreboard players operation #max switch.data = #vote_game_6 switch.data

data modify storage switch:main voted_games set value []
data modify storage switch:main current_game set value ""
execute if score #vote_game_1 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[0]
execute if score #vote_game_2 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[1]
execute if score #vote_game_3 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[2]
execute if score #vote_game_4 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[3]
execute if score #vote_game_5 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[4]
execute if score #vote_game_6 switch.data = #max switch.data run data modify storage switch:main voted_games append from storage switch:main selections[5]

execute store result score #modulo_rand switch.data run data get storage switch:main voted_games
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game set from storage switch:main voted_games[0].id
execute if score #modulo_rand switch.data matches 1 run data modify storage switch:main current_game_name set from storage switch:main voted_games[0].Name
execute if score #modulo_rand switch.data matches 1 store result score #game_1 switch.data run data get storage switch:main voted_games[0].index
execute if score #modulo_rand switch.data matches 2.. run function switch:engine/launch_game/get_random_max
execute if score #modulo_rand switch.data matches 2.. run tellraw @a[tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Égalité entre plusieurs mode de jeux, choix aléatoire !\n"}]

# Advancement
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"feed_fast"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"laser_game"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"mlg_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"de_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"thunder_spear"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"snowball_painter"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"coin_chaser"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"shoot_da_sheep"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute if score #max switch.data matches 8.. if data storage switch:main {current_game:"layers_2_teams"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10

# Add game to history
data modify storage switch:main history.games prepend from storage switch:main current_game

weather clear
difficulty normal
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #is_adventure switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}
function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5

# Depending on the game, add a score
function switch:engine/launch_game/add_played_stat with storage switch:main

