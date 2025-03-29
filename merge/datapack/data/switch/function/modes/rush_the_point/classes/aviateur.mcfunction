
clear @s
effect clear @s
attribute @s attack_speed base set 2048
attribute @s jump_strength base reset

item replace entity @s armor.chest with elytra[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]}]

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with diamond_sword[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with diamond_pickaxe[unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

scoreboard players set @s switch.temp.elytra_cooldown 120

