
# Stop everything
function switch:engine/disable

# /function switch:modes/twittos_de_merde/_force_start

# Set the current game
data modify storage switch:main current_game set value "twittos_de_merde"
execute store result score #game_1 switch.data run data get storage switch:main minigames[{id:"twittos_de_merde"}].index

# Start the game with the right state
scoreboard players set #state switch.data 1
function #switch:signals/start

