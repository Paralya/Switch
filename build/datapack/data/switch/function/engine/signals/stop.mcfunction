
#> switch:engine/signals/stop
#
# @within	switch:engine/stop
#

# Log message
function switch:engine/log_message/game_stopped with storage switch:main

# Launch stop signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_stop with storage switch:main input

