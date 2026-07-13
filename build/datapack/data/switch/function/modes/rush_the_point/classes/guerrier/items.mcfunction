
#> switch:modes/rush_the_point/classes/guerrier/items
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/guerrier with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#			s6 (unknown)
#

$item replace entity @s $(s0) with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
$item replace entity @s $(s1) with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
$item replace entity @s $(s2) with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
$item replace entity @s $(s3) with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
$item replace entity @s $(s4) with potion[potion_contents="minecraft:strong_healing"]
$item replace entity @s $(s5) with potion[potion_contents="minecraft:strong_healing"]
$item replace entity @s $(s6) with bread 42

