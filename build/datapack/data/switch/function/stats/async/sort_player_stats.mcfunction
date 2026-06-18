
#> switch:stats/async/sort_player_stats
#
# @within	switch:stats/_update_every_single_stat
#			switch:stats/util_update_player
#			switch:engine/restart
#			switch:player/joined
#

function switch:stats/_sort_player_stats_setup

# Sort stats asynchronously
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t replace

