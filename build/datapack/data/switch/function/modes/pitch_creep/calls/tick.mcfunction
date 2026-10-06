
#> switch:modes/pitch_creep/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"pitch_creep"} run function switch:modes/pitch_creep/tick

