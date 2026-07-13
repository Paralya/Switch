
#> switch:modes/traitors_game/give_items/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/traitors_game/give_items with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#			s6 (unknown)
#			s7 (unknown)
#			s8 (unknown)
#

$execute if score #sword switch.data matches 0 run item replace entity @s $(s0) with iron_sword[enchantments={sharpness:2}]
$execute if score #sword switch.data matches 1 run item replace entity @s $(s0) with diamond_sword[enchantments={sharpness:1}]
$item replace entity @s $(s1) with bow[enchantments={power:1}]
$item replace entity @s $(s2) with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
$item replace entity @s $(s3) with apple 16
$item replace entity @s $(s4) with golden_apple 6
$item replace entity @s $(s5) with arrow 28
$item replace entity @s $(s6) with water_bucket
$loot replace entity @s $(s7) loot switch:traitors_game/all_starter
$item replace entity @s $(s8) with oak_planks 100

