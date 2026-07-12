
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function

from .translations import write_translations


@stp.measure_time(message="Generated engine files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"
	write_translations()

	# /add_money
	write_function(f"{path}/add_money", f"""
# Money to add
scoreboard players set #add {ns}.money 10
execute if score #add_override {ns}.money matches 1.. run scoreboard players operation #add {ns}.money = #add_override {ns}.money
execute if score #add_override {ns}.money matches 1.. run scoreboard players reset #add_override {ns}.money

# Money bonus multiplier
scoreboard players operation #bonus {ns}.money = #add {ns}.money
scoreboard players operation #bonus {ns}.money *= @s {ns}.money_bonus
scoreboard players operation #bonus {ns}.money /= #100 {ns}.data
scoreboard players operation #add {ns}.money += #bonus {ns}.money

# Apply money
scoreboard players operation @s {ns}.money += #add {ns}.money

# Messages
execute store result score #random {ns}.data run random value 0..5
function {ns}:engine/translations/add_money

playsound entity.player.levelup ambient @s ^ ^ ^ .2

execute if score @s {ns}.money matches 400.. run advancement grant @s only {ns}:visible/3
""")

	# /add_time
	write_function(f"{path}/add_time", f"""
# Add time & playsound
scoreboard players add #voting_timer {ns}.data 300
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
function {ns}:engine/translations/add_time
""")

	# /add_win
	write_function(f"{path}/add_win", f"""
execute if score #test_mode {ns}.data matches 1.. run return 1

scoreboard players add @s {ns}.win_streak 6
execute if score @s {ns}.win_streak matches 5.. unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/30
scoreboard players add @s {ns}.stats.wins 1
execute unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/4
function {ns}:engine/add_win_macro with storage {ns}:main
function {ns}:engine/add_money
""")

	# /add_win_macro
	write_function(f"{path}/add_win_macro", f"""
$scoreboard players add @s {ns}.stats.wins.$(current_game) 1
""")

	# /check_coupdetat
	write_function(f"{path}/check_coupdetat", f"""
# Check if there is a coup d'état in progress, if so, check if the vote is successful (>= 50% of players)
execute store result score #coupdetat_votes {ns}.data if entity @a[scores={{{ns}.trigger.coupdetat_vote=-1}},tag=!detached]
scoreboard players operation #percentage {ns}.data = #coupdetat_votes {ns}.data
scoreboard players operation #percentage {ns}.data *= #100 {ns}.data
scoreboard players operation #percentage {ns}.data /= #nb_attached {ns}.data

# If the number of votes is < 50% of the players, the coup d'état is unsuccessful
execute if score #percentage {ns}.data matches ..49 run scoreboard players set #coupdetat {ns}.data 0
execute if score #percentage {ns}.data matches ..49 as @a[tag={ns}.coupdetat] run function {ns}:engine/translations/check_coupdetat
execute if score #percentage {ns}.data matches ..49 run tag @a[tag={ns}.coupdetat] remove {ns}.coupdetat

# Else, everything's fine, the coup d'état is successful, don't need to do anything since `{ns}:engine/start` will handle it
""")

	# /disable
	write_function(f"{path}/disable", f"""
scoreboard players set #engine_state {ns}.data 3
scoreboard players set #disable {ns}.data 1
execute in {ns}:game run function {ns}:engine/stop

time set 6000

scoreboard players set #engine_state {ns}.data -1
schedule clear {ns}:engine/voting_time/tick
schedule clear {ns}:engine/launch_game/launch
""")

	# /force_start_macro
	write_function(f"{path}/force_start_macro", f"""
# Stop everything
function {ns}:engine/disable

# Set the current game (and its group, used for voting weights and as slot 1 of the next vote)
$data modify storage {ns}:main current_game set value "$(id)"
$data modify storage {ns}:main current_game_name set from storage {ns}:main minigames[{{id:"$(id)"}}].name_fr
$data modify storage {ns}:main current_group set from storage {ns}:main minigames[{{id:"$(id)"}}].group
$execute store result score #current_game_index {ns}.data run data get storage {ns}:main minigames[{{id:"$(id)"}}].index
function {ns}:engine/group_index with storage {ns}:main
tag @s remove detached

# Tellraw message (unless removed)
execute unless score #no_force_start_msg {ns}.data matches 1 run function {ns}:engine/translations/force_start_macro
scoreboard players reset #no_force_start_msg {ns}.data

# Start the game with the right state
function {ns}:engine/start_state
scoreboard players remove @a[tag=!detached] {ns}.win_streak 5
scoreboard players set @a[tag=!detached,scores={{{ns}.win_streak=..-6}}] {ns}.win_streak -5
""")

	# /group_index (store the group index of the current group, used as slot 1 of the next vote)
	write_function(f"{path}/group_index", f"""
$execute store result score #game_1 {ns}.data run data get storage {ns}:main groups[{{id:"$(current_group)"}}].index
scoreboard players operation #group_index {ns}.data = #game_1 {ns}.data
""")

	# /start_state (shared: enter the playing state, reset players/entities, fire the start signal)
	write_function(f"{path}/start_state", f"""
# Start the game with the right state
scoreboard players set #engine_state {ns}.data 3
scoreboard players reset #set_spec {ns}.data
scoreboard players reset #do_spreadplayers {ns}.data
scoreboard players reset #dont_regenerate {ns}.data
function {ns}:utils/reset_players
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached]"}}
function {ns}:engine/signals/start

# Stop the practice mode music of the players joining the game (it would loop during the whole game)
execute as @a[tag=!detached,tag={ns}.practice] run function {ns}:player/practice/music_stop

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
""")

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
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached]"}}
execute in {ns}:game run function {ns}:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] {ns}.win_streak 5
scoreboard players set @a[tag=!detached,scores={{{ns}.win_streak=..-6}}] {ns}.win_streak -5

