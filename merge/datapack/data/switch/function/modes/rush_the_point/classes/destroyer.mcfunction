
clear @s
effect clear @s
attribute @s attack_speed base set 2048
attribute @s jump_strength base reset

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Fireball Wand","color":"gold","italic":false},item_model="switch:fireball_wand",custom_data={switch:{fireball_wand:true}}]
item replace entity @s hotbar.1 with iron_sword[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

