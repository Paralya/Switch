
#> switch:modes/build_battle/rating_time/next_rating
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/rating_time/time_up
#

# Remove tags and reset scores to make sure we don't have any leftovers
scoreboard players reset @a[scores={switch.temp.to_rate=2}] switch.temp.to_rate
tag @e[tag=switch.marker_temp] remove switch.marker_temp

# Find next player
function switch:modes/build_battle/rating_time/find_player

