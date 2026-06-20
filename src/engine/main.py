
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import write_function

from .translations import write_translations


@stp.measure_time(message="Generated engine files")
def main() -> None:
	path: str = "switch:engine"
	write_translations()

	# /add_money
	write_function(f"{path}/add_money", """
# Money to add
scoreboard players set #add switch.money 10
execute if score #add_override switch.money matches 1.. run scoreboard players operation #add switch.money = #add_override switch.money
execute if score #add_override switch.money matches 1.. run scoreboard players reset #add_override switch.money

# Money bonus multiplier
scoreboard players operation #bonus switch.money = #add switch.money
scoreboard players operation #bonus switch.money *= @s switch.money_bonus
scoreboard players operation #bonus switch.money /= #100 switch.data
scoreboard players operation #add switch.money += #bonus switch.money

# Apply money
scoreboard players operation @s switch.money += #add switch.money

# Messages
execute store result score #random switch.data run random value 0..5
function switch:engine/translations/add_money

playsound entity.player.levelup ambient @s ^ ^ ^ .2

execute if score @s switch.money matches 400.. run advancement grant @s only switch:visible/3
""")

	# /add_time
	write_function(f"{path}/add_time", """
# Add time & playsound
scoreboard players add #voting_timer switch.data 300
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
function switch:engine/translations/add_time
""")

	# /add_win
	write_function(f"{path}/add_win", """
execute if score #test_mode switch.data matches 1.. run return 1

scoreboard players add @s switch.win_streak 6
execute if score @s switch.win_streak matches 5.. unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/30
scoreboard players add @s switch.stats.wins 1
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/4
function switch:engine/add_win_macro with storage switch:main
function switch:engine/add_money
""")

	# /add_win_macro
	write_function(f"{path}/add_win_macro", """
$scoreboard players add @s switch.stats.wins.$(current_game) 1
""")

	# /check_coupdetat
	write_function(f"{path}/check_coupdetat", """
# Check if there is a coup d'état in progress, if so, check if the vote is successful (>= 50% of players)
execute store result score #coupdetat_votes switch.data if entity @a[scores={switch.trigger.coupdetat_vote=-1},tag=!detached]
scoreboard players operation #percentage switch.data = #coupdetat_votes switch.data
scoreboard players operation #percentage switch.data *= #100 switch.data
scoreboard players operation #percentage switch.data /= #nb_attached switch.data

# If the number of votes is < 50% of the players, the coup d'état is unsuccessful
execute if score #percentage switch.data matches ..49 run scoreboard players set #coupdetat switch.data 0
execute if score #percentage switch.data matches ..49 as @a[tag=switch.coupdetat] run function switch:engine/translations/check_coupdetat
execute if score #percentage switch.data matches ..49 run tag @a[tag=switch.coupdetat] remove switch.coupdetat

# Else, everything's fine, the coup d'état is successful, don't need to do anything since `switch:engine/start` will handle it
""")

	# /disable
	write_function(f"{path}/disable", """
scoreboard players set #engine_state switch.data 3
scoreboard players set #disable switch.data 1
execute in switch:game run function switch:engine/stop

time set 6000

scoreboard players set #engine_state switch.data -1
schedule clear switch:engine/voting_time/tick
""")

	# /force_start_macro
	write_function(f"{path}/force_start_macro", """
# Stop everything
function switch:engine/disable

# Set the current game
$data modify storage switch:main current_game set value "$(id)"
$data modify storage switch:main current_game_name set from storage switch:main minigames[{id:"$(id)"}].name_fr
$execute store result score #game_1 switch.data run data get storage switch:main minigames[{id:"$(id)"}].index
tag @s remove detached

# Tellraw message (unless removed)
execute unless score #no_force_start_msg switch.data matches 1 run function switch:engine/translations/force_start_macro
scoreboard players reset #no_force_start_msg switch.data

# Start the game with the right state
scoreboard players set #engine_state switch.data 3
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #dont_regenerate switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player,tag=!detached]"}
function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5
""")

	# /launch_game/add_played_stat
	write_function(f"{path}/launch_game/add_played_stat", """
# If test mode is enabled, stop right now
execute if score #test_mode switch.data matches 1.. run return 1

# Increment the played stat for the current game for all players
$execute if data storage switch:main {current_game:"$(current_game)"} run scoreboard players add @a[tag=!detached] switch.stats.played.$(current_game) 1

# Increment the played stat for all players
scoreboard players add @a[tag=!detached] switch.stats.played 1

# Grant the advancement if the player has played 100 times
advancement grant @a[tag=!detached,scores={switch.stats.played=100..}] only switch:visible/2

# Reset the current game time_since_last_play
$data modify storage switch:main history.time_since_last_play.$(current_game) set value 0

# Increment every minigame their time_since_last_play value
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:engine/launch_game/increment_time_since_last_play with storage switch:temp copy[0]
""")

	# /launch_game/get_id
	write_function(f"{path}/launch_game/get_id", """
execute if score #index switch.data = #random switch.data run data modify storage switch:main current_game set from storage switch:main voted_games[0].id
execute if score #index switch.data = #random switch.data run data modify storage switch:main current_game_name set from storage switch:main voted_games[0].name_fr
execute if score #index switch.data = #random switch.data store result score #game_1 switch.data run data get storage switch:main voted_games[0].index

scoreboard players add #index switch.data 1
data remove storage switch:main voted_games[0]
execute if data storage switch:main voted_games[0] if data storage switch:main {current_game:""} run function switch:engine/launch_game/get_id
""")

	# /launch_game/get_random_max
	write_function(f"{path}/launch_game/get_random_max", """
function switch:utils/get_random/main

scoreboard players set #index switch.data 0
function switch:engine/launch_game/get_id
""")

	# /launch_game/increment_time_since_last_play
	write_function(f"{path}/launch_game/increment_time_since_last_play", """
# Increment the current game time_since_last_play
scoreboard players set #temp switch.data 0
$execute store result score #temp switch.data run data get storage switch:main history.time_since_last_play.$(id)
scoreboard players add #temp switch.data 1
$execute store result storage switch:main history.time_since_last_play.$(id) int 1 run scoreboard players get #temp switch.data

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/launch_game/increment_time_since_last_play with storage switch:temp copy[0]
""")

	# /launch_game/main
	write_function(f"{path}/launch_game/main", """
gamerule minecraft:send_command_feedback true

scoreboard players set #engine_state switch.data 3
scoreboard players add total_games switch.last_total_games 1

function switch:engine/voting_time/update_votes

# max_game is used an advancement below (we exclude random)
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

# Advancement
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"feed_fast"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"mlg_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"de_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"thunder_spear"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"snowball_painter"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"coin_chaser"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"shoot_da_sheep"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"layers_2_teams"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10

# Add game to history
data modify storage switch:main history.games prepend from storage switch:main current_game

weather clear
difficulty normal
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #dont_regenerate switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}
execute in switch:game run function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5

# Depending on the game, add a score
function switch:engine/launch_game/add_played_stat with storage switch:main
""")

	# /log_message/apply
	write_function(f"{path}/log_message/apply", """
#> switch:engine/log_message/apply
#
# @executed			Don't care
#
# @input storage	switch:main MessageToLog
#
# @description		Interprets the message and logs it to the console
#

# Put the message into a sign
execute in minecraft:overworld run setblock 0 2 0 oak_sign
execute in minecraft:overworld run data modify block 0 2 0 front_text.messages[0] set value {"nbt":"MessageToLog","storage":"switch:main","interpret":true}
execute in minecraft:overworld run data modify storage switch:main MessageToLog set from block 0 2 0 front_text.messages[0]
execute in minecraft:overworld run setblock 0 2 0 air

# Summon wolf
execute in minecraft:overworld positioned 0 2 0 summon wolf run function switch:engine/log_message/on_wolf
""")

	# /log_message/on_wolf
	write_function(f"{path}/log_message/on_wolf", """
#> switch:engine/log_message/on_wolf
#
# @within			switch:engine/log_message/apply
# @executed			as temporary wolf
#
# @input storage	switch:main MessageToLog
#
# @description		Function executed on the wolf summoned to log the message into the console.
#

data modify entity @s CustomName set from storage switch:main MessageToLog
kill @s
""")

	# /restart
	write_function(f"{path}/restart", """
# For each player, update their stats storage, then sort player stats arrays
execute as @a run function switch:player/update_stats_storage/main
function switch:stats/async/sort_player_stats

# Stop the engine and launch stop signal
execute in switch:game run function switch:engine/stop

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
function switch:engine/translations/restart

# Start the engine and launch start signal
execute in switch:game run function switch:engine/start
""")

	# /signals/inventory_changed
	write_function(f"{path}/signals/inventory_changed", """
# Revoke inventory_changed advancement
advancement revoke @s only switch:inventory_changed

# Launch inventory_changed signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_inventory_changed with storage switch:main input
""")

	# /signals/joined
	write_function(f"{path}/signals/joined", """
# Launch joined signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_joined with storage switch:main input
""")

	# /signals/macro_inventory_changed
	write_function(f"{path}/signals/macro_inventory_changed", """
$execute in switch:game run function switch:modes/$(id)/calls/inventory_changed
""")

	# /signals/macro_joined
	write_function(f"{path}/signals/macro_joined", """
$execute in switch:game run function switch:modes/$(id)/calls/joined
""")

	# /signals/macro_second
	write_function(f"{path}/signals/macro_second", """
$execute in switch:game run function switch:modes/$(id)/calls/second
""")

	# /signals/macro_start
	write_function(f"{path}/signals/macro_start", """
# Grant the minigame starting pop-up to everyone
$advancement grant @a[scores={switch.lang=0}] only switch:pop_ups/$(id)_fr
$advancement grant @a[scores={switch.lang=1}] only switch:pop_ups/$(id)_en

# Call the start function
$execute in switch:game run function switch:modes/$(id)/calls/start
""")

	# /signals/macro_stop
	write_function(f"{path}/signals/macro_stop", """
$execute in switch:game run function switch:modes/$(id)/calls/stop
""")

	# /signals/macro_tick
	write_function(f"{path}/signals/macro_tick", """
$execute in switch:game run function switch:modes/$(id)/calls/tick
""")

	# /signals/second
	write_function(f"{path}/signals/second", """
# Launch second signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_second with storage switch:main input
""")

	# /signals/start
	write_function(f"{path}/signals/start", """
# Log message
data modify storage switch:main MessageToLog set value [{"text": "Lancement d'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":true},{"text":"` !"}]
function switch:engine/log_message/apply

# Clear voting message
schedule clear switch:engine/voting_time/schedule_message

# Repair dependencies libraries
function #switch:dependencies

# Launch start signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_start with storage switch:main input

# Start map intro
function switch:maps/intro_spread

# Increment total games played
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/increment_minigame_played with storage switch:main input
""")

	# /signals/stop
	write_function(f"{path}/signals/stop", """
# Log message
data modify storage switch:main MessageToLog set value [{"text": "Arret d'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":true},{"text":"` !"}]
function switch:engine/log_message/apply

# Launch stop signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_stop with storage switch:main input
""")

	# /signals/tick
	write_function(f"{path}/signals/tick", """
# Launch tick signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_tick with storage switch:main input
""")

	# /start
	write_function(f"{path}/start", """
# Get the number of players currently attached to the switch engine
execute store result score #nb_attached switch.data if entity @a[tag=!detached]

# Check if there is a coup d'état in progress, if it's valid, stop the vote by launching the game mode
execute if score #coupdetat switch.data matches 1 run function switch:engine/check_coupdetat
execute if score #coupdetat switch.data matches 1 as @n[tag=switch.coupdetat] in switch:game run return run function switch:modes/_coupdetat/_force_start

# Check if there are enough players to start the game
execute if score #nb_attached switch.data >= #min_required switch.data run function switch:engine/voting_time/main

# Else,
execute unless score #nb_attached switch.data >= #min_required switch.data run gamerule minecraft:send_command_feedback true
execute unless score #nb_attached switch.data >= #min_required switch.data run gamemode spectator @a[tag=!detached]
execute unless score #nb_attached switch.data >= #min_required switch.data in minecraft:overworld as @a[tag=!detached] unless entity @s[x=0,y=69,z=0,distance=..200] run tp @s 0 69 0
""")

	# /stop
	write_function(f"{path}/stop", """
execute unless score #engine_state switch.data matches 3 unless score #disable switch.data matches 1 run tp @a[tag=!detached] 0 69 0
scoreboard players set #engine_state switch.data 0
scoreboard players set #cut_clean switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard players set #set_spec switch.data 1
function switch:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list switch.stats.wins
execute unless score #dont_regenerate switch.data matches 1 unless score #already_regenerated switch.data matches 1 run function switch:maps/regenerate_map
scoreboard players reset #dont_regenerate switch.data

scoreboard objectives setdisplay sidebar
scoreboard players reset #disable switch.data
scoreboard players reset * switch.alive
execute in minecraft:overworld run function switch:utils/reset_gamerules
execute in switch:game run function switch:utils/reset_gamerules

function switch:engine/signals/stop
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}

# Update the stats of the minigame
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input
""")

	# /voting_time/add_option
	write_function(f"{path}/voting_time/add_option", """
# Add the current index to the options
execute store result storage switch:temp index int 1 run scoreboard players get #fill_index switch.data
data modify storage bs:in random.weighted_choice.options append from storage switch:temp index

# Increment the index
scoreboard players add #fill_index switch.data 1

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_option
""")

	# /voting_time/add_weights
	write_function(f"{path}/voting_time/add_weights", """
# Add time_since_last_play to the weights
data modify storage switch:temp weight set value 1
$data modify storage switch:temp weight set from storage switch:main history.time_since_last_play.$(id)
data modify storage bs:in random.weighted_choice.weights append from storage switch:temp weight

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_weights with storage switch:temp copy[0]
""")

	# /voting_time/get/index_information
	write_function(f"{path}/voting_time/get/index_information", """
scoreboard players set #success switch.data 0
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 2 if score #list_index switch.data = #game_2 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 3 if score #list_index switch.data = #game_3 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 4 if score #list_index switch.data = #game_4 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 5 if score #list_index switch.data = #game_5 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 6 if score #list_index switch.data = #game_6 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 7 if score #list_index switch.data = #game_7 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 8 if score #list_index switch.data = #game_8 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #success switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_information
""")

	# /voting_time/get/index_max_players
	write_function(f"{path}/voting_time/get/index_max_players", """
execute unless score #index switch.data matches 1 if score #list_index switch.data = #random switch.data store result score #max_players switch.data run data get storage switch:main copy[0].max_players
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store result score #max_players switch.data run data get storage switch:main copy[0].max_players

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #max_players switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_max_players
""")

	# /voting_time/get/index_min_players
	write_function(f"{path}/voting_time/get/index_min_players", """
execute unless score #index switch.data matches 1 if score #list_index switch.data = #random switch.data store result score #min_players switch.data run data get storage switch:main copy[0].min_players
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store result score #min_players switch.data run data get storage switch:main copy[0].min_players

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #min_players switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/information
	write_function(f"{path}/voting_time/get/information", """
scoreboard players set #list_index switch.data 1
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_information

scoreboard players add #index switch.data 1
execute if score #index switch.data matches ..8 run function switch:engine/voting_time/get/information
""")

	# /voting_time/get/max_players
	write_function(f"{path}/voting_time/get/max_players", """
scoreboard players set #max_players switch.data 0
scoreboard players set #list_index switch.data 1
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_max_players
execute if score #max_players switch.data matches -1 run scoreboard players set #max_players switch.data 2147483647
""")

	# /voting_time/get/min_players
	write_function(f"{path}/voting_time/get/min_players", """
scoreboard players set #min_players switch.data 0
scoreboard players set #list_index switch.data 1
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/random
	write_function(f"{path}/voting_time/get/random", """
scoreboard players set #random switch.data 0
execute store result score #random switch.data run data get entity @s UUID[0]
scoreboard players operation #random switch.data %= #modulo_rand switch.data
scoreboard players add #random switch.data 1
kill @s
""")

	# /voting_time/main
	write_function(f"{path}/voting_time/main", """
gamerule minecraft:send_command_feedback false
scoreboard players set #engine_state switch.data 2
scoreboard players set #voting_timer switch.data 399

execute store result score #modulo_rand switch.data run data get storage switch:main minigames

# Setup the random choice options
scoreboard players set #fill_index switch.data 1
data modify storage bs:in random.weighted_choice.options set value []
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_option

# Setup the weights list
data modify storage bs:in random.weighted_choice.weights set value []
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_weights with storage switch:temp copy[0]


# Set the vote counts to 0
scoreboard players add #game_1 switch.data 0
scoreboard players set #game_2 switch.data 0
scoreboard players set #game_3 switch.data 0
scoreboard players set #game_4 switch.data 0
scoreboard players set #game_5 switch.data 0
scoreboard players set #game_6 switch.data 0
scoreboard players set #game_7 switch.data 0
scoreboard players set #game_8 switch.data 0
scoreboard players set #index switch.data 1

scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!detached]
scoreboard players set #max_tries switch.data 1000
function switch:engine/voting_time/select_random_games

data modify storage switch:main selections set value []

scoreboard players set #index switch.data 1
function switch:engine/voting_time/get/information

scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set #vote_game_6 switch.data 0
scoreboard players set #vote_game_7 switch.data 0
scoreboard players set #vote_game_8 switch.data 0
scoreboard players set @a switch.trigger.game_vote 0
execute as @a[tag=!detached] run function switch:engine/voting_time/message

schedule function switch:engine/voting_time/tick 1t
""")

	# /voting_time/message
	write_function(f"{path}/voting_time/message", r"""
data modify storage switch:main msg_votes set value [" vote", " vote", " vote", " vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 switch.data matches 2.. run data modify storage switch:main msg_votes[0] set value " votes"
execute if score #vote_game_2 switch.data matches 2.. run data modify storage switch:main msg_votes[1] set value " votes"
execute if score #vote_game_3 switch.data matches 2.. run data modify storage switch:main msg_votes[2] set value " votes"
execute if score #vote_game_4 switch.data matches 2.. run data modify storage switch:main msg_votes[3] set value " votes"
execute if score #vote_game_5 switch.data matches 2.. run data modify storage switch:main msg_votes[4] set value " votes"
execute if score #vote_game_6 switch.data matches 2.. run data modify storage switch:main msg_votes[5] set value " votes"
execute if score #vote_game_7 switch.data matches 2.. run data modify storage switch:main msg_votes[6] set value " votes"
execute if score #vote_game_8 switch.data matches 2.. run data modify storage switch:main msg_votes[7] set value " votes"

# Edit the last vote to make it hidden
data modify storage switch:main selections[7].lore_fr set value ["",{"text":"[Aléatoire]\n","color":"yellow"},{"text":"Jeu totalement aléatoire qui n'est pas\n"},{"text":"présent parmi les 7 au dessus"}]
data modify storage switch:main selections[7].name_fr set value "Aléatoire"
data modify storage switch:main selections[7].lore_en set value ["",{"text":"[Random]\n","color":"yellow"},{"text":"Game completely random that is not\n"},{"text":"present among the 7 above"}]
data modify storage switch:main selections[7].name_en set value "Random"

# Tellraw
function switch:engine/translations/voting_time_message
scoreboard players reset #for_tutorial switch.data
""")

	# /voting_time/player_join
	write_function(f"{path}/voting_time/player_join", """
clear @s[tag=!convention.debug]
effect clear @s
gamemode spectator @s[tag=!convention.debug]
tp @s[tag=!convention.debug] 0 169 0
tp @s[tag=!convention.debug] @r[tag=!detached]

function switch:engine/voting_time/message
""")

	# /voting_time/schedule_message
	write_function(f"{path}/voting_time/schedule_message", """
execute as @a[tag=!detached] run function switch:engine/voting_time/message
""")

	# /voting_time/select_random_games
	write_function(f"{path}/voting_time/select_random_games", """
# Randomly select a minigame based on weights
execute in minecraft:overworld run function #bs.random:weighted_choice
execute store result score #random switch.data run data get storage bs:out random.weighted_choice

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
execute if score #index switch.data matches 7.. if score #random switch.data = #game_6 switch.data run scoreboard players add #wrong switch.data 1
execute if score #index switch.data matches 8.. if score #random switch.data = #game_7 switch.data run scoreboard players add #wrong switch.data 1
execute if score #wrong switch.data matches 0 if score #player_count switch.data < #min_players switch.data run scoreboard players add #wrong switch.data 1
execute if score #wrong switch.data matches 0 if score #player_count switch.data > #max_players switch.data run scoreboard players add #wrong switch.data 1

execute if score #wrong switch.data matches 1 if score #index switch.data matches 1 run scoreboard players operation #game_1 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 2 run scoreboard players operation #game_2 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 3 run scoreboard players operation #game_3 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 4 run scoreboard players operation #game_4 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 5 run scoreboard players operation #game_5 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 6 run scoreboard players operation #game_6 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 7 run scoreboard players operation #game_7 switch.data = #random switch.data
execute if score #wrong switch.data matches 0 if score #index switch.data matches 8 run scoreboard players operation #game_8 switch.data = #random switch.data
execute if score #index switch.data matches 2.. if score #wrong switch.data matches 0 run scoreboard players add #index switch.data 1
execute if score #index switch.data matches 1 run scoreboard players add #index switch.data 1

scoreboard players remove #max_tries switch.data 1
execute if score #max_tries switch.data matches 1.. if score #index switch.data matches ..8 run function switch:engine/voting_time/select_random_games
""")

	# /voting_time/speed_up
	write_function(f"{path}/voting_time/speed_up", """
execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
function switch:engine/translations/voting_time_speed_up
scoreboard players set #voting_timer switch.data 99
""")

	# /voting_time/tick
	write_function(f"{path}/voting_time/tick", """
# Return if not in voting state (2)
execute unless score #engine_state switch.data matches 2 run return 1

# Check for new votes and update
scoreboard players set #success switch.data 0
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=1..}] run function switch:engine/voting_time/update_votes
execute if score #success switch.data matches 1 run schedule function switch:engine/voting_time/schedule_message 1s replace

# Count total players and votes
scoreboard players set #vote_count switch.data 0
scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!detached]
execute store result score #vote_count switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}]
# Speed up voting if everyone has voted and more than 5 seconds left
execute if score #voting_timer switch.data matches 100.. if score #player_count switch.data = #vote_count switch.data run function switch:engine/voting_time/speed_up

# Decrease timer if at least one vote exists
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] run scoreboard players remove #voting_timer switch.data 1

# Calculate and display remaining time in seconds
scoreboard players set #remaining switch.data 0
scoreboard players operation #remaining switch.data = #voting_timer switch.data
scoreboard players operation #remaining switch.data /= #20 switch.data
scoreboard players add #remaining switch.data 1
function switch:engine/translations/voting_time_tick

# End of voting sequence (kill players to remove arrows for example)
execute if score #voting_timer switch.data matches 12 as @a[tag=!detached] run function switch:utils/black_transition
# execute if score #voting_timer switch.data matches 1 run scoreboard players remove @a[tag=!detached] switch.stats.deaths 1
# execute if score #voting_timer switch.data matches 1 run kill @a[tag=!detached]
execute if score #voting_timer switch.data matches 0 run function switch:engine/launch_game/main

# Schedule next tick if timer hasn't expired
execute if score #voting_timer switch.data matches 1.. run schedule function switch:engine/voting_time/tick 1t
""")

	# /voting_time/update_votes
	write_function(f"{path}/voting_time/update_votes", """
scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set #vote_game_6 switch.data 0
scoreboard players set #vote_game_7 switch.data 0
scoreboard players set #vote_game_8 switch.data 0

tag @a[tag=!detached,scores={switch.trigger.game_vote=1..}] add switch.temp
execute as @a[tag=switch.temp] at @s run playsound ui.button.click ambient @s
scoreboard players operation @a[tag=switch.temp] switch.trigger.game_vote *= #-1 switch.data
execute store result score #vote_game_1 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-1}]
execute store result score #vote_game_2 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-2}]
execute store result score #vote_game_3 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-3}]
execute store result score #vote_game_4 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-4}]
execute store result score #vote_game_5 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-5}]
execute store result score #vote_game_6 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-6}]
execute store result score #vote_game_7 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-7}]
execute store result score #vote_game_8 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-8}]

scoreboard players set #success switch.data 1

# Update the message for the player who just voted
execute as @a[tag=switch.temp] run function switch:engine/voting_time/message
tag @a[tag=switch.temp] remove switch.temp
""")

