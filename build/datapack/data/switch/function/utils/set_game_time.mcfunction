
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
execute store result score #sky_variant switch.data run random value 0..2
execute if score #sky_variant switch.data matches 1.. run time of switch:game add 1
execute if score #sky_variant switch.data matches 2 run time of switch:game add 1

