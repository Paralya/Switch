
# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "tnt_run"
execute store result score #game_1 switch.data run data get storage switch:main minigames[{id:"tnt_run"}].index

# Start the game with the right state
scoreboard players set #state switch.data 3
function #switch:signals/start

