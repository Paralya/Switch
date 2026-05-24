
#> switch:engine/signals/macro_inventory_changed
#
# @executed	as the player & at current position
#
# @within	switch:engine/signals/inventory_changed with storage switch:main input
#
# @args		id (string)
#

$execute in switch:game run function switch:modes/$(id)/calls/inventory_changed

