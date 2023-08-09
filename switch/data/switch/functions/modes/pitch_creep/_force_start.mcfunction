
# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "pitch_creep"
execute store result score #game_1 switch.data run data get storage switch:main minigames[{id:"pitch_creep"}].index

# Start the game with the right state
scoreboard players set #state switch.data 3
function #switch:signals/start

