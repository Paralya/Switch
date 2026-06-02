
#> switch:stats/loop_player_stats
#
# @within	switch:stats/loop_player_stats
#			switch:stats/sort_player_stats
#

function switch:stats/_player_stats_loop_body

# Loop through the rest of the values
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats

