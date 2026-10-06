
#> switch:modes/simultaneous_jump/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"simultaneous_jump"} run function switch:modes/simultaneous_jump/tick

