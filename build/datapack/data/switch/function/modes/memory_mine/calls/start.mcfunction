
#> switch:modes/memory_mine/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"memory_mine"} run function switch:modes/memory_mine/start

