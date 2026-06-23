
#> switch:modes/beat_the_kings/death/inventory_filter
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/beat_the_kings/death/for_global
#

function switch:modes/_common/death/keep_combat_items
data modify entity @s data.Inventory set from storage switch:main Inventory

