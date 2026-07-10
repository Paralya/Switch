
#> switch:engine/launch_game/add_played_stat
#
# @within	switch:engine/launch_game/launch with storage switch:main
#
# @args		current_game (unknown)
#			current_group (unknown)
#

# If test mode is enabled, stop right now
execute if score #test_mode switch.data matches 1.. run return 1

# Increment the played stat for the current game for all players
$execute if data storage switch:main {current_game:"$(current_game)"} run scoreboard players add @a[tag=!detached] switch.stats.played.$(current_game) 1

# Increment the played stat for all players
scoreboard players add @a[tag=!detached] switch.stats.played 1

# Grant the advancement if the player has played 100 times
advancement grant @a[tag=!detached,scores={switch.stats.played=100..}] only switch:visible/2

# Reset the current group time_since_last_play (voting weights are per group)
$data modify storage switch:main history.time_since_last_play.$(current_group) set value 0

# Increment every group their time_since_last_play value
data modify storage switch:temp copy set from storage switch:main groups
execute if data storage switch:temp copy[0] run function switch:engine/launch_game/increment_time_since_last_play with storage switch:temp copy[0]

