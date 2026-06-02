
#> switch:stats/async/work_loop_player_stats
#
# @within	switch:stats/async/loop_player_stats
#

# Stop if no players
execute unless data storage switch:temp played[0] run return fail

function switch:stats/_player_stats_loop_body