# Depending on the game, add a score
function {ns}:engine/launch_game/add_played_stat with storage {ns}:main
""")

	# /log_message/apply
	write_function(f"{path}/log_message/apply", f"""
#> {ns}:engine/log_message/apply
#
# @executed			Don't care
#
# @input storage	{ns}:main MessageToLog
#
# @description		Interprets the message and logs it to the console
#

# Put the message into a sign
execute in minecraft:overworld run setblock 0 2 0 oak_sign
execute in minecraft:overworld run data modify block 0 2 0 front_text.messages[0] set value {{"nbt":"MessageToLog","storage":"{ns}:main","interpret":true}}
execute in minecraft:overworld run data modify storage {ns}:main MessageToLog set from block 0 2 0 front_text.messages[0]
execute in minecraft:overworld run setblock 0 2 0 air

# Summon wolf
execute in minecraft:overworld positioned 0 2 0 summon wolf run function {ns}:engine/log_message/on_wolf
""")

	# /log_message/on_wolf
	write_function(f"{path}/log_message/on_wolf", f"""
#> {ns}:engine/log_message/on_wolf
#
# @within			{ns}:engine/log_message/apply
# @executed			as temporary wolf
#
# @input storage	{ns}:main MessageToLog
#
# @description		Function executed on the wolf summoned to log the message into the console.
#

data modify entity @s CustomName set from storage {ns}:main MessageToLog
kill @s
""")

	# /restart
	write_function(f"{path}/restart", f"""
# For each player, update their stats storage, then sort player stats arrays
execute as @a run function {ns}:player/update_stats_storage/main
function {ns}:stats/async/sort_player_stats

# Stop the engine and launch stop signal
execute in {ns}:game run function {ns}:engine/stop

# Check if enough players
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]
function {ns}:engine/translations/restart

# Start the engine and launch start signal
execute in {ns}:game run function {ns}:engine/start
""")

	# /signals/inventory_changed
	write_function(f"{path}/signals/inventory_changed", f"""
# Revoke inventory_changed advancement
advancement revoke @s only {ns}:inventory_changed

# Launch inventory_changed signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_inventory_changed with storage {ns}:main input
""")

	# /signals/joined
	write_function(f"{path}/signals/joined", f"""
