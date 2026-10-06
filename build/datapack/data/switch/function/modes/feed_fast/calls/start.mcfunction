
#> switch:modes/feed_fast/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"feed_fast"} run function switch:modes/feed_fast/start

