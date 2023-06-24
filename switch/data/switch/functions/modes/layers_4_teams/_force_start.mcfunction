
# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "layers_4_teams"

# Start the game with the right state
scoreboard players set #state switch.data 3
function #switch:signals/start

