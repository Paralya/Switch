
#> switch:modes/pitchout/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"pitchout"} run function switch:modes/pitchout/tick

