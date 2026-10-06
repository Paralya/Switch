
#> switch:modes/pillars_of_fortune/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"pillars_of_fortune"} run function switch:modes/pillars_of_fortune/start

