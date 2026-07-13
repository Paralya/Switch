
#> switch:modes/spleef/give_items/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spleef/give_items with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#

$item replace entity @s $(s0) from block 0 10 0 container.0
$item replace entity @s $(s1) with ender_pearl
$execute if score @s switch.spleef.snow_block matches 0 run item replace entity @s $(s2) with snow_block 4
$execute if score @s switch.spleef.snow_block matches 1 run item replace entity @s $(s2) with snow_block 5
$execute if score @s switch.spleef.snow_block matches 2 run item replace entity @s $(s2) with snow_block 6
$execute if score @s switch.spleef.snow_block matches 3 run item replace entity @s $(s2) with snow_block 7
$execute if score @s switch.spleef.snow_block matches 4 run item replace entity @s $(s2) with snow_block 8
$execute if score @s switch.spleef.snow_block matches 5 run item replace entity @s $(s2) with snow_block 9
$execute if score @s switch.spleef.snow_block matches 6.. run item replace entity @s $(s2) with snow_block 10
$item replace entity @s $(s3) from block 0 10 0 container.1

