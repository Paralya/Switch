
#> switch:modes/replicate_the_build/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"replicate_the_build"} run function switch:modes/replicate_the_build/start

