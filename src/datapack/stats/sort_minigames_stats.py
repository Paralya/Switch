# Imports
from stewbeet import Mem, write_function


def write_sort_minigames_stats() -> None:
	""" Write the async sort of the per-minigame played and wins leaderboards. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:stats"

	# /sort_minigames_stats/append_remaining
	write_function(f"{path}/sort_minigames_stats/append_remaining", f"""
# Append remaining unsorted elements from temp lists to new lists
data modify storage {ns}:temp sms_new_played append from storage {ns}:temp sms_played[]
data modify storage {ns}:temp sms_new_wins append from storage {ns}:temp sms_wins[]
data modify storage {ns}:temp sms_new_played_win_ratio append from storage {ns}:temp sms_played_win_ratio[]
""")

	# /sort_minigames_stats/update_and_remove (macro: apply one minigame update from $(id), then pop it off sms_copy; shared head of the sync loop_minigame and the async loop_minigame_macro)
	write_function(f"{path}/sort_minigames_stats/update_and_remove", f"""
# Update the minigame
$data modify storage {ns}:main input set value {{id:"$(id)"}}
function {ns}:stats/sort_minigames_stats/update_minigame with storage {ns}:main input

# Go next minigame
data remove storage {ns}:main sms_copy[0]
""")

	# /sort_minigames_stats/async/loop_minigame_macro
	write_function(f"{path}/sort_minigames_stats/async/loop_minigame_macro", f"""
function {ns}:stats/sort_minigames_stats/update_and_remove with storage {ns}:main sms_copy[0]
execute if data storage {ns}:main sms_copy[0] run schedule function {ns}:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace
""")

	# /sort_minigames_stats/async/loop_minigame_no_macro
	write_function(f"{path}/sort_minigames_stats/async/loop_minigame_no_macro", f"""
function {ns}:stats/sort_minigames_stats/async/loop_minigame_macro with storage {ns}:main sms_copy[0]
""")

	# /sort_minigames_stats/async/main
	write_function(f"{path}/sort_minigames_stats/async/main", f"""
# For each minigame
data modify storage {ns}:main sms_copy set from storage {ns}:main minigames
execute if data storage {ns}:main sms_copy[0] run schedule function {ns}:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace
""")

	# /sort_minigames_stats/get_max_from_arrays
	write_function(f"{path}/sort_minigames_stats/get_max_from_arrays", f"""
# Compare for the played array
execute store result score #temp {ns}.data run data get storage {ns}:temp sms_copy_played[0].value
execute if score #temp {ns}.data > #max_value_played {ns}.data run scoreboard players operation #max_index_played {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_played {ns}.data run scoreboard players operation #max_value_played {ns}.data = #temp {ns}.data

# Compare for the wins array
execute store result score #temp {ns}.data run data get storage {ns}:temp sms_copy_wins[0].value
execute if score #temp {ns}.data > #max_value_wins {ns}.data run scoreboard players operation #max_index_wins {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_wins {ns}.data run scoreboard players operation #max_value_wins {ns}.data = #temp {ns}.data

# Compare for the played_win_ratio array
execute store result score #temp {ns}.data run data get storage {ns}:temp sms_copy_played_win_ratio[0].value
execute if score #temp {ns}.data > #max_value_played_win_ratio {ns}.data run scoreboard players operation #max_index_played_win_ratio {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_played_win_ratio {ns}.data run scoreboard players operation #max_value_played_win_ratio {ns}.data = #temp {ns}.data

# Go next (loop)
scoreboard players add #current_index {ns}.data 1
data remove storage {ns}:temp sms_copy_played[0]
data remove storage {ns}:temp sms_copy_wins[0]
data remove storage {ns}:temp sms_copy_played_win_ratio[0]
execute if data storage {ns}:temp sms_copy_played[0] run function {ns}:stats/sort_minigames_stats/get_max_from_arrays
""")

	# /sort_minigames_stats/loop_minigame
	write_function(f"{path}/sort_minigames_stats/loop_minigame", f"""
function {ns}:stats/sort_minigames_stats/update_and_remove with storage {ns}:main sms_copy[0]
execute if data storage {ns}:main sms_copy[0] run function {ns}:stats/sort_minigames_stats/loop_minigame with storage {ns}:main sms_copy[0]
""")

	# /sort_minigames_stats/loop_played_and_wins
	write_function(f"{path}/sort_minigames_stats/loop_played_and_wins", f"""
# Copy the played and wins arrays to the temp arrays
data modify storage {ns}:temp sms_copy_played set from storage {ns}:temp sms_played
data modify storage {ns}:temp sms_copy_wins set from storage {ns}:temp sms_wins
data modify storage {ns}:temp sms_copy_played_win_ratio set from storage {ns}:temp sms_played_win_ratio

