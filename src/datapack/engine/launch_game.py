# Imports
from stewbeet import Mem, write_function


def write_launch_game() -> None:
	""" Write the functions that pick, announce and launch the voted game. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"

	# /launch_game/add_played_stat
	write_function(f"{path}/launch_game/add_played_stat", f"""
# If test mode is enabled, stop right now
execute if score #test_mode {ns}.data matches 1.. run return 1

# Increment the played stat for the current game for all players
$execute if data storage {ns}:main {{current_game:"$(current_game)"}} run scoreboard players add @a[tag=!detached] {ns}.stats.played.$(current_game) 1

# Increment the played stat for all players
scoreboard players add @a[tag=!detached] {ns}.stats.played 1

# Grant the advancement if the player has played 100 times
advancement grant @a[tag=!detached,scores={{{ns}.stats.played=100..}}] only {ns}:visible/2

# Reset the current group time_since_last_play (voting weights are per group)
$data modify storage {ns}:main history.time_since_last_play.$(current_group) set value 0

# Increment every group their time_since_last_play value
data modify storage {ns}:temp copy set from storage {ns}:main groups
execute if data storage {ns}:temp copy[0] run function {ns}:engine/launch_game/increment_time_since_last_play with storage {ns}:temp copy[0]
""")

	# /launch_game/get_id
	write_function(f"{path}/launch_game/get_id", f"""
execute if score #index {ns}.data = #random {ns}.data run data modify storage {ns}:main current_game set from storage {ns}:main voted_games[0].id
execute if score #index {ns}.data = #random {ns}.data run data modify storage {ns}:main current_game_name set from storage {ns}:main voted_games[0].name_fr
execute if score #index {ns}.data = #random {ns}.data store result score #game_1 {ns}.data run data get storage {ns}:main voted_games[0].index

scoreboard players add #index {ns}.data 1
data remove storage {ns}:main voted_games[0]
execute if data storage {ns}:main voted_games[0] if data storage {ns}:main {{current_game:""}} run function {ns}:engine/launch_game/get_id
""")

	# /launch_game/get_random_max
	write_function(f"{path}/launch_game/get_random_max", f"""
function {ns}:utils/get_random/main

scoreboard players set #index {ns}.data 0
function {ns}:engine/launch_game/get_id
""")

	# /launch_game/increment_time_since_last_play
	write_function(f"{path}/launch_game/increment_time_since_last_play", f"""
# Increment the current game time_since_last_play
scoreboard players set #temp {ns}.data 0
$execute store result score #temp {ns}.data run data get storage {ns}:main history.time_since_last_play.$(id)
scoreboard players add #temp {ns}.data 1
$execute store result storage {ns}:main history.time_since_last_play.$(id) int 1 run scoreboard players get #temp {ns}.data

# Continue loop until the list is empty
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:engine/launch_game/increment_time_since_last_play with storage {ns}:temp copy[0]
""")

	# /launch_game/main
	voted_append: str = "\n".join(
		f"execute if score #vote_game_{i} {ns}.data = #max {ns}.data run data modify storage {ns}:main voted_games append from storage {ns}:main selections[{i - 1}]"
		for i in range(1, 9)
	)
	# Modes that grant the "you voted for the winning game" advancement (switch:visible/10).
	# Add a mode id here to include it; no need to copy a full command line anymore.
	vote_win_advancement_modes: tuple[str, ...] = (
		"feed_fast", "mlg_a_coudre", "de_a_coudre", "thunder_spear",
		"snowball_painter", "coin_chaser", "shoot_da_sheep", "layers_2_teams",
	)
	vote_win_advancements: str = "\n".join(
		f'execute unless score #test_mode {ns}.data matches 1 if score #max {ns}.data matches 8.. if data storage {ns}:main {{current_game:"{mode}"}} as @a[tag=!detached] if score @s {ns}.trigger.game_vote = #max_game {ns}.data run advancement grant @s only {ns}:visible/10'
		for mode in vote_win_advancement_modes
	)
	write_function(f"{path}/launch_game/main", f"""
function {ns}:engine/voting_time/update_votes

# max_game is used by an advancement on launch (we exclude random)
scoreboard players set #max {ns}.data 0
scoreboard players set #max_game {ns}.data -10
execute if score #vote_game_1 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -1
execute if score #vote_game_1 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_1 {ns}.data
execute if score #vote_game_2 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -2
execute if score #vote_game_2 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_2 {ns}.data
execute if score #vote_game_3 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -3
execute if score #vote_game_3 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_3 {ns}.data
execute if score #vote_game_4 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -4
execute if score #vote_game_4 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_4 {ns}.data
execute if score #vote_game_5 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -5
execute if score #vote_game_5 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_5 {ns}.data
execute if score #vote_game_6 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -6
execute if score #vote_game_6 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_6 {ns}.data
execute if score #vote_game_7 {ns}.data > #max {ns}.data run scoreboard players set #max_game {ns}.data -7
execute if score #vote_game_7 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_7 {ns}.data
execute if score #vote_game_8 {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #vote_game_8 {ns}.data

data modify storage {ns}:main voted_games set value []
data modify storage {ns}:main current_game set value ""
{voted_append}

execute store result score #modulo_rand {ns}.data run data get storage {ns}:main voted_games
execute if score #modulo_rand {ns}.data matches 1 run data modify storage {ns}:main current_game set from storage {ns}:main voted_games[0].id
execute if score #modulo_rand {ns}.data matches 1 run data modify storage {ns}:main current_game_name set from storage {ns}:main voted_games[0].name_fr
execute if score #modulo_rand {ns}.data matches 1 store result score #game_1 {ns}.data run data get storage {ns}:main voted_games[0].index
execute if score #modulo_rand {ns}.data matches 2.. run function {ns}:engine/launch_game/get_random_max
function {ns}:engine/translations/launch_game_

