
gamerule sendCommandFeedback true

scoreboard players set #state switch.data 3
scoreboard players add #total_games switch.data 1

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
execute if score #modulo_rand switch.data matches 2.. run tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Égalité entre plusieurs mode de jeux, choix aléatoire !\n"}]

spawnpoint @a 0 74 0
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.max_health base set 20.0
function #switch:signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a at @s run playsound ui.toast.in ambient @s

# Depending on the game, add a score to the player
execute if data storage switch:main {current_game:"pitch_creep"} run scoreboard players add @a switch.stats.played.pitch_creep 1
execute if data storage switch:main {current_game:"laser_game"} run scoreboard players add @a switch.stats.played.laser_game 1
execute if data storage switch:main {current_game:"warden_escape"} run scoreboard players add @a switch.stats.played.warden_escape 1
execute if data storage switch:main {current_game:"pitchout"} run scoreboard players add @a switch.stats.played.pitchout 1
execute if data storage switch:main {current_game:"glassrunner"} run scoreboard players add @a switch.stats.played.glassrunner 1
execute if data storage switch:main {current_game:"creeper_apocalypse"} run scoreboard players add @a switch.stats.played.creeper_apocalypse 1
execute if data storage switch:main {current_game:"traitors_game"} run scoreboard players add @a switch.stats.played.traitors_game 1
execute if data storage switch:main {current_game:"boat_race"} run scoreboard players add @a switch.stats.played.boat_race 1
execute if data storage switch:main {current_game:"spectres_game"} run scoreboard players add @a switch.stats.played.spectres_game 1
execute if data storage switch:main {current_game:"kart_racer"} run scoreboard players add @a switch.stats.played.kart_racer 1
execute if data storage switch:main {current_game:"rush_the_point"} run scoreboard players add @a switch.stats.played.rush_the_point 1
execute if data storage switch:main {current_game:"spleef"} run scoreboard players add @a switch.stats.played.spleef 1
execute if data storage switch:main {current_game:"de_a_coudre"} run scoreboard players add @a switch.stats.played.de_a_coudre 1
execute if data storage switch:main {current_game:"feed_fast"} run scoreboard players add @a switch.stats.played.feed_fast 1
execute if data storage switch:main {current_game:"mlg_a_coudre"} run scoreboard players add @a switch.stats.played.mlg_a_coudre 1
execute if data storage switch:main {current_game:"protect_the_king"} run scoreboard players add @a switch.stats.played.protect_the_king 1
execute if data storage switch:main {current_game:"castagne"} run scoreboard players add @a switch.stats.played.castagne 1
execute if data storage switch:main {current_game:"layers_2_teams"} run scoreboard players add @a switch.stats.played.layers_2_teams 1
execute if data storage switch:main {current_game:"layers_4_teams"} run scoreboard players add @a switch.stats.played.layers_4_teams 1
execute if data storage switch:main {current_game:"thunder_spear"} run scoreboard players add @a switch.stats.played.thunder_spear 1
execute if data storage switch:main {current_game:"tnt_run"} run scoreboard players add @a switch.stats.played.tnt_run 1
execute if data storage switch:main {current_game:"sheepwars"} run scoreboard players add @a switch.stats.played.sheepwars 1
execute if data storage switch:main {current_game:"block_party"} run scoreboard players add @a switch.stats.played.block_party 1
execute if data storage switch:main {current_game:"replicate_the_build"} run scoreboard players add @a switch.stats.played.replicate_the_build 1

