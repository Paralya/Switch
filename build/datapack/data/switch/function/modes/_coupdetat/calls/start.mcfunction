
#> switch:modes/_coupdetat/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"_coupdetat"} run function switch:modes/_coupdetat/start

