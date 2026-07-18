
#> switch:modes/protect_the_king/give_items/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/protect_the_king/give_items with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#			s6 (unknown)
#			s7 (unknown)
#

$loot replace entity @s $(s0) loot switch:i/steel_sword
$item modify entity @s $(s0) {function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":1}}
$item replace entity @s $(s1) with bow
$item replace entity @s $(s2) with stone_axe
$item replace entity @s $(s3) with arrow 28
$item replace entity @s $(s4) with water_bucket
$item replace entity @s $(s5) with golden_apple 6
$item replace entity @s $(s6) with oak_planks 64
$item replace entity @s $(s7) with anvil
$loot replace entity @s[team=!switch.temp.red,team=!switch.temp.blue] $(s0) loot switch:i/obsidian_sword
$item modify entity @s[team=!switch.temp.red,team=!switch.temp.blue] $(s0) {function:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":1}}

