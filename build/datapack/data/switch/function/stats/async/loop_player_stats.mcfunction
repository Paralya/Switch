
#> switch:stats/async/loop_player_stats
#
# @within	switch:stats/async/loop_player_stats 1t [ scheduled ]
#			switch:stats/async/sort_player_stats 1t replace [ scheduled ]
#

# Make the work (3 players by 3 players)
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats

# Loop until the top 15 is sorted
execute if data storage switch:temp played[0] unless data storage switch:temp new_played[14] run return run schedule function switch:stats/async/loop_player_stats 1t

# Commit in this same tick: a sort started before a delayed commit would empty every leaderboard
function switch:stats/async/register_new_player_stats

