
#> switch:engine/signals/macro_start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/start with storage switch:main input
#
# @args		id (string)
#

$execute in switch:game run function switch:modes/$(id)/calls/start

