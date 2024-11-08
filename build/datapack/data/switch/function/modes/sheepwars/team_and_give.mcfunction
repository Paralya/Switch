
#> switch:modes/sheepwars/team_and_give
#
# @within	switch:modes/sheepwars/start
#

# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_dirigeables/tp_red_player
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_dirigeables/tp_blue_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.red] run function switch:maps/survival/survival_boat/tp_red_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/survival_boat/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_bonbons/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_bonbons/tp_red_player
execute if data storage switch:main {map:"sheepwars_plateforme"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_plateforme/tp_blue_player
execute if data storage switch:main {map:"sheepwars_plateforme"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_plateforme/tp_red_player
execute if data storage switch:main {map:"sheepwars_ilots"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_ilots/tp_blue_player
execute if data storage switch:main {map:"sheepwars_ilots"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_ilots/tp_red_player
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_colored_sheeps/tp_blue_player
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_colored_sheeps/tp_red_player

# Starter kit
clear @s
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.feet with leather_boots[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=255]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=255]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.feet with leather_boots[unbreakable={},dyed_color=255]
item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b}]
item replace entity @s hotbar.1 with bow[unbreakable={},enchantments={infinity:1},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b}]
item replace entity @s inventory.0 with arrow
attribute @s armor base set 3.0

## Shop things
# Kit More Health
execute if score @s switch.sheepwars.choosen_kit matches 1 run item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:3,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 1 unless score @s switch.sheepwars.kit_health matches 1.. run attribute @s max_health base set 21
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 1 run attribute @s max_health base set 22
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 2 run attribute @s max_health base set 23
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 3 run attribute @s max_health base set 24
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 4 run attribute @s max_health base set 25
# Kit Better Bow
execute if score @s switch.sheepwars.choosen_kit matches 2 run item replace entity @s hotbar.1 with bow[unbreakable={},enchantments={infinity:1},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b},custom_model_data=2013149]
# Kit Better Sword
execute if score @s switch.sheepwars.choosen_kit matches 3 unless score @s switch.sheepwars.kit_sword matches 1.. run item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.42,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 1 run item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.44,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 2 run item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.46,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 3 run item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.48,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 4 run item replace entity @s hotbar.0 with stone_sword[unbreakable={},can_break={predicates:[{blocks:"#realistic_explosion:all"}],show_in_tooltip:0b}]
# Kit Builder
execute if score @s switch.sheepwars.choosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s hotbar.2 with bricks[can_break={blocks:"#realistic_explosion:all"}] 5
execute if score @s switch.sheepwars.choosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s hotbar.3 with tnt[can_break={blocks:"#realistic_explosion:all"}] 2
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s hotbar.2 with bricks[can_break={blocks:"#realistic_explosion:all"}] 6
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s hotbar.3 with tnt[can_break={blocks:"#realistic_explosion:all"}] 2
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s hotbar.2 with bricks[can_break={blocks:"#realistic_explosion:all"}] 7
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s hotbar.3 with tnt[can_break={blocks:"#realistic_explosion:all"}] 3
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s hotbar.2 with bricks[can_break={blocks:"#realistic_explosion:all"}] 9
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s hotbar.3 with tnt[can_break={blocks:"#realistic_explosion:all"}] 3
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s hotbar.2 with bricks[can_break={blocks:"#realistic_explosion:all"}] 10
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s hotbar.3 with tnt[can_break={blocks:"#realistic_explosion:all"}] 4
# Kit Mobility
execute if score @s switch.sheepwars.choosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.01,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.01,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.015,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.015,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.02,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.02,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.025,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.025,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:3},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.03,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:3},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.03,operation:"add_value"}]]
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1..2 run effect give @s jump_boost infinite 0 true
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3.. run effect give @s jump_boost infinite 1 true

## Not an Item based kit
# Kit Better Bow (choosen_kit = 2)
# Kit More Sheep (choosen_kit = 4)
# Kit Armored Sheep (choosen_kit = 7)

# Set attack speed
attribute @s attack_speed base set 1024

