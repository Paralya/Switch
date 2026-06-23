
#> switch:modes/rush_the_point/classes/_kit_swordsman
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/aviateur
#			switch:modes/rush_the_point/classes/guerrier
#

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
function switch:modes/rush_the_point/classes/_healing_food

