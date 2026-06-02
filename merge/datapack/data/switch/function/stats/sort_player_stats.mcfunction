
function switch:stats/_sort_player_stats_setup

# Sort stats and copy to new storage
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats
function switch:stats/_sort_player_stats_finalize

