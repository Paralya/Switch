
#> switch:player/detached_action_bar
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby_second
#

# Get the number of players in-game and stop if no players are found
execute store result score #players_in_game switch.data if entity @a[tag=!detached]
execute if score #players_in_game switch.data matches 0 run return fail

# Title action bar
function switch:translations/player_detached_action_bar

