
#> switch:modes/sheepwars/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"sheepwars"} run function switch:modes/sheepwars/start

