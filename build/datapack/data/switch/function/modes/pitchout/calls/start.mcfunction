
#> switch:modes/pitchout/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"pitchout"} run function switch:modes/pitchout/start

