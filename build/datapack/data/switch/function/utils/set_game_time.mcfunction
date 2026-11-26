
#> switch:utils/set_game_time
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/sheepwars/start with storage switch:temp game_time
#			switch:utils/set_dynamic_time with storage switch:temp game_time
#
# @args		ticks (unknown)
#

$time of switch:game set $(ticks)

