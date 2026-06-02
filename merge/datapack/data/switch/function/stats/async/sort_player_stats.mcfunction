
function switch:stats/_sort_player_stats_setup

# Sort stats asynchronously
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t replace

