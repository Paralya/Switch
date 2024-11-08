
#> switch:player/trigger/stats/display_loop
#
# @within	switch:player/trigger/stats/display_loop
#			switch:player/trigger/stats/main
#

# Display
function switch:translations/player_trigger_stats_display_loop with storage switch:temp sorted_stats[0]

# Continue loop
data remove storage switch:temp sorted_stats[0]
execute if data storage switch:temp sorted_stats[0] run function switch:player/trigger/stats/display_loop

