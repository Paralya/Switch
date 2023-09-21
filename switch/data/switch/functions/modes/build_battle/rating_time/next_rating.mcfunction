
# Remove tags and reset scores
scoreboard players reset @a[scores={switch.temp.to_rate=2}] switch.temp.to_rate
tag @e[tag=switch.marker_temp] remove switch.marker_temp

# Find next player
function switch:modes/build_battle/rating_time/find_player

