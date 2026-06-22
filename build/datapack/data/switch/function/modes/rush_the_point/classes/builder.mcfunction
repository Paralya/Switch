
#> switch:modes/rush_the_point/classes/builder
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

function switch:modes/rush_the_point/classes/_common

function switch:modes/rush_the_point/classes/_armor

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with iron_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with smooth_sandstone_stairs[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.5 with ravager_spawn_egg[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}]
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

