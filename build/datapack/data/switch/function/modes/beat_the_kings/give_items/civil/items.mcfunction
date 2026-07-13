
#> switch:modes/beat_the_kings/give_items/civil/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items/civil with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#

$item replace entity @s[team=switch.temp.civil] $(s0) with oak_planks 64
$item replace entity @s[team=switch.temp.civil] $(s1) with iron_sword[enchantments={sharpness:5}]
$item replace entity @s[team=switch.temp.civil] $(s2) with bow
$item replace entity @s[team=switch.temp.civil] $(s3) with water_bucket
$item replace entity @s[team=switch.temp.civil] $(s4) with golden_apple 5