# Launch joined signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_joined with storage {ns}:main input
""")

	# /signals/macro_inventory_changed
	write_function(f"{path}/signals/macro_inventory_changed", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/inventory_changed
""")

	# /signals/macro_joined
	write_function(f"{path}/signals/macro_joined", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/joined
""")

	# /signals/macro_second
	write_function(f"{path}/signals/macro_second", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/second
""")

	# /signals/macro_start
	write_function(f"{path}/signals/macro_start", f"""
# Grant the minigame starting pop-up to everyone
$advancement grant @a[scores={{{ns}.lang=0}}] only {ns}:pop_ups/$(id)_fr
$advancement grant @a[scores={{{ns}.lang=1}}] only {ns}:pop_ups/$(id)_en

# Call the start function
$execute in {ns}:game run function {ns}:modes/$(id)/calls/start
""")

	# /signals/macro_stop
	write_function(f"{path}/signals/macro_stop", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/stop
""")

	# /signals/macro_tick
	write_function(f"{path}/signals/macro_tick", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/tick
""")

	# /signals/second
	write_function(f"{path}/signals/second", f"""
# Launch second signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_second with storage {ns}:main input
""")

	# /signals/start
	write_function(f"{path}/signals/start", f"""
# Log message
data modify storage {ns}:main MessageToLog set value [{{"text": "Lancement d'une partie de `"}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true}},{{"text":"` !"}}]
function {ns}:engine/log_message/apply

# Clear voting message
schedule clear {ns}:engine/voting_time/schedule_message

# Repair dependencies libraries
function #{ns}:dependencies

# Launch start signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_start with storage {ns}:main input

# Start map intro
function {ns}:maps/intro_spread

# Increment total games played
execute if score #test_mode {ns}.data matches 1.. run return 1
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:stats/increment_minigame_played with storage {ns}:main input
""")

	# /signals/stop
	write_function(f"{path}/signals/stop", f"""
# Log message
data modify storage {ns}:main MessageToLog set value [{{"text": "Arret d'une partie de `"}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true}},{{"text":"` !"}}]
function {ns}:engine/log_message/apply

# Launch stop signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_stop with storage {ns}:main input
""")

	# /signals/tick
	write_function(f"{path}/signals/tick", f"""
# Launch tick signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_tick with storage {ns}:main input
""")

	# /start
	write_function(f"{path}/start", f"""
# Get the number of players currently attached to the switch engine
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]

# Check if there is a coup d'état in progress, if it's valid, stop the vote by launching the game mode
execute if score #coupdetat {ns}.data matches 1 run function {ns}:engine/check_coupdetat
execute if score #coupdetat {ns}.data matches 1 as @n[tag={ns}.coupdetat] in {ns}:game run return run function {ns}:modes/_coupdetat/_force_start

# Check if there are enough players to start the game
execute if score #nb_attached {ns}.data >= #min_required {ns}.data run function {ns}:engine/voting_time/main

# Else,
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run gamerule minecraft:send_command_feedback true
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run gamemode spectator @a[tag=!detached]
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data in minecraft:overworld as @a[tag=!detached] unless entity @s[x=0,y=69,z=0,distance=..200] run tp @s 0 69 0
""")

	# /stop
	write_function(f"{path}/stop", f"""
execute unless score #engine_state {ns}.data matches 3 unless score #disable {ns}.data matches 1 run tp @a[tag=!detached] 0 69 0
scoreboard players set #engine_state {ns}.data 0
scoreboard players set #cut_clean {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard players set #set_spec {ns}.data 1
function {ns}:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list {ns}.stats.wins
execute unless score #dont_regenerate {ns}.data matches 1 unless score #already_regenerated {ns}.data matches 1 run function {ns}:maps/regenerate_map
scoreboard players reset #dont_regenerate {ns}.data

scoreboard objectives setdisplay sidebar
scoreboard players reset #disable {ns}.data
scoreboard players reset * {ns}.alive
execute in minecraft:overworld run function {ns}:utils/reset_gamerules
execute in {ns}:game run function {ns}:utils/reset_gamerules

function {ns}:engine/signals/stop
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached]"}}

# Update the stats of the minigame
execute if score #test_mode {ns}.data matches 1.. run return 1
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:stats/sort_minigames_stats/update_minigame with storage {ns}:main input
""")

	# /voting_time/add_option
	write_function(f"{path}/voting_time/add_option", f"""
# Add the current index to the options
execute store result storage {ns}:temp index int 1 run scoreboard players get #fill_index {ns}.data
data modify storage bs:in random.weighted_choice.options append from storage {ns}:temp index

# Increment the index
scoreboard players add #fill_index {ns}.data 1

# Continue loop until the list is empty
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_option
""")

	# /voting_time/add_weights
	write_function(f"{path}/voting_time/add_weights", f"""
# Add time_since_last_play to the weights
data modify storage {ns}:temp weight set value 1
$data modify storage {ns}:temp weight set from storage {ns}:main history.time_since_last_play.$(id)
data modify storage bs:in random.weighted_choice.weights append from storage {ns}:temp weight

# Continue loop until the list is empty
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_weights with storage {ns}:temp copy[0]
""")

	# /voting_time/get/index_information
	index_information: str = "\n".join(
		f"execute if score #index {ns}.data matches {i} if score #list_index {ns}.data = #game_{i} {ns}.data store success score #success {ns}.data run data modify storage {ns}:main selections append from storage {ns}:main copy[0]"
		for i in range(1, 9)
	)
	write_function(f"{path}/voting_time/get/index_information", f"""
scoreboard players set #success {ns}.data 0
{index_information}

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #success {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_information
""")

	# /voting_time/get/index_max_players
	write_function(f"{path}/voting_time/get/index_max_players", f"""
execute unless score #index {ns}.data matches 1 if score #list_index {ns}.data = #random {ns}.data store result score #max_players {ns}.data run data get storage {ns}:main copy[0].max_players
execute if score #index {ns}.data matches 1 if score #list_index {ns}.data = #game_1 {ns}.data store result score #max_players {ns}.data run data get storage {ns}:main copy[0].max_players

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #max_players {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_max_players
""")

	# /voting_time/get/index_min_players
	write_function(f"{path}/voting_time/get/index_min_players", f"""
execute unless score #index {ns}.data matches 1 if score #list_index {ns}.data = #random {ns}.data store result score #min_players {ns}.data run data get storage {ns}:main copy[0].min_players
execute if score #index {ns}.data matches 1 if score #list_index {ns}.data = #game_1 {ns}.data store result score #min_players {ns}.data run data get storage {ns}:main copy[0].min_players

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #min_players {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/information
	write_function(f"{path}/voting_time/get/information", f"""
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_information

scoreboard players add #index {ns}.data 1
execute if score #index {ns}.data matches ..8 run function {ns}:engine/voting_time/get/information
""")

	# /voting_time/get/max_players
	write_function(f"{path}/voting_time/get/max_players", f"""
scoreboard players set #max_players {ns}.data 0
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_max_players
execute if score #max_players {ns}.data matches -1 run scoreboard players set #max_players {ns}.data 2147483647
""")

	# /voting_time/get/min_players
	write_function(f"{path}/voting_time/get/min_players", f"""
scoreboard players set #min_players {ns}.data 0
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/random
	write_function(f"{path}/voting_time/get/random", f"""
scoreboard players set #random {ns}.data 0
execute store result score #random {ns}.data run data get entity @s UUID[0]
scoreboard players operation #random {ns}.data %= #modulo_rand {ns}.data
scoreboard players add #random {ns}.data 1
kill @s
""")

	# /voting_time/main
	# #game_1 uses `add` (preserve any pre-set value), #game_2..8 are reset to 0
	game_reset: str = f"scoreboard players add #game_1 {ns}.data 0\n" + "\n".join(
		f"scoreboard players set #game_{i} {ns}.data 0" for i in range(2, 9)
	)
	vote_game_reset: str = "\n".join(f"scoreboard players set #vote_game_{i} {ns}.data 0" for i in range(1, 9))
	write_function(f"{path}/voting_time/main", f"""
gamerule minecraft:send_command_feedback false
scoreboard players set #engine_state {ns}.data 2
scoreboard players set #voting_timer {ns}.data 399
schedule clear {ns}:engine/launch_game/launch

# Round 1: vote between groups of games (8 slots: 7 groups + random)
scoreboard players set #vote_round {ns}.data 1
scoreboard players set #vote_slots {ns}.data 8

execute store result score #modulo_rand {ns}.data run data get storage {ns}:main groups

# Setup the random choice options
scoreboard players set #fill_index {ns}.data 1
data modify storage bs:in random.weighted_choice.options set value []
data modify storage {ns}:temp copy set from storage {ns}:main groups
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_option

# Setup the weights list
data modify storage bs:in random.weighted_choice.weights set value []
data modify storage {ns}:temp copy set from storage {ns}:main groups
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_weights with storage {ns}:temp copy[0]


# Set the vote counts to 0
{game_reset}
scoreboard players set #index {ns}.data 1

scoreboard players set #player_count {ns}.data 0
execute store result score #player_count {ns}.data if entity @a[tag=!detached]
scoreboard players set #max_tries {ns}.data 1000
function {ns}:engine/voting_time/select_random_games

data modify storage {ns}:main selections set value []

scoreboard players set #index {ns}.data 1
function {ns}:engine/voting_time/get/information

{vote_game_reset}
scoreboard players set @a {ns}.trigger.game_vote 0
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message

schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/group_vote (second vote: decide between the games of the winning group)
	write_function(f"{path}/voting_time/group_vote", f"""
# The games of the group become the vote selections
data modify storage {ns}:main selections set from storage {ns}:main group_pool_filtered
scoreboard players set #vote_round {ns}.data 2
scoreboard players operation #vote_slots {ns}.data = #pool_size {ns}.data
scoreboard players set #voting_timer {ns}.data 200

# Reset the votes and show the new vote to everyone
schedule clear {ns}:engine/voting_time/schedule_message
{vote_game_reset}
scoreboard players set @a {ns}.trigger.game_vote 0
execute as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message

schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/message
	write_function(f"{path}/voting_time/message", rf"""
data modify storage {ns}:main msg_votes set value [" vote", " vote", " vote", " vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[0] set value " votes"
execute if score #vote_game_2 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[1] set value " votes"
execute if score #vote_game_3 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[2] set value " votes"
execute if score #vote_game_4 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[3] set value " votes"
execute if score #vote_game_5 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[4] set value " votes"
execute if score #vote_game_6 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[5] set value " votes"
execute if score #vote_game_7 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[6] set value " votes"
execute if score #vote_game_8 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[7] set value " votes"

# Edit the last vote to make it hidden (round 1 only, round 2 has no random slot)
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].lore_fr set value ["",{{"text":"[Aléatoire]\n","color":"yellow"}},{{"text":"Jeu totalement aléatoire qui n'est pas\n"}},{{"text":"présent parmi les 7 au dessus"}}]
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].name_fr set value "Aléatoire"
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].display_name_fr set value {{"text":"Aléatoire","color":"yellow"}}
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].lore_en set value ["",{{"text":"[Random]\n","color":"yellow"}},{{"text":"Game completely random that is not\n"}},{{"text":"present among the 7 above"}}]
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].name_en set value "Random"
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].display_name_en set value {{"text":"Random","color":"yellow"}}

# Tellraw
function {ns}:engine/translations/voting_time_message
scoreboard players reset #for_tutorial {ns}.data
""")

	# /voting_time/player_join
	write_function(f"{path}/voting_time/player_join", f"""
clear @s[tag=!convention.debug]
effect clear @s
gamemode spectator @s[tag=!convention.debug]
tp @s[tag=!convention.debug] 0 169 0
tp @s[tag=!convention.debug] @r[tag=!detached]

function {ns}:engine/voting_time/message
""")

	# /voting_time/schedule_message
	write_function(f"{path}/voting_time/schedule_message", f"""
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message
""")

	# /voting_time/select_random_games
	write_function(f"{path}/voting_time/select_random_games", f"""
# Randomly select a minigame based on weights
execute in minecraft:overworld run function #bs.random:weighted_choice
execute store result score #random {ns}.data run data get storage bs:out random.weighted_choice

scoreboard players set #wrong {ns}.data 0
function {ns}:engine/voting_time/get/min_players
function {ns}:engine/voting_time/get/max_players
execute if score #index {ns}.data matches 1 if score #player_count {ns}.data < #min_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 1 if score #player_count {ns}.data > #max_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 2.. if score #random {ns}.data = #game_1 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 3.. if score #random {ns}.data = #game_2 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 4.. if score #random {ns}.data = #game_3 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 5.. if score #random {ns}.data = #game_4 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 6.. if score #random {ns}.data = #game_5 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 7.. if score #random {ns}.data = #game_6 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 8.. if score #random {ns}.data = #game_7 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #wrong {ns}.data matches 0 if score #player_count {ns}.data < #min_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #wrong {ns}.data matches 0 if score #player_count {ns}.data > #max_players {ns}.data run scoreboard players add #wrong {ns}.data 1

execute if score #wrong {ns}.data matches 1 if score #index {ns}.data matches 1 run scoreboard players operation #game_1 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 2 run scoreboard players operation #game_2 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 3 run scoreboard players operation #game_3 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 4 run scoreboard players operation #game_4 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 5 run scoreboard players operation #game_5 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 6 run scoreboard players operation #game_6 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 7 run scoreboard players operation #game_7 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 8 run scoreboard players operation #game_8 {ns}.data = #random {ns}.data
execute if score #index {ns}.data matches 2.. if score #wrong {ns}.data matches 0 run scoreboard players add #index {ns}.data 1
execute if score #index {ns}.data matches 1 run scoreboard players add #index {ns}.data 1

scoreboard players remove #max_tries {ns}.data 1
execute if score #max_tries {ns}.data matches 1.. if score #index {ns}.data matches ..8 run function {ns}:engine/voting_time/select_random_games
""")

	# /voting_time/speed_up
	write_function(f"{path}/voting_time/speed_up", f"""
execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
function {ns}:engine/translations/voting_time_speed_up
scoreboard players set #voting_timer {ns}.data 99
""")

	# /voting_time/tick
	write_function(f"{path}/voting_time/tick", f"""
# Return if not in voting state (2)
execute unless score #engine_state {ns}.data matches 2 run return 1

# Check for new votes and update
scoreboard players set #success {ns}.data 0
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] run function {ns}:engine/voting_time/update_votes
execute if score #success {ns}.data matches 1 run schedule function {ns}:engine/voting_time/schedule_message 1s replace

# Count total players and votes
scoreboard players set #vote_count {ns}.data 0
scoreboard players set #player_count {ns}.data 0
execute store result score #player_count {ns}.data if entity @a[tag=!detached]
execute store result score #vote_count {ns}.data if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}]
# Speed up voting if everyone has voted and more than 5 seconds left
execute if score #voting_timer {ns}.data matches 100.. if score #player_count {ns}.data = #vote_count {ns}.data run function {ns}:engine/voting_time/speed_up

# Decrease timer if at least one vote exists
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] run scoreboard players remove #voting_timer {ns}.data 1

# Calculate and display remaining time in seconds
scoreboard players set #remaining {ns}.data 0
scoreboard players operation #remaining {ns}.data = #voting_timer {ns}.data
scoreboard players operation #remaining {ns}.data /= #20 {ns}.data
scoreboard players add #remaining {ns}.data 1
function {ns}:engine/translations/voting_time_tick

# End of voting sequence
# execute if score #voting_timer {ns}.data matches 1 run scoreboard players remove @a[tag=!detached] {ns}.stats.deaths 1
# execute if score #voting_timer {ns}.data matches 1 run kill @a[tag=!detached]
execute if score #voting_timer {ns}.data matches 0 run function {ns}:engine/launch_game/main

# Schedule next tick if timer hasn't expired
execute if score #voting_timer {ns}.data matches 1.. run schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/update_votes
	vote_reset: str = "\n".join(f"scoreboard players set #vote_game_{i} {ns}.data 0" for i in range(1, 9))
	vote_count: str = "\n".join(
		f"execute store result score #vote_game_{i} {ns}.data if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=-{i}}}]"
		for i in range(1, 9)
	)
	write_function(f"{path}/voting_time/update_votes", f"""
{vote_reset}

# Ignore clicks on vote options that do not exist in the current round (e.g. old messages in the chat)
execute unless score #vote_slots {ns}.data matches 1.. run scoreboard players set #vote_slots {ns}.data 8
execute as @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] unless score @s {ns}.trigger.game_vote <= #vote_slots {ns}.data run scoreboard players set @s {ns}.trigger.game_vote 0

tag @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] add {ns}.temp
execute as @a[tag={ns}.temp] at @s run playsound ui.button.click ambient @s
scoreboard players operation @a[tag={ns}.temp] {ns}.trigger.game_vote *= #-1 {ns}.data
{vote_count}

scoreboard players set #success {ns}.data 1

# Update the message for the player who just voted
execute as @a[tag={ns}.temp] run function {ns}:engine/voting_time/message
tag @a[tag={ns}.temp] remove {ns}.temp
""")

