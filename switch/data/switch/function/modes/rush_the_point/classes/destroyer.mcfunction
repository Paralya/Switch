
clear @s
effect clear @s
attribute @s generic.attack_speed base set 2048

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={show_in_tooltip:false},dyed_color=3827848,enchantments={"protection":2}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={show_in_tooltip:false},dyed_color=16731469,enchantments={"protection":2}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={show_in_tooltip:false},item_name='{"text":"Fireball Stick","color":"gold","italic":false}',custom_model_data=0,custom_data={switch:{fireball_stick:true}}]
item replace entity @s hotbar.1 with iron_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={show_in_tooltip:false},enchantments={"efficiency":5},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

