
#> switch:modes/rush_the_point/classes/guerrier
#
# @within	switch:modes/rush_the_point/classes/
#

clear @s
effect clear @s
attribute @s attack_speed base set 2048
attribute @s jump_strength base reset

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={show_in_tooltip:false},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={show_in_tooltip:false},dyed_color=13369344,enchantments={"protection":4}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with diamond_pickaxe[unbreakable={show_in_tooltip:false},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

