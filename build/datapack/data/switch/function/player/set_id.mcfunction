
#> switch:player/set_id
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick
#

scoreboard players add #next_id switch.id 1
scoreboard players operation @s switch.id = #next_id switch.id

# Update player stats
function switch:stats/util_update_player

# Launch tutorial
function switch:player/tutorial/start

