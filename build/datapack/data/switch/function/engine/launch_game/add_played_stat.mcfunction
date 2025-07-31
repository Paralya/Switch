
#> switch:engine/launch_game/add_played_stat
#
# @executed	in switch:game
#
# @within	switch:engine/launch_game/main with storage switch:main
#

# If test mode is enabled, stop right now
execute if score #test_mode switch.data matches 1.. run return 1

# Increment the played stat for the current game for all players
$execute if data storage switch:main {current_game:"$(current_game)"} run scoreboard players add @a[tag=!detached] switch.stats.played.$(current_game) 1

# Increment the played stat for all players
scoreboard players add @a[tag=!detached] switch.stats.played 1

# Grant the advancement if the player has played 100 times
advancement grant @a[tag=!detached,scores={switch.stats.played=100..}] only switch:visible/2

# Reset the current game time_since_last_play
$data modify storage switch:main history.time_since_last_play.$(current_game) set value 0

# Increment every minigame their time_since_last_play value
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:engine/launch_game/increment_time_since_last_play with storage switch:temp copy[0]

