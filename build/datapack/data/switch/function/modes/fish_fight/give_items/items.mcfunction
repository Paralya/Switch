
#> switch:modes/fish_fight/give_items/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/fish_fight/give_items with storage switch:layout out
#
# @args		s0 (unknown)
#

$execute if score #pearls_count switch.data matches 0 run item replace entity @s $(s0) with ender_pearl 6

