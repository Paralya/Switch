
#> switch:player/username_change/update_stats_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/username_change/update_everything with storage switch:temp copy[0]
#			switch:player/username_change/update_stats_loop with storage switch:temp copy[0]
#

# Update username
$data remove storage switch:stats all.modes.$(id).played[{name:"$(username)"}]
$data remove storage switch:stats all.modes.$(id).wins[{name:"$(username)"}]
$execute if data storage switch:stats all.modes.$(id).played[{name:"$(old_username)"}] run data modify storage switch:stats all.modes.$(id).played[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:stats all.modes.$(id).wins[{name:"$(old_username)"}] run data modify storage switch:stats all.modes.$(id).wins[{name:"$(old_username)"}].name set value "$(username)"
$scoreboard players operation $(username) switch.stats.played.$(id) = $(old_username) switch.stats.played.$(id)
$scoreboard players operation $(username) switch.stats.wins.$(id) = $(old_username) switch.stats.wins.$(id)

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_stats_loop with storage switch:temp copy[0]

