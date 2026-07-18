
#> switch:engine/signals/tick
#
# @within	switch:tick
#

# Count real game ticks since the game started (gates the per-second signal, see signals/second)
scoreboard players add #game_ticks switch.data 1

# Launch tick signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_tick with storage switch:main input

