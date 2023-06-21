
# Stop everything
function switch:engine/stop

# Set the current game
data modify storage switch:main current_game set value "a_template"

# Start the game with the right state
scoreboard players set #state switch.data 3
function #switch:signals/start

