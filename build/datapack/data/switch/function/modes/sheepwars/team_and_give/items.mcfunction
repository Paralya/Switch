
#> switch:modes/sheepwars/team_and_give/items
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#

$item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]}]
$item replace entity @s $(s1) with bow[unbreakable={},enchantments={infinity:1},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]}]
$execute if score @s switch.sheepwars.chosen_kit matches 2 run item replace entity @s $(s1) with bow[unbreakable={},enchantments={infinity:1},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},item_model="switch:stardust_bow"]
$execute if score @s switch.sheepwars.chosen_kit matches 3 unless score @s switch.sheepwars.kit_sword matches 1.. run item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.42,operation:"add_value"}]]
$execute if score @s switch.sheepwars.chosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 1 run item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.44,operation:"add_value"}]]
$execute if score @s switch.sheepwars.chosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 2 run item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.46,operation:"add_value"}]]
$execute if score @s switch.sheepwars.chosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 3 run item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.48,operation:"add_value"}]]
$execute if score @s switch.sheepwars.chosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 4 run item replace entity @s $(s0) with stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:0.50,operation:"add_value"}]]
$execute if score @s switch.sheepwars.chosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s $(s2) with bricks[can_break={blocks:"#realistic_explosion:all"}] 5
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s $(s2) with bricks[can_break={blocks:"#realistic_explosion:all"}] 6
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s $(s2) with bricks[can_break={blocks:"#realistic_explosion:all"}] 7
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s $(s2) with bricks[can_break={blocks:"#realistic_explosion:all"}] 9
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s $(s2) with bricks[can_break={blocks:"#realistic_explosion:all"}] 10
$execute if score @s switch.sheepwars.chosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s $(s3) with tnt[can_break={blocks:"#realistic_explosion:all"}] 2
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s $(s3) with tnt[can_break={blocks:"#realistic_explosion:all"}] 2
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s $(s3) with tnt[can_break={blocks:"#realistic_explosion:all"}] 3
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s $(s3) with tnt[can_break={blocks:"#realistic_explosion:all"}] 3
$execute if score @s switch.sheepwars.chosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s $(s3) with tnt[can_break={blocks:"#realistic_explosion:all"}] 4

