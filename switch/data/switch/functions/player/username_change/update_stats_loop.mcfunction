
# Update username
$data modify storage switch:stats all.modes.$(id).played[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.modes.$(id).wins[{name:"$(old_username)"}].name set value "$(username)"
$scoreboard players operation @s switch.stats.played.$(id) = $(old_username) switch.stats.played.$(id)
$scoreboard players operation @s switch.stats.wins.$(id) = $(old_username) switch.stats.wins.$(id)

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_stats_loop with storage switch:temp copy[0]

