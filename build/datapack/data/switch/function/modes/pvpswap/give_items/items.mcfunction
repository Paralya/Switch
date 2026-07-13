
#> switch:modes/pvpswap/give_items/items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/pvpswap/give_items with storage switch:layout out
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

$item replace entity @s $(s0) with wooden_sword[enchantments={sharpness:1,knockback:1}]
$item replace entity @s $(s1) with bow
$item replace entity @s $(s2) with water_bucket
$item replace entity @s $(s3) with iron_pickaxe[enchantments={efficiency:1}]
$item replace entity @s $(s4) with iron_axe[enchantments={efficiency:1},attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:2,operation:"add_value"}]]
$item replace entity @s $(s5) with arrow 8
$item replace entity @s $(s6) with oak_planks 64
$item replace entity @s $(s7) with golden_apple 12

