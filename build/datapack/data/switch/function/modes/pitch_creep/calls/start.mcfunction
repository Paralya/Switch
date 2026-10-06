
#> switch:modes/pitch_creep/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"pitch_creep"} run function switch:modes/pitch_creep/start

