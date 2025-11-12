
#> switch:engine/signals/macro_tick
#
# @within	switch:engine/signals/tick with storage switch:main input
#
# @args		id (string)
#

$execute in switch:game run function switch:modes/$(id)/calls/tick

