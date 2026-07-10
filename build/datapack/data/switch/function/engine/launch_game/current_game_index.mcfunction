
#> switch:engine/launch_game/current_game_index
#
# @within	switch:engine/launch_game/launch with storage switch:main
#
# @args		current_game (unknown)
#

$execute store result score #current_game_index switch.data run data get storage switch:main minigames[{id:"$(current_game)"}].index

