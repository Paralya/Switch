
#> switch:engine/signals/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/start_state
#			switch:engine/launch_game/launch [ in switch:game ]
#

# Log message
data modify storage switch:main MessageToLog set value [{"text": "Lancement d'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":true},{"text":"` !"}]
function switch:engine/log_message/apply

# Clear voting message
schedule clear switch:engine/voting_time/schedule_message

# Repair dependencies libraries
function #switch:dependencies

# Launch start signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_start with storage switch:main input

# Start map intro (explicitly in the game dimension: start_state can be reached from a server
# context — force start, coup d'état — and the cinematic drops players in the execution dimension)
execute in switch:game run function switch:maps/intro_spread

# Increment total games played
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/increment_minigame_played with storage switch:main input

