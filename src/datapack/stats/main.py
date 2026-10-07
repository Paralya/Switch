
# Imports
from stewbeet import Mem, write_function

from .display import write_display
from .sort_minigames_stats import write_sort_minigames_stats


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:stats"

	# /_player_stats_loop_body
	write_function(f"{path}/_player_stats_loop_body", f"""
# Copy the values from the player arrays to another temp arrays
data modify storage {ns}:temp copy_played set from storage {ns}:temp played
data modify storage {ns}:temp copy_wins set from storage {ns}:temp wins
data modify storage {ns}:temp copy_kills set from storage {ns}:temp kills
data modify storage {ns}:temp copy_deaths set from storage {ns}:temp deaths
data modify storage {ns}:temp copy_money set from storage {ns}:temp money
data modify storage {ns}:temp copy_played_win_ratio set from storage {ns}:temp played_win_ratio
data modify storage {ns}:temp copy_advancement_count set from storage {ns}:temp advancement_count

# Find the index of the highest value in the arrays
scoreboard players set #current_index {ns}.data 0
scoreboard players set #max_value_played {ns}.data 0
scoreboard players set #max_value_wins {ns}.data 0
scoreboard players set #max_value_kills {ns}.data 0
scoreboard players set #max_value_deaths {ns}.data 0
scoreboard players set #max_value_money {ns}.data 0
scoreboard players set #max_value_played_win_ratio {ns}.data 0
scoreboard players set #max_value_advancement_count {ns}.data 0
scoreboard players set #max_index_played {ns}.data 0
scoreboard players set #max_index_wins {ns}.data 0
scoreboard players set #max_index_kills {ns}.data 0
scoreboard players set #max_index_deaths {ns}.data 0
scoreboard players set #max_index_money {ns}.data 0
scoreboard players set #max_index_played_win_ratio {ns}.data 0
scoreboard players set #max_index_advancement_count {ns}.data 0
execute if data storage {ns}:temp copy_played[0] run function {ns}:stats/get_max_from_player_arrays

# Add the highest value to the new arrays
data modify storage {ns}:temp indexes set value {{played:0,wins:0,kills:0,deaths:0,money:0,played_win_ratio:0,advancement_count:0}}
execute store result storage {ns}:temp indexes.played int 1 run scoreboard players get #max_index_played {ns}.data
execute store result storage {ns}:temp indexes.wins int 1 run scoreboard players get #max_index_wins {ns}.data
execute store result storage {ns}:temp indexes.kills int 1 run scoreboard players get #max_index_kills {ns}.data
execute store result storage {ns}:temp indexes.deaths int 1 run scoreboard players get #max_index_deaths {ns}.data
execute store result storage {ns}:temp indexes.money int 1 run scoreboard players get #max_index_money {ns}.data
execute store result storage {ns}:temp indexes.played_win_ratio int 1 run scoreboard players get #max_index_played_win_ratio {ns}.data
execute store result storage {ns}:temp indexes.advancement_count int 1 run scoreboard players get #max_index_advancement_count {ns}.data
function {ns}:stats/macro_add_to_new_player_arrays with storage {ns}:temp indexes
""")

	# /_sort_player_stats_finalize
	write_function(f"{path}/_sort_player_stats_finalize", f"""
# Copy to new storage
data modify storage {ns}:stats all.player.total_played set from storage {ns}:temp new_played
data modify storage {ns}:stats all.player.total_wins set from storage {ns}:temp new_wins
data modify storage {ns}:stats all.player.total_kills set from storage {ns}:temp new_kills
data modify storage {ns}:stats all.player.total_deaths set from storage {ns}:temp new_deaths
data modify storage {ns}:stats all.player.total_money set from storage {ns}:temp new_money
data modify storage {ns}:stats all.player.played_win_ratio set from storage {ns}:temp new_played_win_ratio
data modify storage {ns}:stats all.player.advancement_count set from storage {ns}:temp new_advancement_count

# Reset temp storage
data remove storage {ns}:temp played
data remove storage {ns}:temp wins
data remove storage {ns}:temp kills
data remove storage {ns}:temp deaths
data remove storage {ns}:temp money
data remove storage {ns}:temp played_win_ratio
data remove storage {ns}:temp advancement_count
data remove storage {ns}:temp new_played
data remove storage {ns}:temp new_wins
data remove storage {ns}:temp new_kills
data remove storage {ns}:temp new_deaths
data remove storage {ns}:temp new_money
data remove storage {ns}:temp new_played_win_ratio
data remove storage {ns}:temp new_advancement_count
data remove storage {ns}:temp copy_played
data remove storage {ns}:temp copy_wins
data remove storage {ns}:temp copy_kills
data remove storage {ns}:temp copy_deaths
data remove storage {ns}:temp copy_money
data remove storage {ns}:temp copy_played_win_ratio
data remove storage {ns}:temp copy_advancement_count
""")

	# /_sort_player_stats_setup
	write_function(f"{path}/_sort_player_stats_setup", f"""
## Storage Format: all.player = {{total_played:[{{name:"Stoupy51",value:0}}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}}

# Copy stats to temp storage
data modify storage {ns}:temp played set from storage {ns}:stats all.player.total_played
data modify storage {ns}:temp wins set from storage {ns}:stats all.player.total_wins
data modify storage {ns}:temp kills set from storage {ns}:stats all.player.total_kills
data modify storage {ns}:temp deaths set from storage {ns}:stats all.player.total_deaths
data modify storage {ns}:temp money set from storage {ns}:stats all.player.total_money
data modify storage {ns}:temp played_win_ratio set from storage {ns}:stats all.player.played_win_ratio
data modify storage {ns}:temp advancement_count set from storage {ns}:stats all.player.advancement_count
data modify storage {ns}:temp new_played set value []
data modify storage {ns}:temp new_wins set value []
data modify storage {ns}:temp new_kills set value []
data modify storage {ns}:temp new_deaths set value []
data modify storage {ns}:temp new_money set value []
data modify storage {ns}:temp new_played_win_ratio set value []
data modify storage {ns}:temp new_advancement_count set value []
""")

	# /_update_every_single_stat
	write_function(f"{path}/_update_every_single_stat", f"""
function {ns}:player/update_stats_storage/every_player
function {ns}:stats/async/sort_player_stats
function {ns}:stats/sort_minigames_stats/async/main
""")

	# /async/loop_player_stats
	write_function(f"{path}/async/loop_player_stats", f"""
# Make the work (3 players by 3 players)
function {ns}:stats/async/work_loop_player_stats
function {ns}:stats/async/work_loop_player_stats
function {ns}:stats/async/work_loop_player_stats

# Loop through the rest of the values
execute if data storage {ns}:temp played[0] run schedule function {ns}:stats/async/loop_player_stats 1t
execute unless data storage {ns}:temp played[0] run schedule function {ns}:stats/async/register_new_player_stats 1t replace
""")

	# /async/register_new_player_stats
	write_function(f"{path}/async/register_new_player_stats", f"""
## Storage Format: all.player = {{total_played:[{{name:"Stoupy51",value:0}}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}}

function {ns}:stats/_sort_player_stats_finalize

kill @e[tag={ns}.stat_display]
""")

	# /async/sort_player_stats
	write_function(f"{path}/async/sort_player_stats", f"""
function {ns}:stats/_sort_player_stats_setup

# Sort stats asynchronously
execute if data storage {ns}:temp played[0] run schedule function {ns}:stats/async/loop_player_stats 1t replace
""")

	# /async/work_loop_player_stats
	write_function(f"{path}/async/work_loop_player_stats", f"""
# Stop if no players
execute unless data storage {ns}:temp played[0] run return fail

function {ns}:stats/_player_stats_loop_body
""")

	write_display()

	# /get_max_from_player_arrays
	write_function(f"{path}/get_max_from_player_arrays", f"""
# Compare for the played array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_played[0].value
execute if score #temp {ns}.data > #max_value_played {ns}.data run scoreboard players operation #max_index_played {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_played {ns}.data run scoreboard players operation #max_value_played {ns}.data = #temp {ns}.data

# Compare for the wins array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_wins[0].value
execute if score #temp {ns}.data > #max_value_wins {ns}.data run scoreboard players operation #max_index_wins {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_wins {ns}.data run scoreboard players operation #max_value_wins {ns}.data = #temp {ns}.data

# Compare for the kills array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_kills[0].value
execute if score #temp {ns}.data > #max_value_kills {ns}.data run scoreboard players operation #max_index_kills {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_kills {ns}.data run scoreboard players operation #max_value_kills {ns}.data = #temp {ns}.data

# Compare for the deaths array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_deaths[0].value
execute if score #temp {ns}.data > #max_value_deaths {ns}.data run scoreboard players operation #max_index_deaths {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_deaths {ns}.data run scoreboard players operation #max_value_deaths {ns}.data = #temp {ns}.data

# Compare for the money array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_money[0].value
execute if score #temp {ns}.data > #max_value_money {ns}.data run scoreboard players operation #max_index_money {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_money {ns}.data run scoreboard players operation #max_value_money {ns}.data = #temp {ns}.data

# Compare for the played_win_ratio array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_played_win_ratio[0].value 1000
execute if score #temp {ns}.data > #max_value_played_win_ratio {ns}.data run scoreboard players operation #max_index_played_win_ratio {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_played_win_ratio {ns}.data run scoreboard players operation #max_value_played_win_ratio {ns}.data = #temp {ns}.data

# Compare for the advancement_count array
execute store result score #temp {ns}.data run data get storage {ns}:temp copy_advancement_count[0].value
execute if score #temp {ns}.data > #max_value_advancement_count {ns}.data run scoreboard players operation #max_index_advancement_count {ns}.data = #current_index {ns}.data
execute if score #temp {ns}.data > #max_value_advancement_count {ns}.data run scoreboard players operation #max_value_advancement_count {ns}.data = #temp {ns}.data

# Go next (loop)
scoreboard players add #current_index {ns}.data 1
data remove storage {ns}:temp copy_played[0]
data remove storage {ns}:temp copy_wins[0]
data remove storage {ns}:temp copy_kills[0]
data remove storage {ns}:temp copy_deaths[0]
data remove storage {ns}:temp copy_money[0]
data remove storage {ns}:temp copy_played_win_ratio[0]
data remove storage {ns}:temp copy_advancement_count[0]
execute if data storage {ns}:temp copy_played[0] run function {ns}:stats/get_max_from_player_arrays
""")

	# /increment_minigame_played
	write_function(f"{path}/increment_minigame_played", f"""
scoreboard players set #total_games {ns}.data 0
$execute store result score #total_games {ns}.data run data get storage {ns}:stats all.modes.$(id).total_games
scoreboard players add #total_games {ns}.data 1
$execute store result storage {ns}:stats all.modes.$(id).total_games int 1 run scoreboard players get #total_games {ns}.data
""")

	# /loop_player_stats
	write_function(f"{path}/loop_player_stats", f"""
function {ns}:stats/_player_stats_loop_body

# Loop through the rest of the values
execute if data storage {ns}:temp played[0] run function {ns}:stats/loop_player_stats
""")

	# /macro_add_to_new_player_arrays
	write_function(f"{path}/macro_add_to_new_player_arrays", f"""
$data modify storage {ns}:temp new_played append from storage {ns}:temp played[$(played)]
$data modify storage {ns}:temp new_wins append from storage {ns}:temp wins[$(wins)]
$data modify storage {ns}:temp new_kills append from storage {ns}:temp kills[$(kills)]
$data modify storage {ns}:temp new_deaths append from storage {ns}:temp deaths[$(deaths)]
$data modify storage {ns}:temp new_money append from storage {ns}:temp money[$(money)]
$data modify storage {ns}:temp new_played_win_ratio append from storage {ns}:temp played_win_ratio[$(played_win_ratio)]
$data modify storage {ns}:temp new_advancement_count append from storage {ns}:temp advancement_count[$(advancement_count)]
$data remove storage {ns}:temp played[$(played)]
$data remove storage {ns}:temp wins[$(wins)]
$data remove storage {ns}:temp kills[$(kills)]
$data remove storage {ns}:temp deaths[$(deaths)]
$data remove storage {ns}:temp money[$(money)]
$data remove storage {ns}:temp played_win_ratio[$(played_win_ratio)]
$data remove storage {ns}:temp advancement_count[$(advancement_count)]
""")

	write_sort_minigames_stats()

	# /sort_player_stats
	write_function(f"{path}/sort_player_stats", f"""
function {ns}:stats/_sort_player_stats_setup

# Sort stats and copy to new storage
execute if data storage {ns}:temp played[0] run function {ns}:stats/loop_player_stats
function {ns}:stats/_sort_player_stats_finalize
""")

	# /util_update_player
	write_function(f"{path}/util_update_player", f"""
function {ns}:player/update_stats_storage/main
function {ns}:stats/async/sort_player_stats
""")

	# /create_stats_stuff
	write_function(f"{ns}:stats/create_stats_stuff", f"""
# Create scoreboard objectives
$scoreboard objectives add {ns}.stats.played.$(id) dummy
$scoreboard objectives add {ns}.stats.wins.$(id) dummy

# Create storages if not defined
$execute unless data storage {ns}:stats all.modes.$(id) run data modify storage {ns}:stats all.modes.$(id) set value {{total_games:0,played:[],wins:[],played_win_ratio:[]}}
$execute unless data storage {ns}:ratings all[{{id:"$(id)"}}] run data modify storage {ns}:ratings all append value {{id:"$(id)",name_fr:"",points:0,int:0,digits:0,players:[]}}
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].name_fr set value "$(name_fr)"
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].name_en set value "$(name_en)"
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].index set value $(index)
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].index_hundred set value $(index)00
""")

