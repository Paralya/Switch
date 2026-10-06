
#> switch:modes/spectres_game/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"spectres_game"} run function switch:modes/spectres_game/tick

