
#> switch:modes/_coupdetat/_force_start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/start [ as @n[tag=switch.coupdetat] & in switch:game ]
#

# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "_coupdetat"
data modify storage switch:main current_game_name set value "Coup d'état"
tag @s remove detached

# Start the game with the right state
function switch:engine/start_state

