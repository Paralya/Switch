
#> switch:modes/laser_game/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"laser_game"} run function switch:modes/laser_game/start

