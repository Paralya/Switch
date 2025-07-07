
# Make the work (3 players by 3 players)
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats

# Loop through the rest of the values
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t
execute unless data storage switch:temp played[0] run schedule function switch:stats/async/register_new_player_stats 1t replace

