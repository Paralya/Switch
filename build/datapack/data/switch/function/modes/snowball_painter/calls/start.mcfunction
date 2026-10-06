
#> switch:modes/snowball_painter/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"snowball_painter"} run function switch:modes/snowball_painter/start

