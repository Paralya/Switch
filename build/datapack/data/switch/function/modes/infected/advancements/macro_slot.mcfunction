
#> switch:modes/infected/advancements/macro_slot
#
# @executed	as the player & at current position
#
# @within	switch:modes/infected/advancements/inventory_changed_confirm with storage switch:temp input
#
# @args		Slot (byte)
#			with (string)
#			count (int)
#

$item replace entity @s container.$(Slot) with $(with) $(count)

