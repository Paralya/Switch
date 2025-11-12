
#> switch:modes/infected/give_arrow/have_one_slot_arrow
#
# @executed	as @a[team=switch.temp.human]
#
# @within	switch:modes/infected/give_arrow/main with storage switch:temp input
#
# @args		Slot (byte)
#			count (int)
#

$item replace entity @s container.$(Slot) with arrow $(count)