# Find the index of the highest value in the played and wins arrays
scoreboard players set #current_index {ns}.data 0
scoreboard players set #max_value_played {ns}.data 0
scoreboard players set #max_value_wins {ns}.data 0
scoreboard players set #max_value_played_win_ratio {ns}.data 0
scoreboard players set #max_index_played {ns}.data 0
scoreboard players set #max_index_wins {ns}.data 0
scoreboard players set #max_index_played_win_ratio {ns}.data 0
execute if data storage {ns}:temp sms_copy_played[0] run function {ns}:stats/sort_minigames_stats/get_max_from_arrays

# Add the highest value to the new arrays
data modify storage {ns}:temp sms_indexes set value {{played:0,wins:0,played_win_ratio:0}}
execute store result storage {ns}:temp sms_indexes.played int 1 run scoreboard players get #max_index_played {ns}.data
execute store result storage {ns}:temp sms_indexes.wins int 1 run scoreboard players get #max_index_wins {ns}.data
execute store result storage {ns}:temp sms_indexes.played_win_ratio int 1 run scoreboard players get #max_index_played_win_ratio {ns}.data
function {ns}:stats/sort_minigames_stats/macro_add_to_new_arrays with storage {ns}:temp sms_indexes

# Increment sorted count
scoreboard players add #sorted_count {ns}.data 1

# Loop through the rest of the values (up to 15)
execute if score #sorted_count {ns}.data matches ..15 if data storage {ns}:temp sms_played[0] run return run function {ns}:stats/sort_minigames_stats/loop_played_and_wins

# If 15 elements were sorted, append the rest
execute if score #sorted_count {ns}.data matches 16 run function {ns}:stats/sort_minigames_stats/append_remaining
""")

	# /sort_minigames_stats/macro_add_to_new_arrays
	write_function(f"{path}/sort_minigames_stats/macro_add_to_new_arrays", f"""
$data modify storage {ns}:temp sms_new_played append from storage {ns}:temp sms_played[$(played)]
$data modify storage {ns}:temp sms_new_wins append from storage {ns}:temp sms_wins[$(wins)]
$data modify storage {ns}:temp sms_new_played_win_ratio append from storage {ns}:temp sms_played_win_ratio[$(played_win_ratio)]
$data remove storage {ns}:temp sms_played[$(played)]
$data remove storage {ns}:temp sms_wins[$(wins)]
$data remove storage {ns}:temp sms_played_win_ratio[$(played_win_ratio)]
""")

	# /sort_minigames_stats/main
	write_function(f"{path}/sort_minigames_stats/main", f"""
# For each minigame
data modify storage {ns}:main sms_copy set from storage {ns}:main minigames
execute if data storage {ns}:main sms_copy[0] run function {ns}:stats/sort_minigames_stats/loop_minigame with storage {ns}:main sms_copy[0]
""")

	# /sort_minigames_stats/update_minigame
	write_function(f"{path}/sort_minigames_stats/update_minigame", f"""
## Storage Format: {ns}:stats all.modes = {{pitch_creep:{{total_games:0,played:[],wins:[]}}, minigolf:{{...}}, ...}}
# Sort in descending order the played array
$data modify storage {ns}:temp list set from storage {ns}:stats all.modes.$(id).played
function {ns}:utils/list/desc/sort
$data modify storage {ns}:stats all.modes.$(id).played set from storage {ns}:temp list

# Sort in descending order the wins array
$data modify storage {ns}:temp list set from storage {ns}:stats all.modes.$(id).wins
function {ns}:utils/list/desc/sort
$data modify storage {ns}:stats all.modes.$(id).wins set from storage {ns}:temp list

# Sort in descending order the played_win_ratio array
$data modify storage {ns}:temp list set from storage {ns}:stats all.modes.$(id).played_win_ratio
function {ns}:utils/list/desc/sort
$data modify storage {ns}:stats all.modes.$(id).played_win_ratio set from storage {ns}:temp list

# Check if a player have a number of played games superior to the total games played
scoreboard players set #max_played {ns}.data 0
scoreboard players set #total_games {ns}.data 0
$execute store result score #total_games {ns}.data run data get storage {ns}:stats all.modes.$(id).total_games
$execute store result score #max_played {ns}.data run data get storage {ns}:stats all.modes.$(id).played[0].value
$execute if score #max_played {ns}.data > #total_games {ns}.data store result storage {ns}:stats all.modes.$(id).total_games int 1 run scoreboard players get #max_played {ns}.data
""")

