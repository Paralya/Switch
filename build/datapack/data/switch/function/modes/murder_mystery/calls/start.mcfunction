
#> switch:modes/murder_mystery/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"murder_mystery"} run function switch:modes/murder_mystery/start

