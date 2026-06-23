
#> switch:player/username_change/update_ratings_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/username_change/update_everything with storage switch:temp copy[0]
#			switch:player/username_change/update_ratings_loop with storage switch:temp copy[0]
#
# @args		id (unknown)
#			username (unknown)
#			old_username (unknown)
#

# Update username
$data remove storage switch:ratings all[{id:"$(id)"}].players[{name:"$(username)"}]
$execute if data storage switch:ratings all[{id:"$(id)"}].players[{name:"$(old_username)"}] run data modify storage switch:ratings all[{id:"$(id)"}].players[{name:"$(old_username)"}].name set value "$(username)"

# Continue loop
function switch:player/username_change/continue_loop
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_ratings_loop with storage switch:temp copy[0]

