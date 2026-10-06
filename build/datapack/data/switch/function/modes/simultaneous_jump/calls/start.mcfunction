
#> switch:modes/simultaneous_jump/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"simultaneous_jump"} run function switch:modes/simultaneous_jump/start