# Round 2: the winner is a game of the winning group, launch it
execute if score #vote_round {ns}.data matches 2 run return run function {ns}:engine/launch_game/transition

# Round 1: the winner is a group, resolve it (launch directly or start a second vote between its games)
function {ns}:engine/launch_game/resolve_group
""")

	# /launch_game/transition (the winning game is known: transition screen before launching, to be replaced by an animation explaining the mode)
	write_function(f"{path}/launch_game/transition", f"""
# Fade the screen to black (fully black when the game launches)
execute as @a[tag=!detached] run function {ns}:utils/black_transition

# Launch the game once the screen is black
schedule function {ns}:engine/launch_game/launch 12t
""")

	# /launch_game/resolve_group
	write_function(f"{path}/launch_game/resolve_group", f"""
# The winning option is a group: remember it and fetch its games
data modify storage {ns}:main current_group set from storage {ns}:main current_game
scoreboard players operation #group_index {ns}.data = #game_1 {ns}.data
function {ns}:engine/launch_game/resolve_group_macro with storage {ns}:main

# Keep only the games matching the current player count
scoreboard players set #player_count {ns}.data 0
execute store result score #player_count {ns}.data if entity @a[tag=!detached]
data modify storage {ns}:main group_pool_filtered set value []
execute if data storage {ns}:main group_pool[0] run function {ns}:engine/launch_game/filter_pool with storage {ns}:main group_pool[0]

# Safety: if no game matches the player count, keep them all
execute unless data storage {ns}:main group_pool_filtered[0] run data modify storage {ns}:main group_pool_filtered set from storage {ns}:main groups_games_copy

# If several games remain, start a second vote between them, else launch the only game
execute store result score #pool_size {ns}.data if data storage {ns}:main group_pool_filtered[]
execute if score #pool_size {ns}.data matches 2.. run return run function {ns}:engine/voting_time/group_vote
data modify storage {ns}:main current_game set from storage {ns}:main group_pool_filtered[0].id
data modify storage {ns}:main current_game_name set from storage {ns}:main group_pool_filtered[0].name_fr
function {ns}:engine/launch_game/transition
""")

	# /launch_game/resolve_group_macro
	write_function(f"{path}/launch_game/resolve_group_macro", f"""
$data modify storage {ns}:main current_group_name set from storage {ns}:main groups[{{id:"$(current_group)"}}].name_fr
$data modify storage {ns}:main group_pool set from storage {ns}:main groups_games.$(current_group)
data modify storage {ns}:main groups_games_copy set from storage {ns}:main group_pool
""")

	# /launch_game/filter_pool
	write_function(f"{path}/launch_game/filter_pool", f"""
# Keep the game if the player count fits its bounds (max_players -1 = no limit)
scoreboard players set #keep {ns}.data 1
$scoreboard players set #pool_min {ns}.data $(min_players)
$scoreboard players set #pool_max {ns}.data $(max_players)
execute if score #player_count {ns}.data < #pool_min {ns}.data run scoreboard players set #keep {ns}.data 0
execute unless score #pool_max {ns}.data matches -1 if score #player_count {ns}.data > #pool_max {ns}.data run scoreboard players set #keep {ns}.data 0
execute if score #keep {ns}.data matches 1 run data modify storage {ns}:main group_pool_filtered append from storage {ns}:main group_pool[0]

# Continue loop until the list is empty
data remove storage {ns}:main group_pool[0]
execute if data storage {ns}:main group_pool[0] run function {ns}:engine/launch_game/filter_pool with storage {ns}:main group_pool[0]
""")

	# /launch_game/current_game_index (used by /rating)
	write_function(f"{path}/launch_game/current_game_index", f"""
$execute store result score #current_game_index {ns}.data run data get storage {ns}:main minigames[{{id:"$(current_game)"}}].index
""")

	# /launch_game/launch (the winning game is known and the transition is over, actually start it)
	write_function(f"{path}/launch_game/launch", f"""
# Do nothing if the engine left the voting state during the transition (e.g. disabled or force started)
execute unless score #engine_state {ns}.data matches 2 run return 1

gamerule minecraft:send_command_feedback true

scoreboard players set #engine_state {ns}.data 3
scoreboard players add total_games {ns}.last_total_games 1

# Remember the winning group as slot 1 of the next vote, and the game index (used by /rating)
scoreboard players operation #game_1 {ns}.data = #group_index {ns}.data
function {ns}:engine/launch_game/current_game_index with storage {ns}:main

# Advancement
{vote_win_advancements}

# Add game to history
data modify storage {ns}:main history.games prepend from storage {ns}:main current_game

weather clear
difficulty normal
scoreboard players reset #set_spec {ns}.data
scoreboard players reset #do_spreadplayers {ns}.data
scoreboard players reset #dont_regenerate {ns}.data
function {ns}:utils/reset_players
execute as @a[tag=!detached] run function #cinemalya:v1/stop {{with:{{restore:false}}}}
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached,tag=!global.ignore.kill]"}}
execute in {ns}:game run function {ns}:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] {ns}.win_streak 5
scoreboard players set @a[tag=!detached,scores={{{ns}.win_streak=..-6}}] {ns}.win_streak -5

# Depending on the game, add a score
function {ns}:engine/launch_game/add_played_stat with storage {ns}:main
""")

