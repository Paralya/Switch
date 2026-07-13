
#> switch:modes/beat_the_kings/give_items/king/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items/king with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#

$item replace entity @s[team=switch.temp.king] $(s0) with water_bucket
$item replace entity @s[team=switch.temp.king] $(s1) with golden_sword[enchantments={unbreaking:3,sharpness:3}]
$item replace entity @s[team=switch.temp.king] $(s2) with bow[enchantments={flame:1,punch:1}]
$item replace entity @s[team=switch.temp.king] $(s3) with oak_planks 64

