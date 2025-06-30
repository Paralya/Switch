
#> switch:engine/signals/start
#
# @within	switch:engine/force_start_macro
#			switch:engine/launch_game/main
#

# Log message
data modify storage switch:main MessageToLog set value [{"text": "Lancement d'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":false},{"text":"` !"}]
function switch:engine/log_message/apply

# Launch start signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_start with storage switch:main input

# Start map intro
function switch:maps/intro_spread

# Increment total games played
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/increment_minigame_played with storage switch:main input

